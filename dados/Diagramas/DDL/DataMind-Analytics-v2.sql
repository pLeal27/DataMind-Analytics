CREATE TABLE [DIM_CANDIDATOS] (
  [SQ_CANDIDATOS] int PRIMARY KEY,
  [NM_CANDIDATO] nvarchar(255),
  [NR_PARTIDO] int,
  [NM_PARTIDO] nvarchar(255),
  [NR_TURNO] int,
  [ANO_ELEICAO] int
)
GO

CREATE TABLE [DIM_LOCALVOTACAO] (
  [NR_SECAO] INT,
  [DS_ENDERECO_LOCVT_ORIGINAL] nvarchar(255),
  [DS_ENDERECO] nvarchar(255),
  [NR_ZONA] INT,
  [CD_MUNICIPIO] INT,
  [NM_MUNICIPIO] nvarchar(255),
  [IDHPROX_MUNICIPIO] float,
  [TIPOLOCAL] nvarchar(255),
  [ANO_ELEICAO] int,
  PRIMARY KEY ([NR_SECAO], [DS_ENDERECO_LOCVT_ORIGINAL])
)
GO

CREATE TABLE [DIM_POSICAOGEOGRAFICA] (
  [NR_LOCAL_VOTACAO_ORIGINAL] INT PRIMARY KEY,
  [AA_ELEICAO] INT,
  [NR_LATITUDE] float,
  [NR_LONGITUDE] float
)
GO

CREATE TABLE [FATO_VOTOS] (
  [SQ_CANDIDATO] int,
  [NR_SECCAO] int,
  [VOTOS_PORSESSAO_NOMINAL] int,
  [VOTOS_NULOS_E_BRANCOS_PORSESSAO] int,
  [VOTOS_FAIXAETARIA_PORSESSAO] int,
  [VOTOS_PORCANDIDATO_PORSESSAO] int,
  [ANO_ELEICAO] int,
  PRIMARY KEY ([SQ_CANDIDATO], [NR_SECCAO])
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
@value = 'Gini?',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'DIM_LOCALVOTACAO',
@level2type = N'Column', @level2name = 'IDHPROX_MUNICIPIO';
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
@level2type = N'Column', @level2name = 'NR_SECCAO';
GO

ALTER TABLE [DIM_CANDIDATOS] ADD FOREIGN KEY ([SQ_CANDIDATOS]) REFERENCES [FATO_VOTOS] ([SQ_CANDIDATO])
GO

ALTER TABLE [DIM_LOCALVOTACAO] ADD FOREIGN KEY ([NR_SECAO]) REFERENCES [FATO_VOTOS] ([NR_SECCAO])
GO

ALTER TABLE [DIM_POSICAOGEOGRAFICA] ADD FOREIGN KEY ([NR_LOCAL_VOTACAO_ORIGINAL]) REFERENCES [DIM_LOCALVOTACAO] ([NR_SECAO])
GO
