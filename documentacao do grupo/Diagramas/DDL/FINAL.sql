USE DataMindAnalytics;
GO


-- 0. Cria a SK na DIM_PARTIDOS
ALTER TABLE DIM_PARTIDOS
ADD SK_PARTIDO AS (CONCAT(ANO, '_', SIGLA)) PERSISTED;
GO

-- 1. Adiciona colunas base e colunas computadas (SKs) na FATO_RESULTADOS
ALTER TABLE FATO_RESULTADOS
ADD 
    NM_MUNICIPIO  VARCHAR(255) NULL,
    SIGLA_PARTIDO VARCHAR(20)  NULL,
    DIA           INT          NULL,
    SK_IDHM_PROXY AS (
        CASE WHEN NM_MUNICIPIO IS NOT NULL 
             THEN CONCAT(NM_MUNICIPIO, '_', ANO_ELEICAO) 
        END
    ) PERSISTED,
    SK_PARTIDO AS (
        CASE WHEN SIGLA_PARTIDO IS NOT NULL 
             THEN CONCAT(ANO_ELEICAO, '_', SIGLA_PARTIDO) 
        END
    ) PERSISTED;
GO

-- 2. Adiciona CD_MUNICIPIO e a SK computada na DIM_QT_CHUVA
ALTER TABLE DIM_QT_CHUVA
ADD 
    CD_MUNICIPIO    INT NULL,
    SK_DIM_QT_CHUVA AS (
        CASE WHEN CD_MUNICIPIO IS NOT NULL 
             THEN CONCAT(CD_MUNICIPIO, '_', ANO, '_', DS_ENDERECO_LOCVT_ORIGINAL) 
        END
    ) PERSISTED;
GO

-- 3. Adiciona DIA na FATO_VOTOS
ALTER TABLE FATO_VOTOS
ADD 
    DIA INT NULL;
GO
-- ============================================================================
-- 1. Preenche NM_MUNICIPIO na FATO_RESULTADOS via JOIN com DIM_MUNICIPIOS
--    (Isso dispara automaticamente o cálculo de SK_IDHM_PROXY)
-- ============================================================================
UPDATE FR
SET FR.NM_MUNICIPIO = M.NM_MUNICIPIO
FROM FATO_RESULTADOS FR
INNER JOIN DIM_MUNICIPIOS M
    ON FR.CD_MUNICIPIO = M.CD_MUNICIPIO
WHERE FR.NM_MUNICIPIO IS NULL;
GO

-- ============================================================================
-- 2. Preenche SIGLA_PARTIDO na FATO_RESULTADOS via DIM_CANDIDATOS + DIM_PARTIDOS
--    (Isso dispara automaticamente o cálculo de SK_PARTIDO)
-- ============================================================================
-- 2A. Votos nominais (cruzamento direto pelo SQ_CANDIDATO e NR_TURNO)
UPDATE FR
SET FR.SIGLA_PARTIDO = P.SIGLA
FROM FATO_RESULTADOS FR
INNER JOIN DIM_CANDIDATOS C
    ON FR.SQ_CANDIDATO = C.SQ_CANDIDATOS
   AND FR.NR_TURNO     = C.NR_TURNO
   AND FR.ANO_ELEICAO  = C.ANO
INNER JOIN DIM_PARTIDOS P
    ON C.ANO = P.ANO
   AND C.NM_PARTIDO COLLATE Latin1_General_CI_AI = P.NOME COLLATE Latin1_General_CI_AI
WHERE FR.SIGLA_PARTIDO IS NULL;
GO

-- 2B. Votos de legenda (quando SQ_CANDIDATO não existe na DIM_CANDIDATOS, usa os 2 primeiros dígitos de NR_VOTAVEL)
WITH MapaNumeroPartido AS (
    SELECT DISTINCT
        C.ANO,
        C.NR_PARTIDO,
        P.SIGLA
    FROM DIM_CANDIDATOS C
    INNER JOIN DIM_PARTIDOS P
        ON C.ANO = P.ANO
       AND C.NM_PARTIDO COLLATE Latin1_General_CI_AI = P.NOME COLLATE Latin1_General_CI_AI
)
UPDATE FR
SET FR.SIGLA_PARTIDO = M.SIGLA
FROM FATO_RESULTADOS FR
INNER JOIN MapaNumeroPartido M
    ON FR.ANO_ELEICAO = M.ANO
   AND TRY_CAST(LEFT(CAST(FR.NR_VOTAVEL AS VARCHAR(10)), 2) AS INT) = M.NR_PARTIDO
WHERE FR.SIGLA_PARTIDO IS NULL
  AND FR.NR_VOTAVEL NOT IN (95, 96, 97); -- Ignora Brancos (95), Nulos (96) e Anulados (97)
GO

-- ============================================================================
-- 3. Preenche CD_MUNICIPIO na DIM_QT_CHUVA via DIM_POSICAOGEOGRAFICA / DIM_LOCALVOTACAO
--    (Isso dispara automaticamente o cálculo de SK_DIM_QT_CHUVA)
-- ============================================================================
UPDATE Q
SET Q.CD_MUNICIPIO = G.CD_MUNICIPIO
FROM DIM_QT_CHUVA Q
INNER JOIN DIM_POSICAOGEOGRAFICA G
    ON Q.ANO = G.AA_ELEICAO
   AND Q.DS_ENDERECO_LOCVT_ORIGINAL COLLATE Latin1_General_CI_AI = G.DS_ENDERECO_LOCVT_ORIGINAL COLLATE Latin1_General_CI_AI
WHERE Q.CD_MUNICIPIO IS NULL;

-- Fallback caso algum endereço esteja na DIM_LOCALVOTACAO e não na DIM_POSICAOGEOGRAFICA
UPDATE Q
SET Q.CD_MUNICIPIO = L.CD_MUNICIPIO
FROM DIM_QT_CHUVA Q
INNER JOIN DIM_LOCALVOTACAO L
    ON CAST(Q.ANO AS VARCHAR(4)) = L.AA_ELEICAO
   AND Q.DS_ENDERECO_LOCVT_ORIGINAL COLLATE Latin1_General_CI_AI = L.DS_ENDERECO_LOCVT_ORIGINAL COLLATE Latin1_General_CI_AI
WHERE Q.CD_MUNICIPIO IS NULL;
GO

-- ============================================================================
-- 4. Preenche DIA na FATO_VOTOS e FATO_RESULTADOS via DIM_DIA
--    (Ordena os dias de cada ano: 1º menor dia = 1º Turno, 2º dia = 2º Turno)
-- ============================================================================
WITH TurnoDia AS (
    SELECT 
        ANO,
        DIA,
        ROW_NUMBER() OVER (PARTITION BY ANO ORDER BY DIA ASC) AS NR_TURNO_CALC
    FROM DIM_DIA
)
UPDATE FV
SET FV.DIA = TD.DIA
FROM FATO_VOTOS FV
INNER JOIN TurnoDia TD
    ON FV.ANO_ELEICAO = TD.ANO
   AND FV.NR_TURNO    = TD.NR_TURNO_CALC
WHERE FV.DIA IS NULL;

WITH TurnoDia AS (
    SELECT 
        ANO,
        DIA,
        ROW_NUMBER() OVER (PARTITION BY ANO ORDER BY DIA ASC) AS NR_TURNO_CALC
    FROM DIM_DIA
)
UPDATE FR
SET FR.DIA = TD.DIA
FROM FATO_RESULTADOS FR
INNER JOIN TurnoDia TD
    ON FR.ANO_ELEICAO = TD.ANO
   AND FR.NR_TURNO    = TD.NR_TURNO_CALC
WHERE FR.DIA IS NULL;
GO

-- ============================================================================
-- 5. Conferência rápida de preenchimento (verifica se restou algum NULL)
-- ============================================================================
SELECT 
    COUNT(*) AS TOTAL_LINHAS_RESULTADOS,
    SUM(CASE WHEN SK_IDHM_PROXY IS NULL OR NM_MUNICIPIO IS NULL THEN 1 ELSE 0 END) AS SEM_MUNICIPIO,
    SUM(CASE WHEN SIGLA_PARTIDO IS NULL AND NR_VOTAVEL NOT IN (95, 96, 97) THEN 1 ELSE 0 END) AS SEM_PARTIDO,
    SUM(CASE WHEN DIA IS NULL THEN 1 ELSE 0 END) AS SEM_DIA
FROM FATO_RESULTADOS;

SELECT * FROM DIM_DIA
SELECT * FROM DIM_ANO
SELECT * FROM DIM_CANDIDATOS
SELECT * FROM DIM_IDHM_PROXY
SELECT * FROM DIM_LOCALVOTACAO
SELECT * FROM DIM_MUNICIPIOS
SELECT * FROM DIM_PARTIDOS
SELECT * FROM DIM_POSICAOGEOGRAFICA
SELECT * FROM DIM_QT_CHUVA
SELECT * FROM FATO_RESULTADOS
SELECT * FROM FATO_VOTOS