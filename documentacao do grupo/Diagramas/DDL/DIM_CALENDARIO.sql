USE DataMindAnalytics;
GO

-------------------------------------

-- Inserts da DIM_DIA + DIM_ANO

-- DIM_ANO

INSERT INTO DIM_ANO (ANO)
VALUES
    (2014),
    (2016),
    (2018),
    (2020),
    (2022),
    (2024),
    (2026);
GO


-- DIM_DIA 


-- 2014

INSERT INTO DIM_DIA (ANO, DIA, DIA_SEMANA)
VALUES
    (2014, 1, 'Quarta-feira'),
    (2014, 2, 'Quinta-feira'),
    (2014, 3, 'Sexta-feira'),
    (2014, 4, 'Sábado'),
    (2014, 5, 'Domingo'),
    (2014, 6, 'Segunda-feira'),
    (2014, 7, 'Terça-feira'),
    (2014, 8, 'Quarta-feira'),
    (2014, 9, 'Quinta-feira'),
    (2014, 10, 'Sexta-feira'),
    (2014, 11, 'Sábado'),
    (2014, 12, 'Domingo'),
    (2014, 13, 'Segunda-feira'),
    (2014, 14, 'Terça-feira'),
    (2014, 15, 'Quarta-feira'),
    (2014, 16, 'Quinta-feira'),
    (2014, 17, 'Sexta-feira'),
    (2014, 18, 'Sábado'),
    (2014, 19, 'Domingo'),
    (2014, 20, 'Segunda-feira'),
    (2014, 21, 'Terça-feira'),
    (2014, 22, 'Quarta-feira'),
    (2014, 23, 'Quinta-feira'),
    (2014, 24, 'Sexta-feira'),
    (2014, 25, 'Sábado'),
    (2014, 26, 'Domingo'),
    (2014, 27, 'Segunda-feira'),
    (2014, 28, 'Terça-feira'),
    (2014, 29, 'Quarta-feira'),
    (2014, 30, 'Quinta-feira'),
    (2014, 31, 'Sexta-feira');
GO

-- 2018

INSERT INTO DIM_DIA (ANO, DIA, DIA_SEMANA)
VALUES
    (2018, 1, 'Segunda-feira'),
    (2018, 2, 'Terça-feira'),
    (2018, 3, 'Quarta-feira'),
    (2018, 4, 'Quinta-feira'),
    (2018, 5, 'Sexta-feira'),
    (2018, 6, 'Sábado'),
    (2018, 7, 'Domingo'),
    (2018, 8, 'Segunda-feira'),
    (2018, 9, 'Terça-feira'),
    (2018, 10, 'Quarta-feira'),
    (2018, 11, 'Quinta-feira'),
    (2018, 12, 'Sexta-feira'),
    (2018, 13, 'Sábado'),
    (2018, 14, 'Domingo'),
    (2018, 15, 'Segunda-feira'),
    (2018, 16, 'Terça-feira'),
    (2018, 17, 'Quarta-feira'),
    (2018, 18, 'Quinta-feira'),
    (2018, 19, 'Sexta-feira'),
    (2018, 20, 'Sábado'),
    (2018, 21, 'Domingo'),
    (2018, 22, 'Segunda-feira'),
    (2018, 23, 'Terça-feira'),
    (2018, 24, 'Quarta-feira'),
    (2018, 25, 'Quinta-feira'),
    (2018, 26, 'Sexta-feira'),
    (2018, 27, 'Sábado'),
    (2018, 28, 'Domingo'),
    (2018, 29, 'Segunda-feira'),
    (2018, 30, 'Terça-feira'),
    (2018, 31, 'Quarta-feira');
GO

-- 2022

INSERT INTO DIM_DIA (ANO, DIA, DIA_SEMANA)
VALUES
    (2022, 1, 'Sábado'),
    (2022, 2, 'Domingo'),
    (2022, 3, 'Segunda-feira'),
    (2022, 4, 'Terça-feira'),
    (2022, 5, 'Quarta-feira'),
    (2022, 6, 'Quinta-feira'),
    (2022, 7, 'Sexta-feira'),
    (2022, 8, 'Sábado'),
    (2022, 9, 'Domingo'),
    (2022, 10, 'Segunda-feira'),
    (2022, 11, 'Terça-feira'),
    (2022, 12, 'Quarta-feira'),
    (2022, 13, 'Quinta-feira'),
    (2022, 14, 'Sexta-feira'),
    (2022, 15, 'Sábado'),
    (2022, 16, 'Domingo'),
    (2022, 17, 'Segunda-feira'),
    (2022, 18, 'Terça-feira'),
    (2022, 19, 'Quarta-feira'),
    (2022, 20, 'Quinta-feira'),
    (2022, 21, 'Sexta-feira'),
    (2022, 22, 'Sábado'),
    (2022, 23, 'Domingo'),
    (2022, 24, 'Segunda-feira'),
    (2022, 25, 'Terça-feira'),
    (2022, 26, 'Quarta-feira'),
    (2022, 27, 'Quinta-feira'),
    (2022, 28, 'Sexta-feira'),
    (2022, 29, 'Sábado'),
    (2022, 30, 'Domingo'),
    (2022, 31, 'Segunda-feira');
GO

-- 2026

INSERT INTO DIM_DIA (ANO, DIA, DIA_SEMANA)
VALUES
    (2026, 1, 'Quinta-feira'),
    (2026, 2, 'Sexta-feira'),
    (2026, 3, 'Sábado'),
    (2026, 4, 'Domingo'),
    (2026, 5, 'Segunda-feira'),
    (2026, 6, 'Terça-feira'),
    (2026, 7, 'Quarta-feira'),
    (2026, 8, 'Quinta-feira'),
    (2026, 9, 'Sexta-feira'),
    (2026, 10, 'Sábado'),
    (2026, 11, 'Domingo'),
    (2026, 12, 'Segunda-feira'),
    (2026, 13, 'Terça-feira'),
    (2026, 14, 'Quarta-feira'),
    (2026, 15, 'Quinta-feira'),
    (2026, 16, 'Sexta-feira'),
    (2026, 17, 'Sábado'),
    (2026, 18, 'Domingo'),
    (2026, 19, 'Segunda-feira'),
    (2026, 20, 'Terça-feira'),
    (2026, 21, 'Quarta-feira'),
    (2026, 22, 'Quinta-feira'),
    (2026, 23, 'Sexta-feira'),
    (2026, 24, 'Sábado'),
    (2026, 25, 'Domingo'),
    (2026, 26, 'Segunda-feira'),
    (2026, 27, 'Terça-feira'),
    (2026, 28, 'Quarta-feira'),
    (2026, 29, 'Quinta-feira'),
    (2026, 30, 'Sexta-feira'),
    (2026, 31, 'Sábado');
GO