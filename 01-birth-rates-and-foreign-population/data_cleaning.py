"""Exercise 1 - data cleaning.

Keeps the variables needed to compute birth rates from the ISTAT 2023
demographic balance (demo.istat.it) and selects the municipalities of Liguria
(province codes 8 Imperia, 9 Savona, 10 Genova, 11 La Spezia).

Input:  p2.csv (resident population, total) and p3.csv (foreign residents),
        semicolon-separated as downloaded from ISTAT
Output: p2_pulito.csv and p3_pulito.csv
"""
import pandas as pd

COLUMNS = [
    "Codice Provincia",
    "Provincia",
    "Codice comune",
    "Comune",
    "Popolazione censita al 1° gennaio - Totale",
    "Nati vivi - Totale",
    "Popolazione censita al 31 dicembre - Totale",
]
LIGURIA = [8, 9, 10, 11]
FILES = {"p2.csv": "p2_pulito.csv",   # total resident population
         "p3.csv": "p3_pulito.csv"}   # foreign resident population

for source, target in FILES.items():
    df = pd.read_csv(source, sep=";", encoding="utf-8")
    df = df[COLUMNS]
    df = df[df["Codice Provincia"].isin(LIGURIA)]
    df.to_csv(target, sep=";", index=False, encoding="utf-8")
    print(f"{target}: {len(df)} municipalities")
