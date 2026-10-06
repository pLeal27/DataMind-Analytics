```
Pluviosidade/
├── 2014/
│   ├── INMET_N_AM_A101_MANAUS_01-01-2014_A_31-12-2014.CSV
│   ├── INMET_N_AM_A102_EIRUNEPE_01-01-2014_A_31-12-2014.CSV
│   └── ... (demais estações do ano de 2014)
├── 2018/
│   ├── INMET_N_AM_A101_MANAUS_01-01-2018_A_31-12-2018.CSV
│   ├── INMET_N_AM_A102_EIRUNEPE_01-01-2018_A_31-12-2018.CSV
│   └── ... (demais estações do ano de 2018)
└── 2022/
    ├── INMET_N_AM_A101_MANAUS_01-01-2022_A_31-12-2022.CSV
    ├── INMET_N_AM_A102_EIRUNEPE_01-01-2022_A_31-12-2022.CSV
    └── ... (demais estações do ano de 2022)
```

| Variável | Descrição |
| :--- | :--- |
| `Data` | Data da medição no formato `YYYY-MM-DD` ou `YYYY/MM/DD`. |
| `Hora UTC` | Horário da leitura no formato `HHMM UTC` (Tempo Universal Coordenado). |
| `PRECIPITAÇÃO TOTAL, HORÁRIA` | Volume de chuva acumulado durante a hora anterior (medido em mm). |
| `PRESSAO ATMOSFERICA AO NIVEL DA ESTACAO, HORARIA` | Pressão atmosférica instantânea medida na altitude da estação (medida em mB / hPa). |
| `PRESSÃO ATMOSFERICA MÁX.NA HORA ANT. (AUT)` | Maior valor de pressão atmosférica registrado no intervalo da hora anterior (medido em mB / hPa). |
| `PRESSÃO ATMOSFERICA MÍN.NA HORA ANT. (AUT)` | Menor valor de pressão atmosférica registrado no intervalo da hora anterior (medido em mB / hPa). |
| `RADIACAO GLOBAL` | Radiação solar acumulada por metro quadrado na hora anterior (medida em KJ/m²). |
| `TEMPERATURA DO AR - BULBO SECO, HORARIA` | Temperatura instantânea do ar no momento da leitura (medida em °C). |
| `TEMPERATURA DO PONTO DE ORVALHO` | Temperatura na qual ocorre condensação do vapor d'água no ar (medida em °C). |
| `TEMPERATURA MÁXIMA NA HORA ANT. (AUT)` | Temperatura máxima atingida no intervalo da hora anterior (medida em °C). |
| `TEMPERATURA MÍNIMA NA HORA ANT. (AUT)` | Temperatura mínima atingida no intervalo da hora anterior (medida em °C). |
| `TEMPERATURA ORVALHO MÁX. NA HORA ANT. (AUT)` | Maior temperatura de ponto de orvalho registrada na hora anterior (medida em °C). |
| `TEMPERATURA ORVALHO MÍN. NA HORA ANT. (AUT)` | Menor temperatura de ponto de orvalho registrada na hora anterior (medida em °C). |
| `UMIDADE RELATIVA DO AR, HORARIA` | Umidade relativa do ar instantânea no momento da leitura (medida em %). |
| `UMIDADE RELATIVA DO AR, MÁX. NA HORA ANT. (AUT)` | Maior percentual de umidade relativa registrado na hora anterior (medido em %). |
| `UMIDADE RELATIVA DO AR, MÍN. NA HORA ANT. (AUT)` | Menor percentual de umidade relativa registrado na hora anterior (medido em %). |
| `VENTO, DIREÇÃO HORARIA` | Direção do vento em azimute (medida em graus de 0° a 360°, onde 0° = Norte, 90° = Leste, 180° = Sul, 270° = Oeste). |
| `VENTO, RAJADA MÁXIMA` | Velocidade máxima instantânea (pico) do vento na hora anterior (medida em m/s). |
| `VENTO, VELOCIDADE HORARIA` | Velocidade média do vento registrada na hora (medida em m/s). |
---
