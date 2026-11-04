input_file = r"C:\Users\julio\Downloads\NOTAS_BEM_LIMPAS_seminserts.txt"
output_file = r"C:\Users\julio\Downloads\NOTAS_BEM_LIMPAS_cominserts.txt"

cabecalho_insert = "INSERT INTO FATO_VOTOS (ANO_ELEICAO, NR_TURNO, CD_MUNICIPIO, NM_MUNICIPIO, NR_ZONA, NR_SECAO, QT_APTOS, QT_COMPARECIMENTO, QT_ABSTENCOES, QT_VOTOS_NOMINAIS, QT_VOTOS_BRANCOS, QT_VOTOS_NULOS, QT_VOTOS_LEGENDA, QT_VOTOS_ANULADOS_APU_SEP, NR_LOCAL_VOTACAO, NM_LOCAL_VOTACAO)\nVALUES"

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