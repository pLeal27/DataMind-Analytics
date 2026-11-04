import re
input_file = r"C:\Users\julio\Downloads\NOTAS_BEM_LIMPAS.txt"
output_file = r"C:\Users\julio\Downloads\NOTAS_BEM_LIMPAS_seminserts.txt"


def limpar_arquivo_sql(caminho_entrada, caminho_saida):
    linhas_limpas = []

    with open(caminho_entrada, "r", encoding="utf-8") as f:
        for linha in f:
            linha_str = linha.strip()

            if linha_str.startswith("("):
                # Remove a vírgula ou ponto e vírgula do final da linha
                linha_trada = re.sub(r"[,;]\s*$", "", linha_str)
                linhas_limpas.append(linha_trada)

    with open(caminho_saida, "w", encoding="utf-8") as f:
        f.write("\n".join(linhas_limpas))

    print(f"Arquivo limpo salvo com sucesso em: {caminho_saida}") 

limpar_arquivo_sql(input_file, output_file)