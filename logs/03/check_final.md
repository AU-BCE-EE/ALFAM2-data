---
title: 'Combined data error checks'
---

Get unique values and ranges for all variables.


```r
for (i in 1:ncol(pdat.comb)) {

  printVarSumm(pdat.comb[, i])

}
```

```
## 
## -----------------------------------------------------
## inst  numeric, range: 101 305 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## eid  numeric, range: 1 388 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## pid  numeric, range: 1 2231 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## pmid  numeric, range: 1 2235 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## uptake  numeric, range: 1 3 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## proj  character/factor, unique (first 10): 
##  VLAHR
## 
## 
## 
## 1
## 
## 2
## 
## 3
## 
## 4
## 
## 1994
## 
## 1997a
## 
## 1997sl
## 
## 1999 
## Missing values: 195 
## 
## 
## -----------------------------------------------------
## exper  character/factor, unique (first 10): 
##  1_DR_p1
## 
## 1_DR_p2
## 
## 1_DR_p3
## 
## 1_DR_p4
## 
## 1_GT_p1
## 
## 1_GT_p2
## 
## 1_GT_p3
## 
## 1_GT_p4
## 
## 1
## 
## 2 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## exper2  numeric, range: 1 54 
## Missing values: 1435 
## 
## 
## -----------------------------------------------------
## institute  character/factor, unique (first 10): 
##  ADAS
## 
## AUN
## 
## CRPA
## 
## DIAS
## 
## IGER
## 
## IMAG
## 
## IUL/FAT
## 
## JTI
## 
## AAFC
## 
## ADAS-RR 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## country  character/factor, unique (first 10): 
##  UK
## 
## NO
## 
## IT
## 
## DK
## 
## NL
## 
## CH
## 
## SE
## 
## CA
## 
## DE
## 
## FR 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## submitter  character/factor, unique (first 10): 
##  NA
## 
## Sommer Sven Gjedde
## 
## Pedersen, Johanna
## 
## Jesper Nørlem Kamp
## 
## Massimo Zilio, Fabrizio Adani
## 
## Marco Carozzi
## 
## Ester Scotto di Perta 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## file  character/factor, unique (first 10): 
##  ALFAM1.xlsx
## 
## ALFAM2_Chantigny_2000.xlsx
## 
## ALFAM2_Chantigny_2004_2005.xlsx
## 
## ALFAM2_ADAS_RRes_v2.xlsx
## 
## Bittman ALFAM2 v5.xlsx
## 
## ALFAM2_AT.xlsx
## 
## ALFAM2_AU_v5.xlsx
## 
## ALFAM2 CAU-LU cps and micromet v5.xlsx
## 
## ALFAM2 CAU-LU FTIR v2.xlsx
## 
## ALFAM2_Switzerland_v2.xlsx 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## first.row.in.file.int  numeric, range: 5 5969 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## last.row.in.file.int  numeric, range: 10 5975 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## row.in.file.plot  numeric, range: 5 68 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## pub.id  character/factor, unique (first 10): 
##  NA
## 
## 1
## 
## 3
## 
## 2
## 
## N/A
## 
## 
## 
## 2,3
## 
## 4
## 
## 2+3
## 
## 5 
## Missing values: 762 
## 
## 
## -----------------------------------------------------
## pub.info  character/factor, unique (first 10): 
##  NA
## 
## Chantigny, M. H., Rochette, P., Angers, D. A., Massé, D., Côté, D. (2004). Ammonia volatilization and selected soil characteristics following application of anaerobically digested pig slurry. Soil Sci. Soc. Am. J. 68: 306-212. doi:10.2136/sssaj2004.3060
## 
## Chantigny, M. H., Angers, D. A., Rochette, P., Bélanger, G., Massé, D., & Côté, D. (2007). Gaseous nitrogen emissions and forage nitrogen uptake on soils fertilized with raw and treated swine manure. Journal of Environmental Quality, 36(6), 1864\u20131872.
## 
## Chantigny, M.H., et al. 2009. Ammonia volatilization following surface application of raw and treated liquid swine manure. Nutr. Cycl. Agroecosyst. 85: 275-286. doi: 10.1007/s10705-009-9266-7
## 
## Bhandral, R., Bittman, S., Kowalenko, C.G., Buckley, K.E., Chantigny, M.H., Hunt, D.E., Bounaix, F., and Friesen, A.J. (2009). "Enhancing soil infiltration reduces gaseous emissions and improves N uptake from applied dairy slurry.", Journal of Environmental Quality, 38(4), pp. 1372-1382. doi : 10.2134/jeq2008.0287
## 
## Bittman, S., van Vliet, L. J. P., Kowalenko, C. G., McGinn, S., Hunt, D. E., Bounaix, F., (2005) "Surface-Banding Liquid Manure over Aeration Slots."  Agron. J.  7:1304–1313.  doi:10.2134/agronj2004.0277
## 
## Misselbrooke, T.H.; Hansen, M.N. 2001. Field evaluation of the equilibrium concentration technique (JTI method) for measuring ammonia emission form land spread manure or fertiliser. Atmospheric Environment 35: 3761-3768.
## 
## Hansen M.N. and Birkmose T.S. 2005. Rapid incorporation of solid manure – effects on ammonia emission and economy. (Hurtig nedmuldning af fast husdyrgødning – effekter på ammoniakfordampning og økonomi) (In Danish). Grøn Viden Markbrug No. 311, May  2005. 8 pages
## 
## Hansen, M.N.; Sommer, S.G.; Madsen, N.P. 2003. Reduction of ammonia emission by shallow slurry injection: Injection efficiency and additional energy demand. Journal of Environmental Quality. 32: 1099-1104.
## 
## Hansen M.N, Birkmose, T.S., Mortensen, B., Skaaning, K. 2004. Environmental impact of anaerobic digestion and separation of pig slurry – effects on odour, ammonia volatilisation and plant utilisation. (Miljøeffekter af bioforgasning og separering af gylle – indflydelse på lugt, ammoniakfordampning og planteudnyttelse). Grøn Viden, Markbrug No. 296. 6 pages. 
## Missing values: 1005 
## 
## 
## -----------------------------------------------------
## lat  numeric, range: 39.033 58.38 
## Missing values: 955 
## 
## 
## -----------------------------------------------------
## long  numeric, range: -121.76 14.426 
## Missing values: 955 
## 
## 
## -----------------------------------------------------
## topo  character/factor, unique (first 10): 
##  NA
## 
## Flat
## 
## Hilly
## 
## flat
## 
## hilly
## 
## slightly hilly
## 
## Field flat, surrounding hilly 
## Missing values: 949 
## 
## 
## -----------------------------------------------------
## field  character/factor, unique (first 10): 
##  NA
## 
## 2
## 
## Sandy loam
## 
## loam
## 
## 1
## 
## Arable
## 
## Grass
## 
## Rowden drainage plots
## 
## Fld25
## 
## FLd12_13 
## Missing values: 1042 
## 
## 
## -----------------------------------------------------
## plot  character/factor, unique (first 10): 
##  1
## 
## 10
## 
## 2
## 
## 3
## 
## 4
## 
## 5
## 
## 6
## 
## 7
## 
## 8
## 
## 9 
## Missing values: 126 
## 
## 
## -----------------------------------------------------
## plot.area  numeric, range: 0.2 260000 
## Missing values: 803 
## 
## 
## -----------------------------------------------------
## treat  character/factor, unique (first 10): 
##  1
## 
## 5
## 
## 3
## 
## 4
## 
## 2
## 
## 6
## 
## 7
## 
## 8
## 
## 9
## 
## 10 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## rep  character/factor, unique (first 10): 
##  1
## 
## 5
## 
## 3
## 
## 4
## 
## 2
## 
## NA
## 
## 0
## 
## 6
## 
## 7
## 
## 8 
## Missing values: 394 
## 
## 
## -----------------------------------------------------
## rep2  numeric, range: 1 7 
## Missing values: 1435 
## 
## 
## -----------------------------------------------------
## n.ints  numeric, range: 1 1310 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## t.start.p  something else! POSIXct 
## Missing values: 
## 
## -----------------------------------------------------
## t.end.p  something else! POSIXct 
## Missing values: 
## 
## -----------------------------------------------------
## dt1  numeric, range: 0.15 145 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## dt.min  numeric, range: 0.15 145 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## dt.max  numeric, range: 0.25 169 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## ct.min  numeric, range: 0.15 145 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## ct.max  numeric, range: 1.0167 508 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## meas.tech  character/factor, unique (first 10): 
##  wt
## 
## micro met
## 
## chamber
## 
## ihf
## 
## zinst
## 
## cps
## 
## bls
## 
## agm
## 
## fides
## 
## ec 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## meas.tech2  character/factor, unique (first 10): 
##  wt
## 
## micro met
## 
## chamber
## 
## cps 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## meas.tech.orig  character/factor, unique (first 10): 
##  Wind tunnel
## 
## Micro met
## 
## Dynamic chamber
## 
## IHF
## 
## ZINST
## 
## cps
## 
## ZINST/bls
## 
## open path FTIR
## 
## bLS: WindTrax
## 
## AGM 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## meas.tech.det  character/factor, unique (first 10): 
##  NA
## 
## Leuning passive flux sampler
## 
## CRDS_1m
## 
## CRDS_2m
## 
## MD
## 
## ALPHA passive samplers plus Windtrax dispersion model
## 
## 150 cm height
## 
## 30, 70, 150 cm height 
## Missing values: 2215 
## 
## 
## -----------------------------------------------------
## j.NH31  numeric, range: -1.453 53.323 
## Missing values: 3 
## 
## 
## -----------------------------------------------------
## j.rel1  numeric, range: -0.013169 1.1931 
## Missing values: 37 
## 
## 
## -----------------------------------------------------
## e.1  numeric, range: -1.453 35.626 
## Missing values: 1514 
## 
## 
## -----------------------------------------------------
## e.4  numeric, range: -0.44 182.99 
## Missing values: 304 
## 
## 
## -----------------------------------------------------
## e.6  numeric, range: -0.40226 235.14 
## Missing values: 168 
## 
## 
## -----------------------------------------------------
## e.12  numeric, range: -1.1896 266.77 
## Missing values: 143 
## 
## 
## -----------------------------------------------------
## e.24  numeric, range: -0.321 328.35 
## Missing values: 116 
## 
## 
## -----------------------------------------------------
## e.48  numeric, range: -0.486 556.75 
## Missing values: 271 
## 
## 
## -----------------------------------------------------
## e.72  numeric, range: -0.873 651 
## Missing values: 595 
## 
## 
## -----------------------------------------------------
## e.96  numeric, range: -1.1095 231.38 
## Missing values: 1213 
## 
## 
## -----------------------------------------------------
## e.168  numeric, range: 3.831 38.967 
## Missing values: 2182 
## 
## 
## -----------------------------------------------------
## e.final  numeric, range: -12.18 654.87 
## Missing values: 42 
## 
## 
## -----------------------------------------------------
## e.cum.1  numeric, range: -0.0091828 1.0423 
## Missing values: 2217 
## 
## 
## -----------------------------------------------------
## e.cum.4  numeric, range: -0.047383 20.823 
## Missing values: 1905 
## 
## 
## -----------------------------------------------------
## e.cum.6  numeric, range: -0.058869 26.369 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## e.cum.12  numeric, range: -0.14069 36.811 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## e.cum.24  numeric, range: 0 45.78 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## e.cum.48  numeric, range: 0 61.386 
## Missing values: 1900 
## 
## 
## -----------------------------------------------------
## e.cum.72  numeric, range: 0 65.131 
## Missing values: 1900 
## 
## 
## -----------------------------------------------------
## e.cum.96  numeric, range: 0.7437 66.63 
## Missing values: 2015 
## 
## 
## -----------------------------------------------------
## e.cum.168  numeric, range: 3.831 38.967 
## Missing values: 2182 
## 
## 
## -----------------------------------------------------
## e.cum.final  numeric, range: 0 68.463 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## e.rel.1  numeric, range: -0.013169 0.6082 
## Missing values: 1520 
## 
## 
## -----------------------------------------------------
## e.rel.4  numeric, range: -0.0059949 3.2046 
## Missing values: 322 
## 
## 
## -----------------------------------------------------
## e.rel.6  numeric, range: -0.0053061 3.9345 
## Missing values: 196 
## 
## 
## -----------------------------------------------------
## e.rel.12  numeric, range: -0.012519 4.3729 
## Missing values: 173 
## 
## 
## -----------------------------------------------------
## e.rel.24  numeric, range: -0.0022194 5.1649 
## Missing values: 146 
## 
## 
## -----------------------------------------------------
## e.rel.48  numeric, range: -0.0018363 5.6564 
## Missing values: 297 
## 
## 
## -----------------------------------------------------
## e.rel.72  numeric, range: -0.0073379 5.8617 
## Missing values: 613 
## 
## 
## -----------------------------------------------------
## e.rel.96  numeric, range: -0.010592 5.8726 
## Missing values: 1219 
## 
## 
## -----------------------------------------------------
## e.rel.168  numeric, range: 0.10106 0.55663 
## Missing values: 2182 
## 
## 
## -----------------------------------------------------
## e.rel.final  numeric, range: -0.11627 6.8612 
## Missing values: 76 
## 
## 
## -----------------------------------------------------
## clay  numeric, range: 2.4 61.5 
## Missing values: 678 
## 
## 
## -----------------------------------------------------
## silt  numeric, range: 2.4 71.3 
## Missing values: 796 
## 
## 
## -----------------------------------------------------
## sand  numeric, range: 7 92.3 
## Missing values: 774 
## 
## 
## -----------------------------------------------------
## oc  numeric, range: 0.9 13.7 
## Missing values: 918 
## 
## 
## -----------------------------------------------------
## soil.type  character/factor, unique (first 10): 
##  clay
## 
## sand
## 
## loam
## 
## silty.clay.loam
## 
## organic
## 
## sandy.clay.loam
## 
## clay.loam
## 
## sandy.loam
## 
## sandy loam
## 
## silty clay loam 
## Missing values: 229 
## 
## 
## -----------------------------------------------------
## soil.type2  character/factor, unique (first 10): 
##  clay
## 
## sand
## 
## loam
## 
## organic
## 
## NA 
## Missing values: 336 
## 
## 
## -----------------------------------------------------
## soil.water  numeric, range: 0.005 1 
## Missing values: 1017 
## 
## 
## -----------------------------------------------------
## soil.water.v  numeric, range: 20.39 20.89 
## Missing values: 2231 
## 
## 
## -----------------------------------------------------
## soil.moist  character/factor, unique (first 10): 
##  NA
## 
## dry
## 
## wet
## 
## wet frozen
## 
## Dry
## 
## Wet 
## Missing values: 1152 
## 
## 
## -----------------------------------------------------
## soil.ph  numeric, range: 4.4 8.21 
## Missing values: 532 
## 
## 
## -----------------------------------------------------
## soil.dens  numeric, range: 0.8 1.61 
## Missing values: 1090 
## 
## 
## -----------------------------------------------------
## crop.res  character/factor, unique (first 10): 
##  NA
## 
## No
## 
## Yes
## 
##  
## Missing values: 1160 
## 
## 
## -----------------------------------------------------
## till  character/factor, unique (first 10): 
##  No
## 
## Yes 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## air.temp.1  numeric, range: 2.9 25.675 
## Missing values: 2217 
## 
## 
## -----------------------------------------------------
## air.temp.4  numeric, range: 1 32.62 
## Missing values: 1905 
## 
## 
## -----------------------------------------------------
## air.temp.6  numeric, range: -2.9688 35 
## Missing values: 318 
## 
## 
## -----------------------------------------------------
## air.temp.12  numeric, range: -2.8371 35.505 
## Missing values: 288 
## 
## 
## -----------------------------------------------------
## air.temp.24  numeric, range: -4.1838 28.927 
## Missing values: 262 
## 
## 
## -----------------------------------------------------
## air.temp.48  numeric, range: -3.9696 29.125 
## Missing values: 263 
## 
## 
## -----------------------------------------------------
## air.temp.72  numeric, range: -3.5854 29.75 
## Missing values: 218 
## 
## 
## -----------------------------------------------------
## air.temp.96  numeric, range: 0.73273 28.158 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## air.temp.168  numeric, range: 1.0756 28.158 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## air.temp.mn  numeric, range: -3.5964 29.75 
## Missing values: 226 
## 
## 
## -----------------------------------------------------
## air.temp.z  character/factor, unique (first 10): 
##  NA
## 
## 2
## 
## 0.3
## 
## 0.5
## 
## 1
## 
## 10
## 
## 0
## 
## 0.015
## 
## 1.5
## 
## 1.8 
## Missing values: 302 
## 
## 
## -----------------------------------------------------
## soil.temp.1  numeric, range: 5.2 17.8 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.4  numeric, range: 4.31 25.99 
## Missing values: 2025 
## 
## 
## -----------------------------------------------------
## soil.temp.6  numeric, range: 1.5 34.953 
## Missing values: 1084 
## 
## 
## -----------------------------------------------------
## soil.temp.12  numeric, range: 1.5 30.884 
## Missing values: 1070 
## 
## 
## -----------------------------------------------------
## soil.temp.24  numeric, range: 1.5 26.815 
## Missing values: 1074 
## 
## 
## -----------------------------------------------------
## soil.temp.48  numeric, range: 1.4896 25.897 
## Missing values: 1082 
## 
## 
## -----------------------------------------------------
## soil.temp.72  numeric, range: 1.4932 26.062 
## Missing values: 1037 
## 
## 
## -----------------------------------------------------
## soil.temp.96  numeric, range: 2.4697 19.261 
## Missing values: 2025 
## 
## 
## -----------------------------------------------------
## soil.temp.168  numeric, range: 2.8478 19.261 
## Missing values: 2025 
## 
## 
## -----------------------------------------------------
## soil.temp.mn  numeric, range: 0.28063 27.404 
## Missing values: 1045 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.1  numeric, range: 2.625 19.175 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.4  numeric, range: 1.7188 16.619 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.6  numeric, range: 1.3667 16.175 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.12  numeric, range: 1.1292 16.515 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.24  numeric, range: 1.3427 15.217 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.48  numeric, range: -0.58073 15.307 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.72  numeric, range: -0.081597 15.765 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.96  numeric, range: 0.13099 16.147 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.168  numeric, range: 0.45268 15.568 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.mn  numeric, range: 2.592 21.095 
## Missing values: 2225 
## 
## 
## -----------------------------------------------------
## soil.temp.z  character/factor, unique (first 10): 
##  NA
## 
## 0.01
## 
## 0.05
## 
## 0.15
## 
## 0.1
## 
## 0.03
## 
## 0
## 
## 0.02
## 
## 0.075
## 
## 0.025 
## Missing values: 997 
## 
## 
## -----------------------------------------------------
## rad.1  numeric, range: 0 200.5 
## Missing values: 2221 
## 
## 
## -----------------------------------------------------
## rad.4  numeric, range: 0 324.44 
## Missing values: 2221 
## 
## 
## -----------------------------------------------------
## rad.6  numeric, range: 0 899 
## Missing values: 933 
## 
## 
## -----------------------------------------------------
## rad.12  numeric, range: 0 823.03 
## Missing values: 917 
## 
## 
## -----------------------------------------------------
## rad.24  numeric, range: 0 823.03 
## Missing values: 914 
## 
## 
## -----------------------------------------------------
## rad.48  numeric, range: 0 458.48 
## Missing values: 918 
## 
## 
## -----------------------------------------------------
## rad.72  numeric, range: 0 409.02 
## Missing values: 918 
## 
## 
## -----------------------------------------------------
## rad.96  numeric, range: 22.203 305.41 
## Missing values: 2215 
## 
## 
## -----------------------------------------------------
## rad.168  numeric, range: 18.092 309.48 
## Missing values: 2215 
## 
## 
## -----------------------------------------------------
## rad.mn  numeric, range: 0 409.02 
## Missing values: 923 
## 
## 
## -----------------------------------------------------
## wind.1  numeric, range: 0.06115 3.228 
## Missing values: 2217 
## 
## 
## -----------------------------------------------------
## wind.4  numeric, range: 0.1 5 
## Missing values: 1939 
## 
## 
## -----------------------------------------------------
## wind.6  numeric, range: 0.1 16.022 
## Missing values: 231 
## 
## 
## -----------------------------------------------------
## wind.12  numeric, range: 0.1 16.022 
## Missing values: 203 
## 
## 
## -----------------------------------------------------
## wind.24  numeric, range: 0.1 9.5 
## Missing values: 179 
## 
## 
## -----------------------------------------------------
## wind.48  numeric, range: 0.1 10.991 
## Missing values: 179 
## 
## 
## -----------------------------------------------------
## wind.72  numeric, range: 0.1 10.991 
## Missing values: 128 
## 
## 
## -----------------------------------------------------
## wind.96  numeric, range: 0.1 4.0546 
## Missing values: 1933 
## 
## 
## -----------------------------------------------------
## wind.168  numeric, range: 0.1 3.9372 
## Missing values: 1933 
## 
## 
## -----------------------------------------------------
## wind.mn  numeric, range: 0.10794 19.939 
## Missing values: 101 
## 
## 
## -----------------------------------------------------
## wind.z  numeric, range: 0.125 10 
## Missing values: 300 
## 
## 
## -----------------------------------------------------
## wind.2m.1  numeric, range: 0.06497 3.228 
## Missing values: 2220 
## 
## 
## -----------------------------------------------------
## wind.2m.4  numeric, range: 0.1 3.835 
## Missing values: 2160 
## 
## 
## -----------------------------------------------------
## wind.2m.6  numeric, range: 0.1 16.347 
## Missing values: 454 
## 
## 
## -----------------------------------------------------
## wind.2m.12  numeric, range: 0.1 16.347 
## Missing values: 426 
## 
## 
## -----------------------------------------------------
## wind.2m.24  numeric, range: 0.1 9.6927 
## Missing values: 404 
## 
## 
## -----------------------------------------------------
## wind.2m.48  numeric, range: 0.1 11.214 
## Missing values: 408 
## 
## 
## -----------------------------------------------------
## wind.2m.72  numeric, range: 0.1 11.214 
## Missing values: 357 
## 
## 
## -----------------------------------------------------
## wind.2m.96  numeric, range: 0.1 2.9811 
## Missing values: 2157 
## 
## 
## -----------------------------------------------------
## wind.2m.168  numeric, range: 0.1 2.9981 
## Missing values: 2157 
## 
## 
## -----------------------------------------------------
## wind.2m.mn  numeric, range: 0.10794 20.343 
## Missing values: 330 
## 
## 
## -----------------------------------------------------
## wind.loc  character/factor, unique (first 10): 
##  NA
## 
## Plot
## 
## Field
## 
## Nearest station
## 
## on site
## 
## 
## 
## plot 
## Missing values: 1153 
## 
## 
## -----------------------------------------------------
## rain.1  numeric, range: 0 3.5 
## Missing values: 1737 
## 
## 
## -----------------------------------------------------
## rain.4  numeric, range: 0 0 
## Missing values: 1905 
## 
## 
## -----------------------------------------------------
## rain.6  numeric, range: 0 15 
## Missing values: 766 
## 
## 
## -----------------------------------------------------
## rain.12  numeric, range: 0 15 
## Missing values: 736 
## 
## 
## -----------------------------------------------------
## rain.24  numeric, range: 0 36.1 
## Missing values: 718 
## 
## 
## -----------------------------------------------------
## rain.48  numeric, range: 0 55.9 
## Missing values: 710 
## 
## 
## -----------------------------------------------------
## rain.72  numeric, range: 0 55.9 
## Missing values: 655 
## 
## 
## -----------------------------------------------------
## rain.96  numeric, range: 0 2.723 
## Missing values: 2015 
## 
## 
## -----------------------------------------------------
## rain.168  numeric, range: 0 0 
## Missing values: 2182 
## 
## 
## -----------------------------------------------------
## rain.tot  numeric, range: 0 89.8 
## Missing values: 626 
## 
## 
## -----------------------------------------------------
## rain.rate.1  numeric, range: 0 3.5 
## Missing values: 1737 
## 
## 
## -----------------------------------------------------
## rain.rate.4  numeric, range: 0 1.95 
## Missing values: 1905 
## 
## 
## -----------------------------------------------------
## rain.rate.6  numeric, range: 0 2.719 
## Missing values: 766 
## 
## 
## -----------------------------------------------------
## rain.rate.12  numeric, range: 0 2.719 
## Missing values: 736 
## 
## 
## -----------------------------------------------------
## rain.rate.24  numeric, range: 0 1.7499 
## Missing values: 718 
## 
## 
## -----------------------------------------------------
## rain.rate.48  numeric, range: 0 1.231 
## Missing values: 709 
## 
## 
## -----------------------------------------------------
## rain.rate.72  numeric, range: 0 0.80734 
## Missing values: 654 
## 
## 
## -----------------------------------------------------
## rain.rate.96  numeric, range: 0 0.29792 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## rain.rate.168  numeric, range: 0 0.22679 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## rain.rate.mn  numeric, range: 0 0.60043 
## Missing values: 626 
## 
## 
## -----------------------------------------------------
## rh.1  numeric, range: 59.8 91.9 
## Missing values: 2221 
## 
## 
## -----------------------------------------------------
## rh.4  numeric, range: 22.6 92.7 
## Missing values: 2219 
## 
## 
## -----------------------------------------------------
## rh.6  numeric, range: 22.6 100.5 
## Missing values: 1344 
## 
## 
## -----------------------------------------------------
## rh.12  numeric, range: 26.134 100 
## Missing values: 1321 
## 
## 
## -----------------------------------------------------
## rh.24  numeric, range: 34.523 100 
## Missing values: 1304 
## 
## 
## -----------------------------------------------------
## rh.48  numeric, range: 32.419 100 
## Missing values: 1294 
## 
## 
## -----------------------------------------------------
## rh.72  numeric, range: 33.855 100 
## Missing values: 1294 
## 
## 
## -----------------------------------------------------
## rh.96  numeric, range: 48.769 88.404 
## Missing values: 2213 
## 
## 
## -----------------------------------------------------
## rh.168  numeric, range: 48.769 89.757 
## Missing values: 2213 
## 
## 
## -----------------------------------------------------
## rh.mn  numeric, range: 33.855 125.06 
## Missing values: 1294 
## 
## 
## -----------------------------------------------------
## far.loc  character/factor, unique (first 10): 
##  NA
## 
## 50
## 
## 200
## 
## 400
## 
## 11000
## 
## 500
## 
## 300
## 
## 150
## 
## 250
## 
## 800 
## Missing values: 1787 
## 
## 
## -----------------------------------------------------
## man.source  character/factor, unique (first 10): 
##  pig
## 
## cat
## 
## poultry
## 
## sludge
## 
## mix
## 
## other
## 
## conc
## 
## none
## 
## mink
## 
## sewage sludge 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## man.source.orig  character/factor, unique (first 10): 
##  Pig
## 
## Cattle
## 
## Poultry
## 
## Sewage sludge
## 
## Mixed
## 
## silage maize + cattle slurry
## 
## silage maize
## 
## pig slurry
## 
## cattle slurry
## 
## cattle slurry + silage maize 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## man.source.det  character/factor, unique (first 10): 
##  NA
## 
## Dairy
## 
## Primarily cattle slurry, but also some pig slurry and silage
## 
## buffalo 
## Missing values: 2195 
## 
## 
## -----------------------------------------------------
## man.bed  character/factor, unique (first 10): 
##  None
## 
## Sawdust
## 
## Straw
## 
## NA
## 
##  
## Missing values: 809 
## 
## 
## -----------------------------------------------------
## man.con  character/factor, unique (first 10): 
##  slurry
## 
## solid
## 
## liquid
## 
## NA
## 
## Solid
## 
## Slurry 
## Missing values: 491 
## 
## 
## -----------------------------------------------------
## man.trt1  character/factor, unique (first 10): 
##  None
## 
## Mechanical separation
## 
## Anaerobic digestion
## 
## none
## 
## In-house separation
## 
## Gravity separation
## 
## Filtration
## 
## Floculation
## 
## Surface
## 
## Barn acidification 
## Missing values: 3 
## 
## 
## -----------------------------------------------------
## man.trt2  character/factor, unique (first 10): 
##  none
## 
## 
## 
## Floculation
## 
## Mechanical separation
## 
## None
## 
## Anaerobic digestion
## 
## NA
## 
## Ammonia stripping 
## Missing values: 156 
## 
## 
## -----------------------------------------------------
## man.trt3  character/factor, unique (first 10): 
##  NA
## 
## None
## 
## Acidification 
## Missing values: 2209 
## 
## 
## -----------------------------------------------------
## man.stor  numeric, range: 0 180 
## Missing values: 1991 
## 
## 
## -----------------------------------------------------
## man.dm  numeric, range: 0.55 100 
## Missing values: 34 
## 
## 
## -----------------------------------------------------
## man.vs  numeric, range: 4.04 5.74 
## Missing values: 2229 
## 
## 
## -----------------------------------------------------
## man.tkn  numeric, range: 0.18 31.9 
## Missing values: 230 
## 
## 
## -----------------------------------------------------
## man.tan  numeric, range: 0.07 460 
## Missing values: 34 
## 
## 
## -----------------------------------------------------
## man.vfa  numeric, range: 0.16 14.1 
## Missing values: 2045 
## 
## 
## -----------------------------------------------------
## man.tic  numeric, range: 0.31 3.81 
## Missing values: 2125 
## 
## 
## -----------------------------------------------------
## man.ua  numeric, range: 0 0 
## Missing values: 2189 
## 
## 
## -----------------------------------------------------
## man.ph  numeric, range: 3.29 9.22 
## Missing values: 314 
## 
## 
## -----------------------------------------------------
## acid  logical, unique: FALSE TRUE 
## Missing values: 
## 
## -----------------------------------------------------
## date.start  something else! Date 
## Missing values: 
## 
## -----------------------------------------------------
## app.start  something else! POSIXct 
## Missing values: 
## 
## -----------------------------------------------------
## app.start.orig  character/factor, unique (first 10): 
##  NA
## 
## 19-06-2000 09:00
## 
## 19-06-2001 11:48
## 
## 18-06-2001 09:32
## 
## 25-06-2002 08:57
## 
## 19-06-2002 09:33
## 
## 17-06-2003 09:16
## 
## 23-06-2003 09:22
## 
## 23-05-2001 09:34
## 
## 22-05-2001 10:37 
## Missing values: 868 
## 
## 
## -----------------------------------------------------
## app.end  something else! POSIXct 
## Missing values: 
## 
## -----------------------------------------------------
## app.end.orig  character/factor, unique (first 10): 
##  NA
## 
## 22-04-2004 09:30
## 
## 22-04-2004 10:00
## 
## 22-04-2004 10:30
## 
## 22-04-2004 11:00
## 
## 11-08-2021 16:15
## 
## 11-08-2021 16:23
## 
## 11-08-2021 16:39
## 
## 11-08-2021 16:47
## 
## 11-08-2021 16:55 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## app.method  character/factor, unique (first 10): 
##  bc
## 
## bsth
## 
## pi
## 
## os
## 
## cs
## 
## ts
## 
## bss
## 
## NA 
## Missing values: 34 
## 
## 
## -----------------------------------------------------
## app.method2  character/factor, unique (first 10): 
##  bc
## 
## band
## 
## NA
## 
## os
## 
## cs
## 
## bsth
## 
## ts 
## Missing values: 97 
## 
## 
## -----------------------------------------------------
## app.method.orig  character/factor, unique (first 10): 
##  Broadcast
## 
## Band spread or trailing hose
## 
## Pressurized injection
## 
## Open slot
## 
## Closed slot
## 
## Trailing shoe
## 
## Band spread on slots
## 
## Broad spread
## 
## trailing hose
## 
##  
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## app.rate  numeric, range: 0.4 315 
## Missing values: 34 
## 
## 
## -----------------------------------------------------
## tan.app  numeric, range: 2.45 602.1 
## Missing values: 34 
## 
## 
## -----------------------------------------------------
## incorp  character/factor, unique (first 10): 
##  none
## 
## shallow
## 
## deep
## 
## NA 
## Missing values: 13 
## 
## 
## -----------------------------------------------------
## incorp.orig  character/factor, unique (first 10): 
##  None
## 
## none
## 
## Shallow
## 
## Plough
## 
## Double discs
## 
## Deep
## 
## NA 
## Missing values: 13 
## 
## 
## -----------------------------------------------------
## time.incorp  numeric, range: 0 48 
## Missing values: 2094 
## 
## 
## -----------------------------------------------------
## man.area  numeric, range: 0 100 
## Missing values: 1852 
## 
## 
## -----------------------------------------------------
## dist.inj  numeric, range: 17 120 
## Missing values: 2060 
## 
## 
## -----------------------------------------------------
## furrow.z  character/factor, unique (first 10): 
##  NA
## 
## 
## 
## 0-20
## 
## 0-18
## 
## 6.9
## 
## 2.6
## 
## 2.5
## 
## 3.2
## 
## 3.9
## 
## 4.3 
## Missing values: 2062 
## 
## 
## -----------------------------------------------------
## furrow.w  character/factor, unique (first 10): 
##  NA
## 
## 
## 
## 0-5
## 
## 2
## 
## 3
## 
## 1
## 
## 1.5
## 
## 0.5
## 
## 15
## 
## 5 
## Missing values: 2087 
## 
## 
## -----------------------------------------------------
## crop  character/factor, unique (first 10): 
##  stubble
## 
## bare soil
## 
## grass
## 
## other
## 
## cereal
## 
## maize
## 
## NA 
## Missing values: 95 
## 
## 
## -----------------------------------------------------
## crop.orig  character/factor, unique (first 10): 
##  Stubble
## 
## Bare soil
## 
## Grass
## 
## Growing crop
## 
## Winter Oilseed Rape
## 
## Winter Wheat
## 
## Winter wheat
## 
## grass
## 
## wheat
## 
## maize 
## Missing values: 93 
## 
## 
## -----------------------------------------------------
## crop.z  numeric, range: 0 76.5 
## Missing values: 672 
## 
## 
## -----------------------------------------------------
## crop.area  numeric, range: 0 100 
## Missing values: 1920 
## 
## 
## -----------------------------------------------------
## lai  numeric, range: 0 4.7 
## Missing values: 2044 
## 
## 
## -----------------------------------------------------
## notes.plot  character/factor, unique (first 10): 
##  
## 
## NA  Incorporation (incorp/incorp.orig) not entered and was assumed to be none.
## 
## Emission error. Emission measurements are thought to be inaccurate. See ALFAM2 database paper along with Haeni et al. (2016) (Atmos. Environ. 125: 92-99)., Emission error. Emission data are thought to be inaccurate. See ALFAM2 database paper along with Haeni et al. (2016) (Atmos. Environ. 125: 92-99)., 
## 
##  Wind tunnel was removed during rain, flux set to zero. Manually Added 0.675 ml precipitation. Wind tunnel was removed during rain, flux set to zero. Manually Added 0.225 ml precipitation. 
## 
##  Wind tunnel was removed during rain, flux set to zero. Manually Added 0.675 ml precipitation.  Wind tunnel was removed during rain, flux set to zero. Manually Added 0.225 ml precipitation. Wind tunnel was removed during rain, flux set to zero.
## 
##  Wind tunnel was removed during rain, flux set to zero. Manually Added 0.675 ml precipitation. Wind tunnel was removed during rain, flux set to zero. Manually Added 0.225 ml precipitation. Wind tunnel was removed during rain, flux set to zero.
## 
## AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Mean of two nearest datapoints. AirTemp - Manually Filled. Single weather observation covering multiple shifts.; SolRad - Manually Filled. Single weather observation covers multiple shifts.; SoilTemp - Mean of two nearest datapoints. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.;  
## 
## AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Manually Filled. Nearest datapoint chosen. AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.;  AirTemp - Manually Filled. Closest matching observation chosen.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.;  AirTemp - Manually Filled. Closest matching observation chosen.; SolRad - Manually Filled. Averaging of two nearest datapoints.;   SolRad - Manually Corrected. Infeasible datapoint obscuring results.; 
## 
## AirTemp - Manually Filled. Single nearest weatherobservation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp  - Manually filled. Single weather observation covering multiple shifts AirTemp - Manually Filled. Nearest datapoint chosen.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp  - Manually filled. Encompassing weather observation chosen. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp  - Manually filled. Average of nearest datapoints.  AirTemp - Manually Filled. Nearest datapoint chosen.; SolRad - Manually Filled. Nearest observation chosen.; SoilTemp  - Manually filled. Encompassing weather observation chosen. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Nearest observation chosen.; SoilTemp  - Manually filled. Average of nearest datapoints.
## 
## AirTemp - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Manually Filled. Single weather observation covering multiple shifts. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Manually Filled. Average of two nearest datapoints.  
## Missing values: 306 
## 
## 
## -----------------------------------------------------
## flag.plot  character/factor, unique (first 10): 
##  
## 
## e
## 
## a
## 
## m
## 
## d
## 
## m i 
## Missing values: 0
```


