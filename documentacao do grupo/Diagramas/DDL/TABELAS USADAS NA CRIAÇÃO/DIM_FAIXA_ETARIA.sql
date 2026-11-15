USE DataMindAnalyticsNOVA;
GO

INSERT INTO DIM_FAIXA_ETARIA (DS_FAIXA_ETARIA, ORDEM_FAIXA, DS_CATEGORIA_ETARIA)
VALUES
    ('16 anos', 1, 'Eleitorado Jovem'),
    ('17 anos', 2, 'Eleitorado Jovem'),
    ('18 anos', 3, 'Eleitorado Jovem'),
    ('19 anos', 4, 'Eleitorado Jovem'),
    ('20 anos', 5, 'Eleitorado Jovem'),
    ('21 a 24 anos', 6, 'Eleitorado Jovem'),
    ('25 a 29 anos', 7, 'Adulto'),
    ('30 a 34 anos', 8, 'Adulto'),
    ('35 a 39 anos', 9, 'Adulto'),
    ('40 a 44 anos', 10, 'Adulto'),
    ('45 a 49 anos', 11, 'Adulto'),
    ('50 a 54 anos', 12, 'Adulto'),
    ('55 a 59 anos', 13, 'Adulto'),
    ('60 a 64 anos', 14, 'Idoso'),
    ('65 a 69 anos', 15, 'Idoso'),
    ('70 a 74 anos', 16, 'Idoso'),
    ('75 a 79 anos', 17, 'Idoso'),
    ('80 a 84 anos', 18, 'Idoso'),
    ('85 a 89 anos', 19, 'Idoso'),
    ('90 a 94 anos', 20, 'Idoso'),
    ('95 a 99 anos', 21, 'Idoso'),
    ('100 anos ou mais', 22, 'Idoso'),
    ('Inválido', 98, 'Inválido');
GO

select * from DIM_FAIXA_ETARIA