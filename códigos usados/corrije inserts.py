input_file = r"C:\Users\julio\Downloads\sem duplicatas.txt"
output_file = r"C:\Users\julio\Downloads\NOTAS_BEM_LIMPAS_cominserts.txt"

cabecalho_insert = "INSERT INTO DIM_LOCALVOTACAO (CD_MUNICIPIO, NM_MUNICIPIO, NR_ZONA, NR_SECAO, DS_TIPO_SECAO_AGREGADA, NR_SECAO_PRINCIPAL, NR_LOCAL_VOTACAO, NM_LOCAL_VOTACAO, DS_ENDERECO, NM_BAIRRO, NR_CEP, NR_LOCAL_VOTACAO_ORIGINAL, NM_LOCAL_VOTACAO_ORIGINAL, DS_ENDERECO_LOCVT_ORIGINAL, AA_ELEICAO) \nVALUES"

with open(input_file, "r", encoding="utf-8") as f_in, open(
    output_file, "w", encoding="utf-8"
) as f_out:
    for i, linha in enumerate(f_in):
        conteudo_linha = linha.strip()

        if not conteudo_linha:
            continue

        if i > 0 and i % 1000 == 0:
            f_out.write(";\n\n")

        if i % 1000 == 0:
            f_out.write(f"{cabecalho_insert}\n")
        else:
            f_out.write(",\n")

        f_out.write(conteudo_linha)

    f_out.write(";\n")

print("Concluído!")