# Dicionário de Dados - Bem Candidato (`BEM CANDIDATO`)

| Variável | Descrição |
| :--- | :--- |
| `DT_GERACAO` | Data da extração dos dados para geração do arquivo. |
| `HH_GERACAO` | Hora da extração dos dados para geração do arquivo com base no horário de Brasília. |
| `ANO_ELEICAO` | Ano de referência da eleição para geração do arquivo. <br>*Observação:* Para eleições suplementares, o ano de referência é o da eleição ordinária correspondente (ex: suplementares ocorridas em 2017/2018/2019 constam no arquivo de 2016). |
| `CD_TIPO_ELEICAO` | Código do tipo de eleição:<br>• `1`: Eleição Suplementar<br>• `2`: Eleição Ordinária<br>• `3`: Consulta Popular |
| `NM_TIPO_ELEICAO` | Nome do tipo de eleição:<br>• **Ordinária:** Prevista em lei, ocorrendo a cada 4 anos (anos pares). Eleições gerais (Presidente, Governador, Deputados, Senador) ou municipais (Prefeito, Vereador).<br>• **Suplementar:** Ocorre eventualmente quando necessária.<br>• **Consulta Popular:** Plebiscito (opinião prévia sobre criação de lei) ou Referendo (aceitação de lei já aprovada). |
| `CD_ELEICAO` | Código único da eleição no âmbito da Justiça Eleitoral. <br>*Observação:* Este código é único por eleição e por turno. |
| `DS_ELEICAO` | Descrição da eleição. |
| `DT_ELEICAO` | Data da ocorrência da eleição. |
| `SG_UF` | Sigla da Unidade da Federação na qual a candidata ou candidato concorre. |
| `SG_UE` | Sigla da Unidade Eleitoral na qual a candidata ou candidato concorre.<br>• **Abrangência Federal:** `BR`<br>• **Abrangência Estadual:** Sigla da UF do candidato.<br>• **Abrangência Municipal:** Código TSE de identificação do município. |
| `NM_UE` | Nome da unidade eleitoral da candidata ou candidato ("Brasil", nome da UF ou nome do município). |
| `SQ_CANDIDATO` | Número sequencial da candidata ou candidato, gerado internamente pelos sistemas eleitorais para cada eleição. *(Não é o número de campanha).* |
| `NR_ORDEM_BEM_CANDIDATO` | Número de ordenação do bem patrimonial material de acordo com a sequência declarada pela pessoa candidata. |
| `CD_TIPO_BEM_CANDIDATO` | Código do tipo do bem patrimonial material declarado. |
| `DS_TIPO_BEM_CANDIDATO` | Tipo do bem patrimonial material declarado. |
| `DS_BEM_CANDIDATO` | Descrição detalhada do bem material patrimonial declarado. |
| `VR_BEM_CANDIDATO` | Valor, em reais (`R$`), do bem patrimonial material declarado. |
| `DT_ULT_ATUAL_BEM_CANDIDATO` | Data da última atualização do bem no sistema. |
| `HH_ULT_ATUAL_BEM_CANDIDATO` | Hora da última atualização do bem no sistema. |