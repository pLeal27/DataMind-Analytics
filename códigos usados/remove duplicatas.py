import re

input_file = r"C:\Users\2501054\Desktop\Projeto 4\DataMind-Analytics\documentacao do grupo\Diagramas\DDL\DIM_LOCALVOTACAO.sql"
output_file = r"C:\Users\2501054\Desktop\Innovation LAB\NOTAS_BEM_LIMPAS.txt"

def obter_chave_estrita(linha):
    linha_limpa = linha.strip()
    
    # Mantém comentários, linhas em branco e comandos INSERT intactos
    if not linha_limpa or linha_limpa.startswith('--') or linha_limpa.startswith('/*') or linha_limpa.startswith('INSERT'):
        return None

    # Remove apenas o delimitador SQL do final (, ou ;) para comparar os valores
    linha_sem_delimitador = re.sub(r'[,;]\s*$', '', linha_limpa)
    
    # Converte para maiúsculas apenas para ignorar case-sensitivity, 
    # mantendo TODOS os espaços e caracteres exatamente como estão!
    return linha_sem_delimitador.upper()

def limpar_sql_seguro(arquivo_entrada, arquivo_saida):
    tuplas_vistas = set()
    duplicatas_removidas = 0
    total_linhas = 0
    linhas_limpas = []

    print("Processando arquivo SQL com validação estrita...")
    
    with open(arquivo_entrada, 'r', encoding='utf-8') as f:
        for linha in f:
            total_linhas += 1
            
            chave = obter_chave_estrita(linha)
            
            if chave is None:
                linhas_limpas.append(linha)
                continue

            if chave in tuplas_vistas:
                duplicatas_removidas += 1
            else:
                tuplas_vistas.add(chave)
                linhas_limpas.append(linha)

    with open(arquivo_saida, 'w', encoding='utf-8') as f:
        f.writelines(linhas_limpas)

    print("\n--- Relatório Seguro ---")
    print(f"Total de linhas lidas: {total_linhas}")
    print(f"Duplicatas removidas: {duplicatas_removidas}")
    print(f"Arquivo salvo em: '{arquivo_saida}'")

if __name__ == "__main__":
    limpar_sql_seguro(input_file, output_file)