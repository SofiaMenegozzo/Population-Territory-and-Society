# Population, Territory and Society — Spatial Demography of Liguria

**Five applied exercises on ISTAT data · scale effects, concentration indices, location quotients, log-linear migration models, segregation indices · Python, R, SPSS, Excel**
 Each exercise has a full report in Italian; this page summarises them in English.

## Research question
How is the population of Liguria  distributed across the territory, and how does that distribution shape demographic indicators?  

Question:
1 Do birth rates show a scale effect, and is Italian fertility different where more foreigners live? 
2  How concentrated is the population relative to the area of municipalities? 
3 Where do the main foreign communities settle, and did this change in 2019–2021?  
4  Has the structure of residence transfers between Italian regions changed in ten years? 
5 Are foreign upper-secondary students segregated across Liguria's provinces?  

## Data

All data come from **ISTAT**:
- demographic balance of the resident and foreign population by municipality, 2023 (demo.istat.it)  
- municipal land area and administrative boundaries  
- foreign residents by municipality and citizenship, 1 January 2019 and 2021 
- residence transfers between regions, 2015 and 2025  
- upper-secondary school enrolments by province, citizenship, gender and school type, a.y. 2022/23  

Liguria has 234 municipalities in four provinces (Imperia, Savona, Genoa, La Spezia). Cleaned data and all calculations are in each exercise's `data/` folder; raw ISTAT downloads are not included.

## Methods and Tools 
1 Birth rates on mean population; population-weighted means and variances at municipal vs provincial level; high/low foreign-incidence groups using two thresholds  
2 Municipalities ordered by density; Hoover index, Gini concentration ratio, Lorenz curves; check that Hoover = maximum gap between cumulative shares 
3 Location quotients on total and on foreign residents for communities covering 75% of foreigners; classification of change 2019–2021; municipal maps  
4 Origin–destination tables; multiplicative decomposition; χ² tests of independence and quasi-independence 
5 Dissimilarity, Gini, entropy, exposure and spatial proximity indices by school type and gender 

The analyses were conducted using several software tools. Python was primarily used for the initial cleaning andpreprocessing of the datasets, while R and SPSS (provided under a university licence by the University of Milano-Bicocca– UNIMIB) were used for the statistical analyses. QGIS was employed to create territorial maps, and Excel was used toorganise and present the data in tabular format.

## Key results

1 Moving from municipalities to provinces leaves the weighted mean birth rate unchanged while the variance falls about 23-fold. The Italian birth rate is practically the same in high- and low-incidence municipalities, whereas the foreign rate is about twice as high and rises where foreigners are more numerous.
<p align="center"><img src="figures/pts_birth.png" width="520" alt="Birth rate of Italians and foreigners by foreign-incidence group"></p>

2 About 60% of residents (Hoover index), and 66% of foreign residents, would have to move to obtain a uniform distribution over the territory; the Gini ratios are 0.746 and 0.791. Genoa alone holds 37% of residents and 41% of foreigners.
<p align="center"><img src="figures/pts_lorenz.png" width="400" alt="Lorenz curves of population against area"></p>

3 Albanian, Romanian and Ukrainian residents are spread over 170+ municipalities, while 76% of Ecuadorians live in Genoa; Moroccans are over-represented in the farming areas of the Albenga plain. Interregional mobility is stable over 2015–2025, and the segregation of foreign students between provinces is very low.

## Also in this repository
Slides and written summary (Italian) of a class presentation on Hilary Greaves (2019), *Climate Change and Optimum Population*, *The Monist*. The central argument is that global warming depends on cumulative emissions rather than the rate of emissions. Consequently, a smaller population affects climate change for more nuanced and less conclusive reasons than is often assumed.

## Repository structure

```
01-birth-rates-and-foreign-population/   report_E1.pdf · data_cleaning.py
02-territorial-concentration/            report_E2.pdf · lorenz_curves.R · data/ (Excel + SPSS)
03-location-quotients/                   report_E3.pdf · data/
04-interregional-migration/              report_E4.pdf · data/
05-school-segregation/                   report_E5.pdf · data/
greaves-climate-change-and-optimum-population/   slides.pptx · summary.pdf
figures/                                 charts used in this README
```

**Authors:** Sofia Menegozzo, Alessia Cazzulani — *Popolazione, Territorio e Società 1*, BSc Statistics and Information Management, University of Milano-Bicocca, a.y. 2026–27

