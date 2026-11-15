USE DataMindAnalyticsNOVA

SET LANGUAGE Portuguese; -- Garante que os meses e dias da semana saiam em português
GO

DECLARE @DataInicial DATE = '2014-01-01';
DECLARE @DataFinal DATE = '2026-12-31';

-- Oculta a mensagem de "1 row affected" para rodar mais rápido
SET NOCOUNT ON; 

WHILE @DataInicial <= @DataFinal
BEGIN
    INSERT INTO DIM_CALENDARIO (SK_DATA, DATA, ANO, MES, NOME_MES, DIA, DIA_SEMANA, TRIMESTRE, EH_DIA_ELEICAO)
    VALUES (
        CAST(FORMAT(@DataInicial, 'yyyyMMdd') AS INT),       -- SK_DATA (ex: 20140101)
        @DataInicial,                                        -- DATA
        YEAR(@DataInicial),                                  -- ANO
        MONTH(@DataInicial),                                 -- MES
        DATENAME(MONTH, @DataInicial),                       -- NOME_MES (ex: Janeiro)
        DAY(@DataInicial),                                   -- DIA
        DATENAME(WEEKDAY, @DataInicial),                     -- DIA_SEMANA (ex: Segunda-feira)
        DATEPART(QUARTER, @DataInicial),                     -- TRIMESTRE
        0                                                    -- EH_DIA_ELEICAO (padrão 0)
    );

    -- Avança 1 dia
    SET @DataInicial = DATEADD(DAY, 1, @DataInicial);
END;

SET NOCOUNT OFF;
GO

UPDATE DIM_CALENDARIO
SET EH_DIA_ELEICAO = 1
WHERE SK_DATA IN (
    20141005, 20141026, -- Eleições 2014
    20161002, 20161030, -- Eleições 2016
    20181007, 20181028, -- Eleições 2018
    20201115, 20201129, -- Eleições 2020 (adiadas pela pandemia)
    20221002, 20221030, -- Eleições 2022
    20241006, 20241027  -- Eleições 2024
);
GO