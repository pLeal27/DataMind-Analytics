# Ministério da Educação
## Instituto Nacional de Estudos e Pesquisas Educacionais Anísio Teixeira (INEP)

### Ensino Médio Regular
**Indicadores educacionais compostos por:** Taxa de Aprovação, SAEB e IDEB nos anos de avaliação disponíveis (como 2017, 2019, 2021, 2023 e 2025). Os dados estão dimensionados por município e organizados por rede de ensino.

---

## Dicionário de Dados

| Nome da Coluna | Tipo de Dado | Unidade | Descrição |
| :--- | :--- | :--- | :--- |
| **Sigla da UF** | Texto | Sigla (ex: AM) | Unidade da Federação correspondente aos dados. |
| **Código do Município** | Numérico | ID IBGE | Código oficial do município fornecido pelo IBGE. |
| **Nome do Município** | Texto | Nome | Nome do município analisado. |
| **Rede** | Texto | Categoria | Rede de ensino (ex: Pública, Estadual, Privada, Total). |
| **Taxa de Aprovação (por ano)** | Numérico (%) | % | Percentual de alunos aprovados no ensino médio (geral e por série: 1ª, 2ª e 3ª séries) nos anos de avaliação. |
| **Indicador de Rendimento (P)** | Numérico | Índice (0 a 1) | Indicador calculado com base nas taxas de aprovação das séries do ensino médio. |
| **Nota SAEB (por ano)** | Numérico | Pontuação | Nota média padronizada nas avaliações do SAEB para Matemática, Língua Portuguesa e média geral nos anos de avaliação. |
| **IDEB (Observado)** | Numérico | Índice (0 a 10) | Valor observado do IDEB calculado a partir do produto entre o indicador de rendimento (P) e a nota média padronizada (N) dos anos correspondentes. |
| **Metas do IDEB** | Numérico | Índice (0 a 10) | Projeções de metas estipuladas para o IDEB do Ensino Médio, quando aplicável. |