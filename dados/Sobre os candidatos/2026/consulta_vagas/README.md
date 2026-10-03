## Dicionário de Dados (`CONSULTA_VAGAS`)

| Variável | Descrição |
| :--- | :--- |
| `DT_GERACAO` | Data da extração dos dados para geração do arquivo[cite: 1]. |
| `HH_GERACAO` | Hora da extração dos dados com base no horário de Brasília[cite: 1]. |
| `ANO_ELEICAO` | Ano de referência da eleição[cite: 1]. Para eleições suplementares, é mantido o ano da eleição ordinária correspondente[cite: 1]. |
| `CD_TIPO_ELEICAO` | Código do tipo de eleição (`1`: Eleição Suplementar, `2`: Eleição Ordinária, `3`: Consulta Popular)[cite: 1]. |
| `NM_TIPO_ELEICAO` | Nome do tipo de eleição (Ordinária, Suplementar ou Consulta Popular - Plebiscito/Referendo)[cite: 1]. |
| `CD_ELEICAO` | Código único da eleição no âmbito da Justiça Eleitoral (único por eleição e por turno). |
| `DS_ELEICAO` | Descrição da eleição. |
| `DT_ELEICAO` | Data da ocorrência da eleição. |
| `DT_POSSE` | Data de posse da eleição. |
| `SG_UF` | Sigla da Unidade da Federação na qual a candidata ou candidato concorre. |
| `SG_UE` | Sigla da Unidade Eleitoral onde ocorre a candidatura (`BR` para abrangência federal; sigla da UF para estadual; código TSE do município para municipal). |
| `NM_UE` | Nome da Unidade Eleitoral ("Brasil" para abrangência nacional, nome da UF para estadual ou nome do município para municipal). |
| `CD_CARGO` | Código do cargo ao qual a candidata ou candidato concorre. |
| `DS_CARGO` | Descrição do cargo ao qual a candidata ou candidato concorre. |
| `QT_VAGA` | Quantidade de vagas para aquele cargo, agrupadas por unidade eleitoral. |