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
## eid  numeric, range: 1 407 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## pid  numeric, range: 1 2439 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## pmid  numeric, range: 1 2443 
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
## Missing values: 1642 
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
## 
## Pedersen, Johanna; Kamp, Jesper 
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
## row.in.file.plot  numeric, range: 5 79 
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
## Missing values: 916 
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
## Missing values: 1159 
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
## Missing values: 1642 
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
## dt1  numeric, range: 0.00047685 145 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## dt.min  numeric, range: 0.00047685 145 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## dt.max  numeric, range: 0.0072176 169 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## ct.min  numeric, range: 0.00047685 145 
## Missing values: 0 
## 
## 
## -----------------------------------------------------
## ct.max  numeric, range: 0.045236 508 
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
## 
## DTM 
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
## Alpha samplers
## 
## CRDS avg.
## 
## Acid traps
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
## Missing values: 2411 
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
## Missing values: 1714 
## 
## 
## -----------------------------------------------------
## e.4  numeric, range: -0.44 182.99 
## Missing values: 315 
## 
## 
## -----------------------------------------------------
## e.6  numeric, range: -0.40226 235.14 
## Missing values: 179 
## 
## 
## -----------------------------------------------------
## e.12  numeric, range: -1.1896 266.77 
## Missing values: 152 
## 
## 
## -----------------------------------------------------
## e.24  numeric, range: -0.321 328.35 
## Missing values: 125 
## 
## 
## -----------------------------------------------------
## e.48  numeric, range: -0.486 556.75 
## Missing values: 280 
## 
## 
## -----------------------------------------------------
## e.72  numeric, range: -0.873 651 
## Missing values: 616 
## 
## 
## -----------------------------------------------------
## e.96  numeric, range: -1.1095 231.38 
## Missing values: 1234 
## 
## 
## -----------------------------------------------------
## e.168  numeric, range: 0.24029 39.167 
## Missing values: 2353 
## 
## 
## -----------------------------------------------------
## e.final  numeric, range: -12.18 654.87 
## Missing values: 42 
## 
## 
## -----------------------------------------------------
## e.cum.1  numeric, range: -0.0091828 1.8003 
## Missing values: 2417 
## 
## 
## -----------------------------------------------------
## e.cum.4  numeric, range: -0.047383 20.823 
## Missing values: 1916 
## 
## 
## -----------------------------------------------------
## e.cum.6  numeric, range: -0.058869 26.369 
## Missing values: 1910 
## 
## 
## -----------------------------------------------------
## e.cum.12  numeric, range: -0.14069 36.811 
## Missing values: 1908 
## 
## 
## -----------------------------------------------------
## e.cum.24  numeric, range: 0 45.78 
## Missing values: 1908 
## 
## 
## -----------------------------------------------------
## e.cum.48  numeric, range: 0 61.386 
## Missing values: 1909 
## 
## 
## -----------------------------------------------------
## e.cum.72  numeric, range: 0 65.131 
## Missing values: 1921 
## 
## 
## -----------------------------------------------------
## e.cum.96  numeric, range: 0.24077 66.63 
## Missing values: 2036 
## 
## 
## -----------------------------------------------------
## e.cum.168  numeric, range: 0.24029 39.167 
## Missing values: 2353 
## 
## 
## -----------------------------------------------------
## e.cum.final  numeric, range: 0 68.463 
## Missing values: 1899 
## 
## 
## -----------------------------------------------------
## e.rel.1  numeric, range: -0.013169 0.6082 
## Missing values: 1720 
## 
## 
## -----------------------------------------------------
## e.rel.4  numeric, range: -0.0059949 3.2046 
## Missing values: 333 
## 
## 
## -----------------------------------------------------
## e.rel.6  numeric, range: -0.0053061 3.9345 
## Missing values: 207 
## 
## 
## -----------------------------------------------------
## e.rel.12  numeric, range: -0.012519 4.3729 
## Missing values: 182 
## 
## 
## -----------------------------------------------------
## e.rel.24  numeric, range: -0.0022194 5.1649 
## Missing values: 155 
## 
## 
## -----------------------------------------------------
## e.rel.48  numeric, range: -0.0018363 5.6564 
## Missing values: 306 
## 
## 
## -----------------------------------------------------
## e.rel.72  numeric, range: -0.0073379 5.8617 
## Missing values: 634 
## 
## 
## -----------------------------------------------------
## e.rel.96  numeric, range: -0.010592 5.8726 
## Missing values: 1240 
## 
## 
## -----------------------------------------------------
## e.rel.168  numeric, range: 0.0035573 0.56612 
## Missing values: 2353 
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
## Missing values: 823 
## 
## 
## -----------------------------------------------------
## sand  numeric, range: 7 92.3 
## Missing values: 801 
## 
## 
## -----------------------------------------------------
## oc  numeric, range: 0.9 13.7 
## Missing values: 1089 
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
## Missing values: 436 
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
## Missing values: 543 
## 
## 
## -----------------------------------------------------
## soil.water  numeric, range: 0.005 1 
## Missing values: 1017 
## 
## 
## -----------------------------------------------------
## soil.water.v  numeric, range: 20.39 20.89 
## Missing values: 2438 
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
## Missing values: 1277 
## 
## 
## -----------------------------------------------------
## soil.ph  numeric, range: 4.4 8.21 
## Missing values: 578 
## 
## 
## -----------------------------------------------------
## soil.dens  numeric, range: 0.8 1.7 
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
## Missing values: 2412 
## 
## 
## -----------------------------------------------------
## air.temp.4  numeric, range: 1 32.62 
## Missing values: 1929 
## 
## 
## -----------------------------------------------------
## air.temp.6  numeric, range: -2.9688 35 
## Missing values: 342 
## 
## 
## -----------------------------------------------------
## air.temp.12  numeric, range: -2.8371 35.505 
## Missing values: 310 
## 
## 
## -----------------------------------------------------
## air.temp.24  numeric, range: -4.1838 28.927 
## Missing values: 284 
## 
## 
## -----------------------------------------------------
## air.temp.48  numeric, range: -3.9696 29.125 
## Missing values: 285 
## 
## 
## -----------------------------------------------------
## air.temp.72  numeric, range: -3.5854 29.75 
## Missing values: 240 
## 
## 
## -----------------------------------------------------
## air.temp.96  numeric, range: 0.73273 28.158 
## Missing values: 1921 
## 
## 
## -----------------------------------------------------
## air.temp.168  numeric, range: 1.0756 28.158 
## Missing values: 1921 
## 
## 
## -----------------------------------------------------
## air.temp.mn  numeric, range: -3.5964 29.75 
## Missing values: 248 
## 
## 
## -----------------------------------------------------
## air.temp.z  numeric, range: 0 10 
## Missing values: 324 
## 
## 
## -----------------------------------------------------
## soil.temp.1  numeric, range: 1 17.8 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.4  numeric, range: 1 25.99 
## Missing values: 2229 
## 
## 
## -----------------------------------------------------
## soil.temp.6  numeric, range: 1 34.953 
## Missing values: 1288 
## 
## 
## -----------------------------------------------------
## soil.temp.12  numeric, range: 1 30.884 
## Missing values: 1274 
## 
## 
## -----------------------------------------------------
## soil.temp.24  numeric, range: 1 26.815 
## Missing values: 1278 
## 
## 
## -----------------------------------------------------
## soil.temp.48  numeric, range: 1 25.897 
## Missing values: 1286 
## 
## 
## -----------------------------------------------------
## soil.temp.72  numeric, range: 1 26.062 
## Missing values: 1241 
## 
## 
## -----------------------------------------------------
## soil.temp.96  numeric, range: 1 19.261 
## Missing values: 2229 
## 
## 
## -----------------------------------------------------
## soil.temp.168  numeric, range: 1 19.261 
## Missing values: 2229 
## 
## 
## -----------------------------------------------------
## soil.temp.mn  numeric, range: 0.28063 27.404 
## Missing values: 1249 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.1  numeric, range: 1 19.175 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.4  numeric, range: 1 16.619 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.6  numeric, range: 1 16.175 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.12  numeric, range: 1 16.515 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.24  numeric, range: 1 15.217 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.48  numeric, range: -0.58073 15.306 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.72  numeric, range: -0.081597 15.765 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.96  numeric, range: 0.13099 16.147 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.168  numeric, range: 0.45268 15.567 
## Missing values: 2429 
## 
## 
## -----------------------------------------------------
## soil.temp.surf.mn  numeric, range: 0.78869 21.095 
## Missing values: 2429 
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
## Missing values: 1201 
## 
## 
## -----------------------------------------------------
## rad.1  numeric, range: 0 200.5 
## Missing values: 2425 
## 
## 
## -----------------------------------------------------
## rad.4  numeric, range: 0 324.44 
## Missing values: 2425 
## 
## 
## -----------------------------------------------------
## rad.6  numeric, range: 0 899 
## Missing values: 1137 
## 
## 
## -----------------------------------------------------
## rad.12  numeric, range: 0 823.03 
## Missing values: 1121 
## 
## 
## -----------------------------------------------------
## rad.24  numeric, range: 0 823.03 
## Missing values: 1118 
## 
## 
## -----------------------------------------------------
## rad.48  numeric, range: 0 458.48 
## Missing values: 1122 
## 
## 
## -----------------------------------------------------
## rad.72  numeric, range: 0 409.02 
## Missing values: 1122 
## 
## 
## -----------------------------------------------------
## rad.96  numeric, range: 0.35417 305.41 
## Missing values: 2419 
## 
## 
## -----------------------------------------------------
## rad.168  numeric, range: 0.33929 309.48 
## Missing values: 2419 
## 
## 
## -----------------------------------------------------
## rad.mn  numeric, range: 0 409.02 
## Missing values: 1127 
## 
## 
## -----------------------------------------------------
## wind.1  numeric, range: 0.06115 5.7249 
## Missing values: 2412 
## 
## 
## -----------------------------------------------------
## wind.4  numeric, range: 0.1 5.4811 
## Missing values: 1945 
## 
## 
## -----------------------------------------------------
## wind.6  numeric, range: 0.1 16.022 
## Missing values: 237 
## 
## 
## -----------------------------------------------------
## wind.12  numeric, range: 0.1 16.022 
## Missing values: 207 
## 
## 
## -----------------------------------------------------
## wind.24  numeric, range: 0.1 9.5 
## Missing values: 183 
## 
## 
## -----------------------------------------------------
## wind.48  numeric, range: 0.1 10.991 
## Missing values: 183 
## 
## 
## -----------------------------------------------------
## wind.72  numeric, range: 0.1 10.991 
## Missing values: 132 
## 
## 
## -----------------------------------------------------
## wind.96  numeric, range: 0.1 4.0546 
## Missing values: 1937 
## 
## 
## -----------------------------------------------------
## wind.168  numeric, range: 0.1 3.9372 
## Missing values: 1937 
## 
## 
## -----------------------------------------------------
## wind.mn  numeric, range: 0.10794 19.939 
## Missing values: 105 
## 
## 
## -----------------------------------------------------
## wind.z  numeric, range: 0.125 10 
## Missing values: 459 
## 
## 
## -----------------------------------------------------
## wind.2m.1  numeric, range: 0.06497 6.5866 
## Missing values: 2424 
## 
## 
## -----------------------------------------------------
## wind.2m.4  numeric, range: 0.1 6.3061 
## Missing values: 2319 
## 
## 
## -----------------------------------------------------
## wind.2m.6  numeric, range: 0.1 16.347 
## Missing values: 613 
## 
## 
## -----------------------------------------------------
## wind.2m.12  numeric, range: 0.1 16.347 
## Missing values: 585 
## 
## 
## -----------------------------------------------------
## wind.2m.24  numeric, range: 0.1 9.6927 
## Missing values: 563 
## 
## 
## -----------------------------------------------------
## wind.2m.48  numeric, range: 0.1 11.214 
## Missing values: 567 
## 
## 
## -----------------------------------------------------
## wind.2m.72  numeric, range: 0.1 11.214 
## Missing values: 516 
## 
## 
## -----------------------------------------------------
## wind.2m.96  numeric, range: 0.1 4.3608 
## Missing values: 2316 
## 
## 
## -----------------------------------------------------
## wind.2m.168  numeric, range: 0.1 3.4086 
## Missing values: 2316 
## 
## 
## -----------------------------------------------------
## wind.2m.mn  numeric, range: 0.10794 20.343 
## Missing values: 489 
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
## Missing values: 1323 
## 
## 
## -----------------------------------------------------
## rain.1  numeric, range: 0 3.5 
## Missing values: 1937 
## 
## 
## -----------------------------------------------------
## rain.4  numeric, range: 0 7.8 
## Missing values: 1916 
## 
## 
## -----------------------------------------------------
## rain.6  numeric, range: 0 15 
## Missing values: 777 
## 
## 
## -----------------------------------------------------
## rain.12  numeric, range: 0 15 
## Missing values: 745 
## 
## 
## -----------------------------------------------------
## rain.24  numeric, range: 0 36.1 
## Missing values: 727 
## 
## 
## -----------------------------------------------------
## rain.48  numeric, range: 0 55.9 
## Missing values: 719 
## 
## 
## -----------------------------------------------------
## rain.72  numeric, range: 0 55.9 
## Missing values: 676 
## 
## 
## -----------------------------------------------------
## rain.96  numeric, range: 0 28.6 
## Missing values: 2036 
## 
## 
## -----------------------------------------------------
## rain.168  numeric, range: 0 24.6 
## Missing values: 2353 
## 
## 
## -----------------------------------------------------
## rain.tot  numeric, range: 0 89.8 
## Missing values: 626 
## 
## 
## -----------------------------------------------------
## rain.rate.1  numeric, range: 0 3.5 
## Missing values: 1928 
## 
## 
## -----------------------------------------------------
## rain.rate.4  numeric, range: 0 1.95 
## Missing values: 1907 
## 
## 
## -----------------------------------------------------
## rain.rate.6  numeric, range: 0 2.719 
## Missing values: 768 
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
## rh.1  numeric, range: 1 91.9 
## Missing values: 2425 
## 
## 
## -----------------------------------------------------
## rh.4  numeric, range: 1 92.7 
## Missing values: 2423 
## 
## 
## -----------------------------------------------------
## rh.6  numeric, range: 1 100.5 
## Missing values: 1548 
## 
## 
## -----------------------------------------------------
## rh.12  numeric, range: 1 100 
## Missing values: 1525 
## 
## 
## -----------------------------------------------------
## rh.24  numeric, range: 1 100 
## Missing values: 1508 
## 
## 
## -----------------------------------------------------
## rh.48  numeric, range: 1 100 
## Missing values: 1498 
## 
## 
## -----------------------------------------------------
## rh.72  numeric, range: 1 100 
## Missing values: 1498 
## 
## 
## -----------------------------------------------------
## rh.96  numeric, range: 1 88.404 
## Missing values: 2417 
## 
## 
## -----------------------------------------------------
## rh.168  numeric, range: 1 89.757 
## Missing values: 2417 
## 
## 
## -----------------------------------------------------
## rh.mn  numeric, range: 1.003 125.06 
## Missing values: 1498 
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
## Missing values: 1994 
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
## 
## mix of slurry co-digested with other agricultural residues 
## Missing values: 2249 
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
## Missing values: 1016 
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
## 
## Liquid 
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
## Missing values: 9 
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
## 
## Plasma
## 
## Acidification 
## Missing values: 336 
## 
## 
## -----------------------------------------------------
## man.trt3  character/factor, unique (first 10): 
##  NA
## 
## None
## 
## Acidification
## 
## Plasma 
## Missing values: 2410 
## 
## 
## -----------------------------------------------------
## man.stor  numeric, range: 0 180 
## Missing values: 2198 
## 
## 
## -----------------------------------------------------
## man.dm  numeric, range: 0.55 100 
## Missing values: 34 
## 
## 
## -----------------------------------------------------
## man.vs  numeric, range: 4.04 5.74 
## Missing values: 2436 
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
## man.vfa  numeric, range: 0.15 14.1 
## Missing values: 2193 
## 
## 
## -----------------------------------------------------
## man.tic  numeric, range: 0.31 3.81 
## Missing values: 2332 
## 
## 
## -----------------------------------------------------
## man.ua  numeric, range: 0 0 
## Missing values: 2396 
## 
## 
## -----------------------------------------------------
## man.ph  numeric, range: 3.29 9.22 
## Missing values: 313 
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
## Missing values: 43 
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
## Missing values: 106 
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
## Missing values: 2301 
## 
## 
## -----------------------------------------------------
## man.area  numeric, range: 0 100 
## Missing values: 2043 
## 
## 
## -----------------------------------------------------
## dist.inj  numeric, range: 17 120 
## Missing values: 2267 
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
## Missing values: 2269 
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
## Missing values: 2294 
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
## Missing values: 699 
## 
## 
## -----------------------------------------------------
## crop.area  numeric, range: 0 100 
## Missing values: 2127 
## 
## 
## -----------------------------------------------------
## lai  numeric, range: 0 4.7 
## Missing values: 2251 
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
## Missing values: 499 
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


