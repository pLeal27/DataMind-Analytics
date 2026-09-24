| Variável | Descrição |
| :--- | :--- |
| `DT_GERACAO` | Data da extração dos dados para geração do arquivo.[cite: 2] |
| `HH_GERACAO` | Hora da extração dos dados para geração do arquivo com base no horário de Brasília.[cite: 2] |
| `AA_ELEICAO` | Ano de referência da eleição para geração do arquivo. *(Nota: para eleições suplementares, o ano de referência é o da eleição ordinária correspondente).*[cite: 2] |
| `DT_ELEICAO` | Data em que ocorreu a eleição.[cite: 2] |
| `DS_ELEICAO` | Descrição da eleição.[cite: 2] |
| `NR_TURNO` | Número do turno da eleição.[cite: 2] |
| `SG_UF` | Sigla da Unidade da Federação da eleitora ou do eleitor.[cite: 2] |
| `CD_MUNICIPIO` | Código TSE do município onde vota a eleitora ou o eleitor.[cite: 2] |
| `NM_MUNICIPIO` | Nome do município onde vota a eleitora ou o eleitor.[cite: 2] |
| `NR_ZONA` | Número da zona eleitoral onde vota a eleitora ou o eleitor.[cite: 2] |
| `NR_SECAO` | Número da seção eleitoral onde vota a eleitora ou o eleitor.[cite: 2] |
| `CD_TIPO_SECAO_AGREGADA` | Código do tipo de seção (`1`: Principal, `2`: Agregada, `3`: Distribuída de ofício). Observação: em períodos não eleitorais, assumirá o valor `-1`.[cite: 2] |
| `DS_TIPO_SECAO_AGREGADA` | Descrição do tipo de seção (`Principal`, `Agregada`, `Distribuída de ofício`). Observação: em períodos não eleitorais, assumirá o valor `#NULO`.[cite: 2] |
| `NR_SECAO_PRINCIPAL` | Número da seção eleitoral principal a qual a seção eleitoral foi agregada (recebe valores apenas quando `DS_TIPO_SECAO_AGREGADA` for 'Agregada'; nos demais casos, o valor é `-1`).[cite: 2] |
| `NR_LOCAL_VOTACAO` | Número do local de votação utilizado no pleito.[cite: 2] |
| `NM_LOCAL_VOTACAO` | Nome do local de votação utilizado no pleito.[cite: 2] |
| `CD_TIPO_LOCAL` | Código do tipo do local de votação (`1`: Convencional, `2`: Voto em trânsito, `3`: Preso provisório, `4`: Temporário).[cite: 2] |
| `DS_TIPO_LOCAL` | Descrição do tipo de local de votação (`Convencional`, `Voto em trânsito`, `Preso provisório`, `Temporário`).[cite: 2] |
| `DS_ENDERECO` | Descrição do endereço do local de votação utilizado no pleito.[cite: 2] |
| `NM_BAIRRO` | Nome do bairro do local de votação utilizado no pleito.[cite: 2] |
| `NR_CEP` | Número do CEP do endereço do local de votação utilizado no pleito.[cite: 2] |
| `NR_TELEFONE_LOCAL` | Número de telefone do local de votação utilizado no pleito (gravação baseada no cadastro no momento de geração do arquivo).[cite: 2] |
| `NR_LATITUDE` | Latitude referente à localização do local de votação utilizado no pleito (gravação baseada no cadastro no momento de geração do arquivo).[cite: 2] |
| `NR_LONGITUDE` | Longitude referente à localização do local de votação utilizado no pleito (gravação baseada no cadastro no momento de geração do arquivo).[cite: 2] |
| `CD_SITU_LOCAL_VOTACAO` | Código da situação do cadastro do local de votação (`1`: Ativo, `2`: Inativo, `3`: Desativado, `4`: Ativo, aguardando processamento DEPARA, `5`: Bloqueado, `6`: Provisório).[cite: 2] |
| `DS_SITU_LOCAL_VOTACAO` | Descrição da situação do cadastro do local de votação (`Ativo`, `Inativo`, `Desativado`, `Ativo, aguardando processamento DEPARA`, `Bloqueado`, `Provisório`).[cite: 2] |
| `CD_SITU_ZONA` | Código da situação do cadastro da zona eleitoral (`1`: Ativo, `2`: Inativo, `3`: Desativado, `4`: Ativo, aguardando processamento).[cite: 2] |
| `DS_SITU_ZONA` | Descrição da situação do cadastro da zona eleitoral (`Ativo`, `Inativo`, `Desativado`, `Ativo, aguardando processamento`).[cite: 2] |
| `CD_SITU_SECAO` | Código da situação do cadastro da seção eleitoral (`1`: Ativo, `2`: Inativo, `3`: Desativado, `4`: Ativo, aguardando processamento).[cite: 2] |
| `DS_SITU_SECAO` | Descrição da situação do cadastro da seção eleitoral (`Ativo`, `Inativo`, `Desativado`, `Ativo, aguardando processamento`).[cite: 2] |
| `CD_SITU_LOCALIDADE` | Código da situação do cadastro da localidade/município do local de votação (`1`: Ativo, `2`: Inativo, `3`: Desativado, `4`: Ativo, aguardando processamento DEPARA).[cite: 2] |
| `DS_SITU_LOCALIDADE` | Descrição da situação do cadastro da localidade/município do local de votação (`Ativo`, `Inativo`, `Desativado`, `Ativo, aguardando processamento DEPARA`).[cite: 2] |
| `CD_SITU_SECAO_ACESSIBILIDADE` | Código da situação de acessibilidade da seção eleitoral (`1`: com acessibilidade, `2`: sem acessibilidade, `-1`: não informado).[cite: 2] |
| `DS_SITU_SECAO_ACESSIBILIDADE` | Descrição da situação de acessibilidade da seção eleitoral (`Com acessibilidade`, `Sem acessibilidade`, `Não informado`).[cite: 2] |
| `QT_ELEITOR_SECAO` | Quantitativo de eleitoras e eleitores aptos a votar originalmente vinculados à seção.[cite: 2] |
| `QT_ELEITOR_ELEICAO_FEDERAL` | Quantitativo de eleitoras e eleitores aptos a votar na eleição federal (cargo Presidente) após distribuições, agregações e transferências temporárias (zero para seções agregadas ou distribuídas de ofício).[cite: 2] |
| `QT_ELEITOR_ELEICAO_ESTADUAL` | Quantitativo de eleitoras e eleitores aptos a votar na eleição estadual (Governador, Deputado Federal, Senador e Deputado Estadual) após distribuições, agregações e transferências temporárias (zero para seções agregadas ou distribuídas de ofício).[cite: 2] |
| `QT_ELEITOR_ELEICAO_MUNICIPAL` | Quantitativo de eleitoras e eleitores aptos a votar na eleição municipal (Prefeito e Vereador) após distribuições, agregações e transferências temporárias (zero para seções agregadas ou distribuídas de ofício).[cite: 2] |
| `NR_LOCAL_VOTACAO_ORIGINAL` | Número do local de votação cadastrado originalmente.[cite: 2] |
| `NM_LOCAL_VOTACAO_ORIGINAL` | Nome do local de votação cadastrado originalmente.[cite: 2] |
| `DS_ENDERECO_LOCVT_ORIGINAL` | Descrição do endereço do local de votação cadastrado originalmente.[cite: 2] |