import csv
import re

input_file = r"C:\Users\julio\Downloads\dim local votacao dados.txt"
output_file = r"C:\Users\julio\Downloads\sem duplicatas.txt"

# Índices das colunas da chave primária na ordem do seu arquivo (começando em 0):
# 0: CD_MUNICIPIO | 2: NR_ZONA | 3: NR_SECAO | 14: AA_ELEICAO
INDICES_PK = (14, 0, 2, 3)

def extrair_chave_pk(linha):
    linha_limpa = linha.strip()
    if not linha_limpa or linha_limpa.startswith(('--', '/*', 'INSERT')):
        return None

    # Remove parênteses externos e delimitador final (, ou ;)
    conteudo = re.sub(r'^\(|\)[,;]\s*$', '', linha_limpa)

    # Faz o parse respeitando strings entre aspas simples e escapes SQL ('')
    leitor = csv.reader([conteudo], quotechar="'", skipinitialspace=True)
    colunas = next(leitor)

    # Monta a tupla apenas com os valores da chave primária
    return tuple(colunas[i].strip().upper() for i in INDICES_PK)

def limpar_por_pk(arquivo_entrada, arquivo_saida):
    chaves_vistas = set()
    duplicatas_removidas = 0
    total_linhas = 0
    linhas_limpas = []

    with open(arquivo_entrada, 'r', encoding='utf-8') as f:
        for linha in f:
            total_linhas += 1
            chave = extrair_chave_pk(linha)

            if chave is None:
                linhas_limpas.append(linha)
                continue

            if chave in chaves_vistas:
                duplicatas_removidas += 1
            else:
                chaves_vistas.add(chave)
                linhas_limpas.append(linha)

    with open(arquivo_saida, 'w', encoding='utf-8') as f:
        f.writelines(linhas_limpas)

    print(f"Total de linhas lidas: {total_linhas}")
    print(f"Duplicatas de PK removidas: {duplicatas_removidas}")
    print(f"Registros únicos salvos: {len(chaves_vistas)}")

if __name__ == "__main__":
    limpar_por_pk(input_file, output_file)