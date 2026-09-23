## Dicionário de Dados (`CONSULTA_CAND_COMPLEMENTAR`)

> **Nota para Candidatos Não Divulgáveis:** Os dados pessoais são preenchidos com `-4` (campos numéricos, exceto idade), `"NÃO DIVULGÁVEL"` (campos de texto) e `""` (idade e data de nascimento)[cite: 3].

| Variável | Descrição |
| :--- | :--- |
| `DT_GERACAO` | Data da extração dos dados para geração do arquivo[cite: 3]. |
| `HH_GERACAO` | Hora da extração dos dados (horário de Brasília)[cite: 3]. |
| `ANO_ELEICAO` | Ano de referência da eleição[cite: 3]. Em eleições suplementares, mantém-se o ano da eleição ordinária correspondente[cite: 3]. |
| `CD_ELEICAO` | Código único da eleição no âmbito da Justiça Eleitoral (único por eleição e turno)[cite: 3]. |
| `SQ_CANDIDATO` | Número sequencial da candidata ou candidato (gerado internamente, não é o número de campanha)[cite: 3]. |
| `CD_DETALHE_SITUACAO_CAND` | Código do detalhe da situação do registro de candidatura (aplicável até 2022)[cite: 3]. |
| `DS_DETALHE_SITUACAO_CAND` | Descrição do detalhe da situação do registro de candidatura (aplicável até 2022)[cite: 3]. |
| `CD_NACIONALIDADE` | Código da nacionalidade (`1`: Brasileira nata, `2`: Brasileira naturalizada, `3`: Portuguesa com igualdade de direitos, `4`: Estrangeiro)[cite: 3]. |
| `DS_NACIONALIDADE` | Descrição da nacionalidade[cite: 3]. |
| `CD_MUNICIPIO_NASCIMENTO` | Código de identificação do município de nascimento[cite: 3]. |
| `NM_MUNICIPIO_NASCIMENTO` | Nome do município de nascimento[cite: 3]. |
| `NR_IDADE_DATA_POSSE` | Idade calculada com base na data da posse para o cargo/unidade eleitoral[cite: 3]. |
| `ST_QUILOMBOLA` | Indica se autodeclara-se quilombola (`S`: Sim, `N`: Não)[cite: 3]. |
| `CD_ETNIA_INDIGENA` | Código autodeclarado da etnia indígena[cite: 3]. |
| `DS_ETNIA_INDIGENA` | Descrição autodeclarada da etnia indígena[cite: 3]. |
| `VR_DESPESA_MAX_CAMPANHA` | Valor máximo (em R$) de despesas de campanha declarada pelo partido[cite: 3]. |
| `ST_REELEICAO` | Indica se concorre à reeleição (`S`: Sim, `N`: Não)[cite: 3]. |
| `ST_DECLARAR_BENS` | Indica se possui bens a declarar (`S`: Sim, `N`: Não)[cite: 3]. |
| `NR_PROTOCOLO_CANDIDATURA` | Número do protocolo de registro de candidatura[cite: 3]. |
| `NR_PROCESSO` | Número do processo de registro de candidatura[cite: 3]. |
| `CD_SITUACAO_CANDIDATO_PLEITO` | Código da situação da candidatura no dia do pleito (aplicável até 2022)[cite: 3]. |
| `DS_SITUACAO_CANDIDATO_PLEITO` | Descrição da situação da candidatura no dia do pleito (aplicável até 2022)[cite: 3]. |
| `CD_SITUACAO_CANDIDATO_URNA` | Código da situação da candidatura na urna (aplicável até 2022)[cite: 3]. |
| `DS_SITUACAO_CANDIDATO_URNA` | Descrição da situação da candidatura na urna (aplicável até 2022)[cite: 3]. |
| `ST_CANDIDATO_INSERIDO_URNA` | Indica se foi inserido na urna eletrônica (`S`: Sim, `N`: Não)[cite: 3]. |
| `NM_TIPO_DESTINACAO_VOTOS` | Nome do tipo da destinação dos votos[cite: 3]. |
| `CD_SITUACAO_CANDIDATO_TOT` | Código da situação atual no banco de totalização (aplicável até 2022)[cite: 3]. |
| `DS_SITUACAO_CANDIDATO_TOT` | Descrição da situação atual no banco de totalização (aplicável até 2022)[cite: 3]. |
| `ST_PREST_CONTAS` | Indica se realizou a prestação de contas eleitorais (`S`: Sim, `N`: Não)[cite: 3]. |
| `ST_SUBSTITUIDO` | Indica se foi substituída(o) (`Sim`, `Não`)[cite: 3]. |
| `SQ_SUBSTITUIDO` | Sequencial da candidata ou candidato que está a ser substituída(o)[cite: 3]. |
| `SQ_ORDEM_SUPLENCIA` | Ordem da suplência para cargos proporcionais ou senado[cite: 3]. |
| `DT_ACEITE_CANDIDATURA` | Data de aceite do registro pela Justiça Eleitoral[cite: 3]. |
| `CD_SITUACAO_JULGAMENTO` | Código da situação quanto ao julgamento do registro (a partir de 2024)[cite: 3]. |
| `DS_SITUACAO_JULGAMENTO` | Descrição da situação quanto ao julgamento do registro (a partir de 2024)[cite: 3]. |
| `CD_SITUACAO_JULGAMENTO_PLEITO` | Código da situação no dia do pleito (a partir de 2024)[cite: 3]. |
| `DS_SITUACAO_JULGAMENTO_PLEITO` | Descrição da situação no dia do pleito (a partir de 2024)[cite: 3]. |
| `CD_SITUACAO_JULGAMENTO_URNA` | Código da situação na urna (a partir de 2024)[cite: 3]. |
| `DS_SITUACAO_JULGAMENTO_URNA` | Descrição da situação na urna (a partir de 2024)[cite: 3]. |
| `CD_SITUACAO_CASSACAO` | Código da situação quanto à cassação do mandato (a partir de 2024)[cite: 3]. |
| `DS_SITUACAO_CASSACAO` | Descrição da situação quanto à cassação do mandato (a partir de 2024)[cite: 3]. |
| `CD_SITUACAO_CASSACAO_MIDIA` | Código da situação de cassação no fechamento do sistema (a partir de 2024)[cite: 3]. |
| `DS_SITUACAO_CASSACAO_MIDIA` | Descrição da situação de cassação no fechamento do sistema (a partir de 2024)[cite: 3]. |
| `CD_SITUACAO_DCONST_DIPLOMA` | Código da situação sobre a desconstituição do diploma (a partir de 2024)[cite: 3]. |
| `DS_SITUACAO_DCONST_DIPLOMA` | Descrição da situação sobre a desconstituição do diploma (a partir de 2024)[cite: 3]. |
| `DT_DIPLOMACAO` | Data da diplomação (a partir de 2018)[cite: 3]. |
| `CD_SITUACAO_DIPLOMACAO` | Código da situação da diplomação (a partir de 2018)[cite: 3]. |
| `DS_SITUACAO_DIPLOMACAO` | Descrição da situação da diplomação (a partir de 2018)[cite: 3]. |
| `ST_IMPUGNADO` | Indica se teve o registro impugnado (`S`: Sim, `N`: Não)[cite: 3]. |
| `CD_GENERO_FEFC` | Código de género para fins de cálculo do FEFC (`2`: Masculino, `4`: Feminino)[cite: 3]. |
| `DS_GENERO_FEFC` | Descrição de género congelada para fins de cálculo do FEFC[cite: 3]. |
| `CD_COR_RACA_FEFC` | Código de cor/raça congelado para o FEFC (`01`: Branca, `02`: Preta, `03`: Parda, `04`: Amarela, `05`: Indígena, `06`: Não Informado)[cite: 3]. |
| `DS_COR_RACA_FEFC` | Descrição de cor/raça congelada para o cálculo do FEFC[cite: 3]. |