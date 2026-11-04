import re

input_file = r"C:\Users\julio\Downloads\dadoslimpos2.txt"
output_file = r"C:\Users\julio\Downloads\dadoslimpos3.txt"

def normalizar_tupla_sql(linha):
    linha_limpa = linha.strip()
    
    # Mantém comentários e cabeçalhos de comandos
    if not linha_limpa or linha_limpa.startswith('--') or linha_limpa.startswith('/*') or linha_limpa.startswith('INSERT'):
        return None

    # Remove vírgula ou ponto e vírgula do final da linha
    linha_limpa = re.sub(r'[,;]\s*$', '', linha_limpa)
    
    # Remove espaços internos adicionais e espaços nas bordas dentro das aspas simples
    # Exemplo: 'RUA GUARANOPOLIS 3 ' -> 'RUA GUARANOPOLIS 3'
    linha_limpa = re.sub(r"'\s+|\s+'", "'", linha_limpa)
    linha_normalizada = " ".join(linha_limpa.split())
    
    # Converte para maiúsculas para simular a comparação Case-Insensitive do SQL Server
    return linha_normalizada.upper()

def limpar_sql_avancado(arquivo_entrada, arquivo_saida):
    tuplas_vistas = set()
    duplicatas_removidas = 0
    total_linhas = 0
    linhas_limpas = []

    print("Processando arquivo SQL...")
    
    with open(arquivo_entrada, 'r', encoding='utf-8') as f:
        for linha in f:
            total_linhas += 1
            
            chave_normalizada = normalizar_tupla_sql(linha)
            
            if chave_normalizada is None:
                linhas_limpas.append(linha)
                continue

            if chave_normalizada in tuplas_vistas:
                duplicatas_removidas += 1
            else:
                tuplas_vistas.add(chave_normalizada)
                linhas_limpas.append(linha)

    with open(arquivo_saida, 'w', encoding='utf-8') as f:
        f.writelines(linhas_limpas)

    print("\n--- Relatório ---")
    print(f"Total de linhas lidas: {total_linhas}")
    print(f"Duplicatas removidas: {duplicatas_removidas}")
    print(f"Arquivo salvo em: '{arquivo_saida}'")

if __name__ == "__main__":
    limpar_sql_avancado(input_file, output_file)