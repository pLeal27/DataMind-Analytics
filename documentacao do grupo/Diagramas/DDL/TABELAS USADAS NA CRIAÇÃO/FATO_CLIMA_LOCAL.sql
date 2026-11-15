INSERT INTO FATO_CLIMA_LOCAL (SK_DATA, SK_MUNICIPIO, SK_LOCAL_VOTACAO, PRECIPITACAO_TOTAL, UMIDADE_RELATIVA_AR) 
VALUES
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
USE DataMindAnalyticsNOVA;
GO

INSERT INTO FATO_CLIMA_LOCAL (
    SK_DATA,
    SK_MUNICIPIO,
    SK_LOCAL_VOTACAO,
    PRECIPITACAO_TOTAL,
    UMIDADE_RELATIVA_AR
)
SELECT
    dados.SK_DATA,
    -- O JOIN abaixo troca o CD_MUNICIPIO (ex: 2550) pela SK_MUNICIPIO gerada no banco
    COALESCE(mun.SK_MUNICIPIO, -1) AS SK_MUNICIPIO,
    -- O JOIN abaixo troca o texto da faixa pela SK_CLASSIFICACAO_IDHM gerada no banco
    COALESCE(loc.SK_LOCAL_VOTACAO, -1) AS SK_LOCAL_VOTACAO,
    dados.PRECIPITACAO_TOTAL,
    dados.UMIDADE_RELATIVA_AR
FROM (
    -- Aqui você coloca os seus dados reais (sem precisar saber as SKs!)
    VALUES
        (20220101, 2550, '1 - Polo Urbano',          5.6, 4.9, 4.2, 45782.10, 91.20, 0.9500), -- Manaus
) AS dados (
    SK_DATA,
    CD_MUNICIPIO,
    ANO_ELEICAO, 
    CD_MUNICIPIO, 
    NM_MUNICIPIO, 
    NR_ZONA, 
    NR_LOCAL_VOTACAO, 
    NR_LOCAL_VOTACAO_ORIGINAL
    PRECIPITACAO_TOTAL,
    UMIDADE_RELATIVA_AR
)
LEFT JOIN DIM_CAN


SELECT * FROM DIM_MUNICIPIO
SELECT * FROM DIM_LOCAL_VOTACAO
SELECT * FROM DIM_CALENDARIO
SELECT * FROM stg_InformacoesPrecipitacao

DROP TABLE stg_InformacoesPrecipitacao

SELECT     
    CAL.SK_DATA,
    LOC.CD_MUNICIPIO,
    LOC.ANO_ELEICAO, 
    LOC.CD_MUNICIPIO, 
    LOC.NM_MUNICIPIO, 
    LOC.NR_ZONA, 
    LOC.NR_LOCAL_VOTACAO, 
    LOC.NR_LOCAL_VOTACAO_ORIGINAL,
    Inf.PRECIPITACAO_TOTAL,
    Inf.UMIDADE_RELATIVA_AR
FROM DIM_LOCAL_VOTACAO AS LOC
JOIN stg_InformacoesPrecipitacao AS Inf
ON Inf.DS_ENDERECO_LOCVT_ORIGINAL = LOC.DS_ENDERECO_LOCVT_ORIGINAL
JOIN DIM_CALENDARIO CAL
ON CAL.ANO = LOC.ANO_ELEICAO