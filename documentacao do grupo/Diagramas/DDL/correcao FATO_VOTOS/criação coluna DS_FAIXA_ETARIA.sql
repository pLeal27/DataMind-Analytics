--- Criação de uma tabela temporária derivada do .csv do Big Query

CREATE TABLE #perfil_eleitorado (
    ANO_ELEICAO SMALLINT,
    CD_MUNICIPIO BIGINT,
    NM_MUNICIPIO NVARCHAR(50),
    NR_ZONA     TINYINT,
    NR_SECAO    BIGINT,
    grupo_idade NVARCHAR(50)
)

--- Insere na tabela

BULK INSERT #perfil_eleitorado


--- use o caminho que está o arquivo csv 'Resultados_perfil_eleitorado.csv'

FROM 'DataMind-Analytics\documentacao do grupo\Diagramas\DDL\correcao FATO_VOTOS\Resultados_perfil_eleitorado.csv'
WITH (
    FIELDTERMINATOR = ';',
    ROWTERMINATOR = '\n'
)


--- Cria a coluna sem nenhum valor na FATO_VOTOS

ALTER TABLE FATO_VOTOS
ADD DS_FAIXA_ETARIA VARCHAR(50);

--- Com a coluna já criada ele atualiza o valor da coluna nas linha
--- onde (ANO_ELEICAO, CD_MUNICIPIO, NR_ZONA e NR_SECAO) sejam os mesmos
--- tanto na Fato quanto na temporária.

--- não informado: representa que não houve uma linha da fato que estivesse na perfil_eleitorado
--- JOVEM: até 24 anos
--- ADULTO: até 58 anos
--- IDOSO: maiores valores

UPDATE FAT
SET 
    FAT.DS_FAIXA_ETARIA = CASE
        WHEN PRF.grupo_idade IS NULL THEN 'Não Informado'
        WHEN CAST(SUBSTRING(PRF.grupo_idade, 1, 2) AS INT) < 25 THEN 'JOVEM'
        WHEN CAST(SUBSTRING(PRF.grupo_idade, 1, 2) AS INT) < 59 THEN 'ADULTO'
        ELSE 'IDOSO'
    END
FROM FATO_VOTOS FAT
LEFT JOIN #perfil_eleitorado PRF
	ON  FAT.ANO_ELEICAO  = PRF.ANO_ELEICAO
    AND FAT.CD_MUNICIPIO = PRF.CD_MUNICIPIO
    AND FAT.NR_ZONA      = PRF.NR_ZONA
    AND FAT.NR_SECAO     = PRF.NR_SECAO;


SELECT
    DS_FAIXA_ETARIA,
    COUNT(*) QTDE_CADA_FAIXA_ETARIA
FROM FATO_VOTOS
GROUP BY DS_FAIXA_ETARIA;