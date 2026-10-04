# Ministério das Cidades / Secretaria Nacional de Saneamento (SNS)
## Sistema Nacional de Informações sobre Saneamento (SNIS)

### Indicadores de Saneamento Básico por Município (2014-2022)
**Indicadores sanitários e demográficos compostos por:** População atendida, índices de atendimento de água, coleta e tratamento de esgoto referentes aos municípios brasileiros para o período de 2014 a 2022. Os dados estão dimensionados por município, agrupados por estado e prestadores de serviços.

---

## Dicionário de Dados

| Nome da Coluna | Tipo de Dado | Unidade | Descrição |
| :--- | :--- | :--- | :--- |
| **Código do IBGE** | Numérico | ID IBGE | Código oficial do município fornecido pelo IBGE. |
| **Código do Município** | Numérico | ID | Código interno ou específico do município na base do SNIS. |
| **Município** | Texto | Nome | Nome do município analisado. |
| **Estado** | Texto | Sigla (ex: AM) | Unidade da Federação correspondente aos dados. |
| **Ano de Referência** | Numérico | `YYYY` | Ano de referência da apuração dos dados e indicadores de saneamento. |
| **Prestadores** | Texto | Nome | Entidade responsável pela prestação dos serviços de saneamento no município. |
| **Serviços** | Texto | Categoria | Tipo de serviço prestado (ex: Água, Esgoto, Resíduos Sólidos). |
| **Natureza Jurídica** | Texto | Categoria | Natureza jurídica do prestador dos serviços (ex: Administração Pública Direta, Sociedade de Economia Mista). |
| **G12A - População total residente com abastecimento de água** | Numérico | Habitantes | População total residente no(s) município(s) com abastecimento de água, segundo o IBGE. |
| **IN015_AE - Índice de coleta de esgoto** | Numérico | % | Percentual da população urbana atendida com coleta de esgoto em relação à população urbana total. |
| **IN016_AE - Índice de tratamento de esgoto** | Numérico | % | Percentual de esgoto tratado em relação ao esgoto coletado ou gerado. |
| **IN055_AE - Índice de atendimento total de água** | Numérico | % | Percentual da população total atendida com abastecimento de água. |
| **IN056_AE - Índice de atendimento total de esgoto** | Numérico | % | Percentual da população total atendida com esgoto sanitário referido aos municípios atendidos com água. |