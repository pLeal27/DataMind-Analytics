CREATE TABLE [DIM_CANDIDATOS] (
  [SQ_CANDIDATOS] int PRIMARY KEY,
  [NM_CANDIDATO] nvarchar(255),
  [NR_PARTIDO] int,
  [NM_PARTIDO] nvarchar(255),
  [NR_TURNO] int,
  [ANO_ELEICAO] int
)
GO

CREATE TABLE [eleitorado_local_votacao] (
  [NR_SECAO] INT,
  [SK_SECAO] INT,
  [DS_ENDERECO] nvarchar(255),
  [NR_ZONA] INT,
  [NM_BAIRRO] VARCHAR,
  [CD_MUNICIPIO] INT,
  [NM_MUNICIPIO] nvarchar(255),
  [NR_CEP] INT,
  [IDHPROX_MUNICIPIO] float,
  [ANO_ELEICAO] int,
  [NR_LATITUDE] FLOAT,
  [NR_LONGITUDE] FLOAT,
  PRIMARY KEY ([NR_SECAO], [SK_SECAO])
)
GO

CREATE TABLE [DIM_LOCALVOTACAO] (
  [SK_SECAO] int PRIMARY KEY,
  [LOCAL_VOTACAO] nvarchar(255),
  [REGIAO] nvarchar(255),
  [LOCAL] nvarchar(255),
  [MUNICIPIO] nvarchar(255),
  [IDHM_MUNICIPIO] float,
  [TIPOLOCAL] nvarchar(255),
  [ANO_ELEICAO] int
)
GO

CREATE TABLE [DIM_POSICAOGEOGRAFICA] (
  [ID_POSICAO] int PRIMARY KEY,
  [LOCAL_VOTACAO] nvarchar(255),
  [ANO] int,
  [LATITUDE] float,
  [LONGITUDE] float,
  [SOFREU_CHUVA] boolean,
  [ANO_ELEICAO] int
)
GO

CREATE TABLE [eleitorado_secao] (
  [NR_SECAO] INT,
  [SK_SECAO] INT,
  PRIMARY KEY ([NR_SECAO], [SK_SECAO])
)
GO

CREATE TABLE [detalhes_votacao_secao] (
  [NR_SECAO] INT PRIMARY KEY,
  [QT_APTOS] INT,
  [QT_COMPARECIMENTO] INT,
  [QT_ABSTENCOES] INT,
  [QT_VOTOS_NOMINAIS] INT,
  [QT_VOTOS_BRANCOS] INT,
  [QT_VOTOS_NULOS] INT,
  [QT_VOTOS_LEGENDA] INT,
  [QT_VOTOS_ANULADOS_APU_SEP] INT
)
GO

CREATE TABLE [perfil_eleitor_secao] (
  [ANO] INT PRIMARY KEY,
  [CD_FAIXA_ETARIA] INT,
  [DS_FAIXA_ETARIA] VARCHAR,
  [NR_SECAO] INT
)
GO

CREATE TABLE [FATO_VOTOS] (
  [SQ_CANDIDATO] int,
  [SK_SECAO] int,
  [VOTOS_PORSESSAO_nominal] int,
  [VOTOS_NULOS_E_BRANCOS_PORSESSAO] int,
  [VOTOS_FAIXAETARIA_PORSESSAO] int,
  [VOTOS_PORCANDIDATO_PORSESSAO] int,
  [ANO_ELEICAO] int
)
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Chave Primária Surrogate / Negócio',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DIM_CANDIDATOS',
@level2type = N'Column', @level2name = 'SQ_CANDIDATOS';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Chave Primária Surrogate',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DIM_LOCALVOTACAO',
@level2type = N'Column', @level2name = 'SK_SECAO';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Ex: PERIFERIA, CENTRO',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DIM_LOCALVOTACAO',
@level2type = N'Column', @level2name = 'TIPOLOCAL';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'FK para DIM_CANDIDATOS',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FATO_VOTOS',
@level2type = N'Column', @level2name = 'SQ_CANDIDATO';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'FK para DIM_LOCALVOTACAO',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'FATO_VOTOS',
@level2type = N'Column', @level2name = 'SK_SECAO';
GO

ALTER TABLE [FATO_VOTOS] ADD FOREIGN KEY ([SQ_CANDIDATO]) REFERENCES [DIM_CANDIDATOS] ([SQ_CANDIDATOS])
GO

ALTER TABLE [FATO_VOTOS] ADD FOREIGN KEY ([SK_SECAO]) REFERENCES [DIM_LOCALVOTACAO] ([SK_SECAO])
GO

ALTER TABLE [detalhes_votacao_secao] ADD FOREIGN KEY ([NR_SECAO]) REFERENCES [DIM_LOCALVOTACAO] ([SK_SECAO])
GO

ALTER TABLE [perfil_eleitor_secao] ADD FOREIGN KEY ([NR_SECAO]) REFERENCES [DIM_LOCALVOTACAO] ([SK_SECAO])
GO

ALTER TABLE [eleitorado_secao] ADD FOREIGN KEY ([SK_SECAO]) REFERENCES [DIM_LOCALVOTACAO] ([SK_SECAO])
GO

ALTER TABLE [eleitorado_local_votacao] ADD FOREIGN KEY ([SK_SECAO]) REFERENCES [DIM_LOCALVOTACAO] ([SK_SECAO])
GO

ALTER TABLE [DIM_LOCALVOTACAO] ADD FOREIGN KEY ([SK_SECAO]) REFERENCES [DIM_POSICAOGEOGRAFICA] ([ID_POSICAO])
GO
