import re
input_file = r"C:\Users\julio\Downloads\dadoslimpos2.txt"
output_file = r"C:\Users\julio\Downloads\dadoslimposFIM.txt"

def converter_para_inserts_unicos(arquivo_entrada, arquivo_saida):
    print("Convertendo INSERTs em lote para INSERTs individuais...")
    
    with open(arquivo_entrada, 'r', encoding='utf-8') as f:
        conteudo = f.read()

    # Regex para capturar o cabeçalho do INSERT e o corpo com os VALUES
    padrao_insert = re.compile(r'(INSERT\s+INTO\s+[\w\s_]+\s*(?:\([^)]+\))?\s*VALUES\s*)(.+)', re.IGNORECASE)
    linhas_saida = []

    for linha in conteudo.splitlines():
        match = padrao_insert.match(linha.strip())
        
        if not match:
            # Mantém comentários ou outras linhas intactas
            linhas_saida.append(linha)
            continue

        cabecalho = match.group(1) # Ex: INSERT INTO DIM_LOCALVOTACAO (...) VALUES
        corpo = match.group(2)   # Ex: (2550, 'MANAUS', ...), (1234, ...)

        # Extrai cada tupla individualmente
        tuplas = re.findall(r'\((?:[^)(]+|\([^)(]*\))*\)', corpo)

        # Cria um comando INSERT independente para cada tupla
        for tupla in tuplas:
            linhas_saida.append(f"{cabecalho} {tupla};")

    with open(arquivo_saida, 'w', encoding='utf-8') as f:
        f.write("\n".join(linhas_saida))

    print(f"Pronto! Arquivo convertido salvo em: '{arquivo_saida}'")

if __name__ == "__main__":
    # Substitua pelos caminhos dos seus arquivos
    converter_para_inserts_unicos(input_file, output_file)