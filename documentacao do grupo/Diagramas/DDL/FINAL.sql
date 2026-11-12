USE DataMindAnalytics;
GO


SELECT * FROM FATO_VOTOS;
-- ============================================================================
-- 1. DIM_MUNICIPIOS (Chave simples já existente: CD_MUNICIPIO)
-- ============================================================================
ALTER TABLE FATO_VOTOS
ADD CONSTRAINT FK_FATO_MUNICIPIOS 
FOREIGN KEY (CD_MUNICIPIO) REFERENCES DIM_MUNICIPIOS (CD_MUNICIPIO);
GO

-- ============================================================================
-- 2. DIM_ANO (Chave simples já existente: ANO <-> ANO_ELEICAO)
-- ============================================================================
ALTER TABLE FATO_VOTOS
ADD CONSTRAINT FK_FATO_ANO 
FOREIGN KEY (ANO_ELEICAO) REFERENCES DIM_ANO (ANO);
GO

-- ============================================================================
-- 3. DIM_LOCALVOTACAO (Chave composta: CD_MUNICIPIO + NR_ZONA + NR_SECAO + NR_LOCAL_VOTACAO)
-- ============================================================================
ALTER TABLE DIM_LOCALVOTACAO
ADD SK_LOCALVOTACAO AS CONCAT(CD_MUNICIPIO, '-', NR_ZONA, '-', NR_SECAO, '-', NR_LOCAL_VOTACAO) PERSISTED;

ALTER TABLE FATO_VOTOS
ADD SK_LOCALVOTACAO AS CONCAT(CD_MUNICIPIO, '-', NR_ZONA, '-', NR_SECAO, '-', NR_LOCAL_VOTACAO) PERSISTED;
GO

-- ============================================================================
-- 4. DIM_IDHM_PROXY (Chave composta: NM_MUNICIPIO + ANO)
-- ============================================================================
ALTER TABLE DIM_IDHM_PROXY
ADD SK_IDHM_PROXY AS CONCAT(UPPER(LTRIM(RTRIM(NM_MUNICIPIO))), '-', ANO) PERSISTED;

ALTER TABLE FATO_VOTOS
ADD SK_IDHM_PROXY AS CONCAT(UPPER(LTRIM(RTRIM(NM_MUNICIPIO))), '-', ANO_ELEICAO) PERSISTED;
GO

-- ============================================================================
-- 5. DIM_CANDIDATOS (Chave composta: SQ_CANDIDATOS + NR_TURNO)
-- ============================================================================
-- Adiciona a coluna ausente na Fato para permitir o relacionamento
ALTER TABLE FATO_VOTOS
ADD SQ_CANDIDATOS BIGINT NULL;
GO


ALTER TABLE DIM_CANDIDATOS
ADD SK_CANDIDATO AS CONCAT(SQ_CANDIDATOS, '-', NR_TURNO) PERSISTED;

ALTER TABLE FATO_VOTOS
ADD SK_CANDIDATO AS CONCAT(SQ_CANDIDATOS, '-', NR_TURNO) PERSISTED;
GO

-- ============================================================================
-- 6. DIM_PARTIDOS (Chave composta: ANO + SIGLA)
-- ============================================================================
-- Adiciona a coluna ausente na Fato para permitir o relacionamento
ALTER TABLE FATO_VOTOS
ADD SIGLA_PARTIDO VARCHAR(20) NULL;
GO

ALTER TABLE DIM_PARTIDOS
ADD SK_PARTIDO AS CONCAT(ANO, '-', UPPER(LTRIM(RTRIM(SIGLA)))) PERSISTED;

ALTER TABLE FATO_VOTOS
ADD SK_PARTIDO AS CONCAT(ANO_ELEICAO, '-', UPPER(LTRIM(RTRIM(SIGLA_PARTIDO)))) PERSISTED;
GO

-- ============================================================================
-- 7. DIM_POSICAOGEOGRAFICA (Chave composta natural: AA_ELEICAO + DS_ENDERECO_LOCVT_ORIGINAL)
-- ============================================================================
-- Adiciona a coluna ausente na Fato (alternativa: ligar via DIM_LOCALVOTACAO)
ALTER TABLE FATO_VOTOS
ADD DS_ENDERECO_LOCVT_ORIGINAL NVARCHAR(255) NULL;
GO

ALTER TABLE DIM_POSICAOGEOGRAFICA
ADD SK_POSICAOGEOGRAFICA AS CONCAT(AA_ELEICAO, '-', UPPER(LTRIM(RTRIM(DS_ENDERECO_LOCVT_ORIGINAL)))) PERSISTED;


-- ============================================================================
-- 8. DIM_DIA (Chave composta: ANO + DIA)
-- ============================================================================
-- Adiciona a coluna ausente na Fato para permitir o relacionamento
ALTER TABLE FATO_VOTOS
ADD DIA INT NULL;
GO

ALTER TABLE DIM_DIA
ADD SK_DIA AS CONCAT(ANO, '-', DIA) PERSISTED;

ALTER TABLE FATO_VOTOS
ADD SK_DIA AS CONCAT(ANO_ELEICAO, '-', DIA) PERSISTED;
GO

-- ============================================================================
-- 9. DIM_QT_CHUVA (Chave composta: ANO + DIA + HORA)
-- ============================================================================
-- Adiciona a coluna HORA na Fato (DIA já foi adicionada no passo 8)
ALTER TABLE FATO_VOTOS
ADD HORA INT NULL;
GO

ALTER TABLE DIM_QT_CHUVA
ADD SK_QT_CHUVA AS CONCAT(ANO, '-', DIA, '-', HORA) PERSISTED;

ALTER TABLE FATO_VOTOS
ADD SK_QT_CHUVA AS CONCAT(ANO_ELEICAO, '-', DIA, '-', HORA) PERSISTED;
GO