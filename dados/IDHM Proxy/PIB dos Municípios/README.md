# Instituto Brasileiro de Geografia e Estatística (IBGE)
## Diretoria de Pesquisas
### Coordenação de Contas Nacionais

### PIB dos Municípios (2010-2023)
**Indicadores econômicos compostos por:** Valor adicionado bruto por setor de atividade econômica, impostos líquidos de subsídios, Produto Interno Bruto (PIB) a preços correntes, PIB per capita e classificações geográficas e urbanas para o período de 2010 a 2023. Os dados estão dimensionados por município, agrupados por unidades da federação e grandes regiões.

---

## Dicionário de Dados

| Nome da Coluna | Tipo de Dado | Unidade | Descrição |
| :--- | :--- | :--- | :--- |
| **Ano** | Numérico | `YYYY` | Ano de referência da apuração das contas regionais e municipais. |
| **Código da Grande Região** | Numérico | ID | Código oficial da grande região do país (ex: 1 para Norte, 2 para Nordeste, etc.). |
| **Nome da Grande Região** | Texto | Nome | Nome da grande região do país. |
| **Código da Unidade da Federação** | Numérico | ID IBGE | Código oficial da Unidade da Federação (UF) fornecido pelo IBGE. |
| **Sigla da Unidade da Federação** | Texto | Sigla (ex: AM) | Sigla da Unidade da Federação correspondente. |
| **Nome da Unidade da Federação** | Texto | Nome | Nome da Unidade da Federação correspondente. |
| **Código do Município** | Numérico | ID IBGE | Código oficial completo do município fornecido pelo IBGE (7 dígitos). |
| **Nome do Município** | Texto | Nome | Nome do município analisado. |
| **Região Metropolitana** | Texto | Categoria | Indicação de pertencimento a uma região metropolitana ou aglomeração urbana. |
| **Código e Nome da Mesorregião / Microrregião** | Numérico / Texto | ID / Nome | Divisões territoriais tradicionais do IBGE. |
| **Código e Nome da Região Geográfica (Imediata / Intermediária)** | Numérico / Texto | ID / Nome | Divisões territoriais tipológicas vigentes do IBGE. |
| **Informações de Concentração Urbana e Arranjo Populacional** | Numérico / Texto | ID / Categoria | Classificações relativas à hierarquia urbana, concentração e arranjos populacionais. |
| **Amazônia Legal / Semiárido** | Texto | Indicador (Sim/Não) | Indicadores de pertencimento a políticas de abrangência regional especial. |
| **Valor adicionado bruto da Agropecuária** | Numérico | R$ 1.000 | Valor adicionado bruto gerado pelo setor da agropecuária a preços correntes. |
| **Valor adicionado bruto da Indústria** | Numérico | R$ 1.000 | Valor adicionado bruto gerado pelo setor industrial a preços correntes. |
| **Valor adicionado bruto dos Serviços** | Numérico | R$ 1.000 | Valor adicionado bruto gerado pelo setor de serviços (exceto administração pública) a preços correntes. |
| **Valor adicionado bruto da Administração, defesa, educação e saúde públicas** | Numérico | R$ 1.000 | Valor adicionado bruto gerado pelas atividades públicas essenciais e seguridade social a preços correntes. |
| **Valor adicionado bruto total** | Numérico | R$ 1.000 | Soma total do valor adicionado bruto de todas as atividades a preços correntes. |
| **Impostos, líquidos de subsídios, sobre produtos** | Numérico | R$ 1.000 | Total de impostos líquidos de subsídios arrecadados sobre os produtos a preços correntes. |
| **Produto Interno Bruto (PIB)** | Numérico | R$ 1.000 | Produto Interno Bruto do município a preços correntes. |
| **Produto Interno Bruto per capita** | Numérico | R$ 1,00 | PIB total dividido pela população residente estimada do município a preços correntes. |
| **Atividade com maior, segundo e terceiro maior valor adicionado bruto** | Texto | Categoria | Classificação das principais atividades econômicas responsáveis pelas maiores parcelas do VAB municipal. |