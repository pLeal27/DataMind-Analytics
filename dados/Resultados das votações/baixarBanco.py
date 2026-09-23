import basedosdados as bd



billing_id = "fast-drake-509514-v3"





query = """

  SELECT

    dados.ano as ano,

    dados.turno as turno,

    dados.id_eleicao as id_eleicao,

    dados.tipo_eleicao as tipo_eleicao,

    dados.data_eleicao as data_eleicao,

    dados.sigla_uf AS sigla_uf,

    diretorio_sigla_uf.nome AS sigla_uf_nome,

    dados.id_municipio AS id_municipio,

    diretorio_id_municipio.nome AS id_municipio_nome,

    dados.id_municipio_tse AS id_municipio_tse,

    diretorio_id_municipio_tse.nome AS id_municipio_tse_nome,

    dados.zona as zona,

    dados.secao as secao,

    dados.cargo as cargo,

    dados.aptos as aptos,

    dados.comparecimento as comparecimento,

    dados.abstencoes as abstencoes,

    dados.votos_nominais as votos_nominais,

    dados.votos_brancos as votos_brancos,

    dados.votos_nulos as votos_nulos,

    dados.votos_legenda as votos_legenda,

    dados.votos_nulos_apu_sep as votos_nulos_apu_sep,

    dados.proporcao_comparecimento as proporcao_comparecimento,

    dados.proporcao_votos_nominais as proporcao_votos_nominais,

    dados.proporcao_votos_legenda as proporcao_votos_legenda,

    dados.proporcao_votos_brancos as proporcao_votos_brancos,

    dados.proporcao_votos_nulos as proporcao_votos_nulos

FROM `basedosdados.br_tse_eleicoes.detalhes_votacao_secao` AS dados 

LEFT JOIN (SELECT DISTINCT sigla,nome  FROM `basedosdados.br_bd_diretorios_brasil.uf`) AS diretorio_sigla_uf

    ON dados.sigla_uf = diretorio_sigla_uf.sigla

LEFT JOIN (SELECT DISTINCT id_municipio,nome  FROM `basedosdados.br_bd_diretorios_brasil.municipio`) AS diretorio_id_municipio

    ON dados.id_municipio = diretorio_id_municipio.id_municipio

LEFT JOIN (SELECT DISTINCT id_municipio_tse,nome  FROM `basedosdados.br_bd_diretorios_brasil.municipio`) AS diretorio_id_municipio_tse

    ON dados.id_municipio_tse = diretorio_id_municipio_tse.id_municipio_tse

WHERE sigla_uf = 'AM'

  AND ano >= 2014  
"""



df =bd.read_sql(query = query, billing_project_id = billing_id)

df.to_csv("votacao_secao_filtrado.csv", index=False)

print("Download concluído com sucesso!")

