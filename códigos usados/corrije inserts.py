input_file = r"C:\Users\julio\Downloads\resultado_consulta.csv"
output_file = r"C:\Users\julio\Downloads\resultado_consulta_INSERTADA.csv"

cabecalho_insert = "INSERT INTO DIM_LOCAL_VOTACAO (ANO_ELEICAO, CD_MUNICIPIO, NM_MUNICIPIO, NR_ZONA, NR_LOCAL_VOTACAO, NM_LOCAL_VOTACAO, DS_ENDERECO, NM_BAIRRO, NR_CEP, NR_LOCAL_VOTACAO_ORIGINAL, NM_LOCAL_VOTACAO_ORIGINAL, DS_ENDERECO_LOCVT_ORIGINAL, NR_LATITUDE, NR_LONGITUDE) \nVALUES"

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