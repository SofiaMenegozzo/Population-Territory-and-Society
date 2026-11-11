## Population, Territory and Society — Spatial Demography of Liguria

> **At a glance** · five applied exercises on official ISTAT data · scale effects, territorial concentration (Hoover, Gini, Lorenz curves), location quotients and maps, log-linear models of interregional migration, segregation indices · Python, R, SPSS, Excel
>
> 📄 Reports are in Italian; each section below summarises the question, the method and the main result in English.

Coursework for *Popolazione, Territorio e Società 1* (BSc Statistics and Information Management, University of Milano-Bicocca, a.y. 2026–27). Most exercises focus on Liguria, a region whose population is concentrated along the coast and in a few urban centres, and on how its foreign population is distributed across the territory.

**Authors:** Sofia Menegozzo, Alessia Cazzulani

---

### 1 · Birth rates and the foreign population (2023)
📁 [`01-birth-rates-and-foreign-population`](01-birth-rates-and-foreign-population)

**Question.** Do birth rates show a *scale effect* when moving from municipalities to provinces, and is the birth rate of Italians different in municipalities with a high share of foreign residents?

**Method.** Data cleaning in Python on the ISTAT 2023 demographic balance for the 234 municipalities; birth rates on mean population; population-weighted means and variances at municipal and provincial level; municipalities split into high/low foreign-incidence groups, using the regional mean (10.15%) and, as a robustness check, the third quartile (11.62%).

**Result.** The weighted mean is unchanged across scales (5.53‰ overall, 10.75‰ for foreigners) while the variance falls about 23-fold for the total population and 27-fold for foreigners — a clear scale effect. The birth rate of Italians is practically the same in high- and low-incidence municipalities (4.94‰ vs 4.93‰ with the quartile threshold, 4.70‰ vs 5.07‰ with the mean); the foreign birth rate is about twice the Italian one, and the gap is wider where foreigners are more numerous.

### 2 · Territorial concentration of the population (2023)
📁 [`02-territorial-concentration`](02-territorial-concentration)

**Question.** How concentrated is the population of Liguria relative to the area of its municipalities, and is the foreign population more concentrated?

**Method.** Municipalities ordered by density; Hoover index, Gini concentration ratio and Lorenz curves (R/ggplot2), computed in SPSS and Excel; empirical check that the Hoover index equals the maximum gap between cumulative shares of population and area.

| | Hoover index | Gini ratio |
|---|---:|---:|
| Total residents | 60.3% | 0.746 |
| Foreign residents | 66.0% | 0.791 |

**Result.** About 60% of residents (66% of foreigners) would have to move to obtain a uniform distribution over the territory. Genoa alone holds 37% of residents and 41% of foreign residents, consistent with a mountainous region where settlement crowds along the coast.

### 3 · Location quotients of foreign communities (2019–2021)
📁 [`03-location-quotients`](03-location-quotients)

**Question.** Where do the main foreign communities live within Liguria, and how did their distribution change between 1 January 2019 and 1 January 2021?

**Method.** Communities covering 75% of foreign residents; location quotients computed both on total residents and on foreign residents; classification of change between the two dates; municipal maps for the Moroccan community.

**Result.** Albanian, Romanian and Ukrainian residents are spread over more than 170 municipalities, whereas Ecuadorian and Dominican residents are concentrated in single cities (76% of Ecuadorians live in Genoa, 67% of Dominicans in La Spezia). Moroccans are under-represented in Genoa (LQ 0.90) despite being most numerous there, and strongly over-represented (LQ ≥ 4) in the Albenga plain and Val Neva — a pattern possibly linked to farm and nursery labour demand and cheaper housing.

### 4 · Interregional residential mobility (2015 vs 2025)
📁 [`04-interregional-migration`](04-interregional-migration)

**Question.** Has the structure of residence transfers between Italian regions changed over ten years?

**Method.** Origin–destination tables for 2015 and 2025; multiplicative decomposition (total-sum reference coding) into overall level, origin, destination and association components; χ² tests of independence and quasi-independence.

**Result.** The structure is very stable: 75.6% of moves stay within the same region in both years, and total transfers grow by 13.3% evenly across internal and interregional moves. Lombardy gains weight as both origin and destination. Independence and quasi-independence are both rejected: the diagonal explains most of the dependence, and the remainder comes from strong, stable links between neighbouring regions.

### 5 · School segregation of foreign students (2022/23)
📁 [`05-school-segregation`](05-school-segregation)

**Question.** Are foreign upper-secondary students distributed differently from all students across the four provinces of Liguria, by type of school and gender?

**Method.** Segregation (dissimilarity), Gini, entropy, exposure and spatial proximity indices for every combination of school type (licei, technical, vocational) and gender.

**Result.** Segregation is very low: 0.027 across all schools and never above 0.071. It is lowest in technical institutes (0.017) and highest in licei and vocational schools, and gender differences are small (≤ 0.015). At provincial scale, foreign students are distributed much like the student population as a whole.

---

### Reading presentation · Greaves (2019), *Climate Change and Optimum Population*
📁 [`greaves-climate-change-and-optimum-population`](greaves-climate-change-and-optimum-population)

Slides and a written summary (Italian) of Hilary Greaves' article in *The Monist*. Its central point: global warming depends on cumulative emissions rather than on the emission rate, so a smaller population helps the climate only for subtler and less conclusive reasons than is often assumed.

---

### Repository structure
```
01-birth-rates-and-foreign-population/   report_E1.pdf · data_cleaning.py
02-territorial-concentration/            report_E2.pdf · lorenz_curves.R · data/ (Excel + SPSS .sav files)
03-location-quotients/                   report_E3.pdf · data/ (location quotients, map data)
04-interregional-migration/              report_E4.pdf · data/ (origin–destination tables)
05-school-segregation/                   report_E5.pdf · data/ (enrolments and indices)
greaves-climate-change-and-optimum-population/   slides.pptx · summary.pdf
```

**Data sources:** ISTAT (demo.istat.it demographic balances, resident population by citizenship, municipal areas and administrative boundaries, residence transfers, school enrolments). Raw ISTAT downloads are not included; the workbooks contain the cleaned data and all calculations.

**Tools:** Python (pandas) · R (ggplot2, readxl) · IBM SPSS Statistics · Excel
