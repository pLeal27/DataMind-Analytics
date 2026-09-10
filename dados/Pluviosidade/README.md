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

| Nome da Coluna | Tipo de Dado | Unidade | Descrição |
| :--- | :--- | :--- | :--- |
| **Data** | Data | `YYYY-MM-DD` / `YYYY/MM/DD` | Data da medição. |
| **Hora UTC** | Texto / Hora | `HHMM UTC` | Horário da leitura em fuso horário UTC (Tempo Universal Coordenado). |
| **PRECIPITAÇÃO TOTAL, HORÁRIA** | Numérico | mm | Volume de chuva acumulado durante a hora anterior. |
| **PRESSAO ATMOSFERICA AO NIVEL DA ESTACAO, HORARIA** | Numérico | mB (hPa) | Pressão atmosférica instantânea medida na altitude da estação. |
| **PRESSÃO ATMOSFERICA MÁX.NA HORA ANT. (AUT)** | Numérico | mB (hPa) | Maior valor de pressão atmosférica registrado no intervalo da hora. |
| **PRESSÃO ATMOSFERICA MÍN.NA HORA ANT. (AUT)** | Numérico | mB (hPa) | Menor valor de pressão atmosférica registrado no intervalo da hora. |
| **RADIACAO GLOBAL** | Numérico | KJ/m² | Radiação solar acumulada por metro quadrado na hora anterior. |
| **TEMPERATURA DO AR - BULBO SECO, HORARIA** | Numérico | °C | Temperatura instantânea do ar no momento da leitura. |
| **TEMPERATURA DO PONTO DE ORVALHO** | Numérico | °C | Temperatura na qual ocorre condensação do vapor d'água no ar. |
| **TEMPERATURA MÁXIMA NA HORA ANT. (AUT)** | Numérico | °C | Temperatura máxima atingida no intervalo da hora anterior. |
| **TEMPERATURA MÍNIMA NA HORA ANT. (AUT)** | Numérico | °C | Temperatura mínima atingida no intervalo da hora anterior. |
| **TEMPERATURA ORVALHO MÁX. NA HORA ANT. (AUT)** | Numérico | °C | Maior temperatura de ponto de orvalho na hora anterior. |
| **TEMPERATURA ORVALHO MÍN. NA HORA ANT. (AUT)** | Numérico | °C | Menor temperatura de ponto de orvalho na hora anterior. |
| **UMIDADE RELATIVA DO AR, HORARIA** | Numérico | % | Umidade relativa do ar instantânea no momento da leitura. |
| **UMIDADE RELATIVA DO AR, MÁX. NA HORA ANT. (AUT)**| Numérico | % | Maior percentual de umidade relativa na hora anterior. |
| **UMIDADE RELATIVA DO AR, MÍN. NA HORA ANT. (AUT)**| Numérico | % | Menor percentual de umidade relativa na hora anterior. |
| **VENTO, DIREÇÃO HORARIA** | Numérico | Graus (0°–360°) | Direção do vento em azimute (0° = Norte, 90° = Leste, 180° = Sul, 270° = Oeste). |
| **VENTO, RAJADA MÁXIMA** | Numérico | m/s | Velocidade máxima instantânea (pico) do vento na hora anterior. |
| **VENTO, VELOCIDADE HORARIA** | Numérico | m/s | Velocidade média do vento registrada na hora. |

---
