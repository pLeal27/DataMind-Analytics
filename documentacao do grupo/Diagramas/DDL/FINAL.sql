USE DataMindAnalytics;
GO

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
ADD SK_LOCALVOTACAO AS CONCAT(AA_ELEICAO, '-', CD_MUNICIPIO, '-', NR_ZONA, '-', NR_SECAO, '-', NR_LOCAL_VOTACAO) PERSISTED;

ALTER TABLE FATO_VOTOS
ADD SK_LOCALVOTACAO AS CONCAT(ANO_ELEICAO, '-', CD_MUNICIPIO, '-', NR_ZONA, '-', NR_SECAO, '-', NR_LOCAL_VOTACAO) PERSISTED;
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

ALTER TABLE DIM_LOCALVOTACAO
ADD SK_POSICAOGEOGRAFICA AS CONCAT(CD_MUNICIPIO,'-',AA_ELEICAO, '-', UPPER(LTRIM(RTRIM(DS_ENDERECO_LOCVT_ORIGINAL)))) PERSISTED;

ALTER TABLE DIM_POSICAOGEOGRAFICA
ADD SK_POSICAOGEOGRAFICA AS CONCAT(CD_MUNICIPIO,'-', AA_ELEICAO, '-', UPPER(LTRIM(RTRIM(DS_ENDERECO_LOCVT_ORIGINAL)))) PERSISTED;

ALTER TABLE DIM_QT_CHUVA
ADD SK_DIM_QT_CHUVA AS CONCAT(ANO, '-', UPPER(LTRIM(RTRIM(DS_ENDERECO_LOCVT_ORIGINAL)))) PERSISTED; 

ALTER TABLE DIM_POSICAOGEOGRAFICA
ADD SK_DIM_QT_CHUVA AS CONCAT(AA_ELEICAO, '-', UPPER(LTRIM(RTRIM(DS_ENDERECO_LOCVT_ORIGINAL)))) PERSISTED;

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



