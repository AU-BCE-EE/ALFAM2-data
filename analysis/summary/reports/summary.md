---
title: 'Summary of new ALFAM2 data'
output: pdf_document
author: Sasha D. Hafner
date: "02 June, 2023"
---


```r
pdat$digested <- grepl('anaerobic digestion', tolower(paste(pdat$man.trt1, pdat$man.trt2)))
```



```r
dim(pdat)
```

```
## [1] 2243  221
```

```r
length(unique(pdat$pmid))
```

```
## [1] 2243
```

```r
length(unique(pdat$pid))
```

```
## [1] 2239
```



```r
up <- pdat[unique(pdat$pid), ]
table(pdat$uptake)
```

```
## 
##    1    2    3 
##  800 1099  344
```

```r
table(up$uptake)
```

```
## 
##    1    2    3 
##  800 1099  340
```

```r
table(country = up$country, uptake = up$uptake)
```

```
##        uptake
## country   1   2   3
##      CA   0 229  64
##      CH 121  47   0
##      DE   0 197   0
##      DK  46 251 232
##      FR   0  25   0
##      IE   0  68   0
##      IT  75   8  13
##      NL 119 163  13
##      NO   9   0   0
##      SE  88   0  18
##      UK 342 109   0
##      US   0   2   0
```


```r
table(pdat$pdat$man.trt1)
```

```
## < table of extent 0 >
```

```r
table(pdat$man.trt2)
```

```
## 
##                           Ammonia stripping   Anaerobic digestion 
##                   201                     3                    16 
##           Floculation Mechanical separation                  none 
##                     9                    52                  1526 
##                  None 
##                   272
```


```r
u3 <- subset(pdat, uptake == 3)
up3 <- subset(up, uptake == 3)
table(paste(u3$uptake, u3$country, u3$institute, u3$man.source, u3$meas.tech2), u3$digested)
```

```
##                                        
##                                         FALSE TRUE
##   3 CA AU cat wt                           64    0
##   3 DK AU cat wt                           63   26
##   3 DK AU mix DTM                           0    3
##   3 DK AU mix micro met                     0   12
##   3 DK AU mix wt                            0   22
##   3 DK AU pig wt                          102    0
##   3 DK AU-BCE cat micro met                 4    0
##   3 IT DiSAA-IT sewage sludge micro met     0    3
##   3 IT DiSAA-IT urea 46% micro met          3    0
##   3 IT UNIMI cat micro met                  0    4
##   3 IT UNINA cat micro met                  1    1
##   3 IT UNINA cat wt                         2    3
##   3 NL AU cat micro met                     4    0
##   3 NL AU cat wt                            9    0
##   3 SE AU cat wt                           12    0
##   3 SE AU mix wt                            0    6
```

```r
table(u3$digested)
```

```
## 
## FALSE  TRUE 
##   264    80
```

```r
table(up3$digested)
```

```
## 
## FALSE  TRUE 
##   261    79
```


```r
table(u3$meas.tech2)
```

```
## 
##       DTM micro met        wt 
##         3        32       309
```

```r
table(up3$meas.tech2)
```

```
## 
##       DTM micro met        wt 
##         3        31       306
```


```r
table(up3$country)
```

```
## 
##  CA  DK  IT  NL  SE 
##  64 232  13  13  18
```

```r
table(u3$country)
```

```
## 
##  CA  DK  IT  NL  SE 
##  64 232  17  13  18
```

Acidification table.


```r
acidtab <- table(paste(pdat$man.trt1, pdat$man.trt2, pdat$man.trt3), pdat$acid)
acidtab <- acidtab[order(-acidtab[, 'TRUE']), ]
acidtab
```

```
##                                                          
##                                                           FALSE TRUE
##   Acidification None NA                                       0   42
##   Acidification NA NA                                         0   24
##   Field acidification  NA                                     0   14
##   Barn acidification  NA                                      0   12
##   Acidification Anaerobic digestion NA                        0    8
##   Acidification Mechanical separation NA                      0    8
##   Anaerobic digestion Mechanical separation Acidification     0    8
##    none NA                                                   72    0
##   Anaerobic digestion  NA                                    26    0
##   Anaerobic digestion Ammonia stripping NA                    3    0
##   Anaerobic digestion Floculation NA                          9    0
##   Anaerobic digestion Mechanical separation NA               10    0
##   Anaerobic digestion Mechanical separation None             18    0
##   Anaerobic digestion NA NA                                  41    0
##   anaerobic digestion none NA                                 1    0
##   Anaerobic digestion none NA                               137    0
##   Anaerobic digestion None NA                                 6    0
##   Dilution NA NA                                              3    0
##   Filtration  NA                                             21    0
##   Floculation  NA                                            10    0
##   Gravity separation  NA                                     21    0
##   Gravity separation NA NA                                   24    0
##   In-house separation none NA                                62    0
##   Low DM none NA                                             12    0
##   Low protein diet none NA                                    9    0
##   Mechanical separation none NA                               4    0
##   Mechanical separation None NA                               6    0
##   NA NA NA                                                    3    0
##   None  NA                                                   97    0
##   None Anaerobic digestion NA                                 8    0
##   None Mechanical separation NA                               8    0
##   None NA NA                                                 69    0
##   none none NA                                              231    0
##   None none NA                                              950    0
##   None None NA                                              218    0
##   Surface none NA                                            48    0
```


```r
trttab <- table(pdat$treat, pdat$acid)
trttab <- trttab[order(-trttab[, 'TRUE']), ]
trttab
```

```
##                                                       
##                                                        FALSE TRUE
##   Field acidification                                      0   14
##   Barn acidification                                       0   12
##   field                                                    0   12
##   MA                                                       0   12
##   tank                                                     0   12
##   BomechAcid                                               0    8
##   CA                                                       0    8
##   DA                                                       0    8
##   PA                                                       0    8
##   SA                                                       0    8
##   acidified                                                0    6
##   ES                                                       0    4
##   16                                                       0    1
##   acidified_5.2                                            0    1
##   acidified_5.6                                            0    1
##   acidified_5.7                                            0    1
##   0                                                       17    0
##   0 h deep                                                 1    0
##   0 h shallow                                              1    0
##   0,0                                                      6    0
##   0,5                                                      2    0
##   0,6                                                      2    0
##   1                                                      314    0
##   10                                                       5    0
##   2                                                      242    0
##   2-BRM                                                    3    0
##   2,5                                                     10    0
##   2,6                                                      2    0
##   20                                                       3    0
##   20diluted                                                3    0
##   21                                                       1    0
##   25                                                       1    0
##   3                                                      149    0
##   3-BLD                                                    4    0
##   30                                                       3    0
##   4                                                       72    0
##   41                                                       1    0
##   42                                                       1    0
##   5                                                       65    0
##   6                                                       23    0
##   6 h shallow                                              1    0
##   7                                                       11    0
##   7,0                                                      6    0
##   7,2                                                      6    0
##   8                                                        6    0
##   9                                                        4    0
##   A                                                        1    0
##   AER20                                                    2    0
##   AER25                                                    8    0
##   AER30                                                    2    0
##   AER54                                                    5    0
##   AER7                                                     5    0
##   AGM                                                      2    0
##   ana                                                      2    0
##   ana sep                                                  2    0
##   ana sep diluted                                          1    0
##   Anaerobic digested and solid-liquid separated slurry     3    0
##   Anaerobic digested slurry                                3    0
##   Aut CS0910                                               3    0
##   Aut CS1011                                               9    0
##   Aut PS0910                                               3    0
##   Aut PS1011                                               3    0
##   Autumn 2008 D                                            3    0
##   Autumn 2008 UD                                           3    0
##   Autumn 2010 D                                            3    0
##   Autumn 2010 UD                                           3    0
##   B                                                        1    0
##   BACK                                                     2    0
##   BACK                                                     2    0
##   Band                                                     3    0
##   Bo                                                      21    0
##   Bomech                                                   9    0
##   Breeding Pig Slurry                                      2    0
##   broadband & incorporation                                1    0
##   broadcast                                                1    0
##   C                                                        8    0
##   Cattle Slurry                                            2    0
##   Cattle Slurry - HighDM15                                 1    0
##   Cattle Slurry - HighDM30                                 1    0
##   Cattle Slurry - LowDM30                                  1    0
##   CK                                                      24    0
##   cof                                                     45    0
##   Combined disc and tine injection                         8    0
##   control                                                  9    0
##   CRDS_1m                                                  2    0
##   CRDS_2m                                                  2    0
##   cs                                                      23    0
##   D                                                        8    0
##   decanted                                                21    0
##   Decanted-MAI                                            24    0
##   Decanted-Surface                                        24    0
##   dig_slurry_pig                                           2    0
##   Digestate                                                3    0
##   digested                                                30    0
##   Disc                                                    15    0
##   Disc injection                                          11    0
##   E                                                        4    0
##   eGylle_bLS                                               4    0
##   eGylle_bLS_acid_traps_3heights                           1    0
##   eGylle_bLS_Alpha1                                        1    0
##   eGylle_bLS_Alpha2                                        1    0
##   eGylle_bLS_avg_time                                      1    0
##   eGylle_DTM1                                              1    0
##   eGylle_DTM2                                              1    0
##   eGylle_DTM3                                              1    0
##   eGylle_IHF                                               1    0
##   ES CS0910                                                3    0
##   ES CS10                                                  6    0
##   ES CS1011                                                9    0
##   ES PS0910                                                3    0
##   ES PS1011                                                3    0
##   F1                                                       1    0
##   F2                                                       1    0
##   F3                                                       1    0
##   Fattening Pig Slurry                                     2    0
##   Field Size                                               3    0
##   filtered                                                21    0
##   floculated                                              19    0
##   Foulum                                                   6    0
##   Harso                                                    1    0
##   I                                                        4    0
##   inc_slurry_bov                                           4    0
##   INCORP                                                   2    0
##   irrigation                                              18    0
##   JL_combi                                                 1    0
##   JOS_d                                                    2    0
##   JOS_e                                                    1    0
##   Jyndevad                                                 3    0
##   Jyndevand                                                3    0
##   KIM                                                      1    0
##   LS CS0910                                                3    0
##   LS CS1011                                                3    0
##   LS PS0910                                                3    0
##   M                                                       12    0
##   MD                                                       1    0
##   Medium Size                                              3    0
##   monof                                                   79    0
##   monof/cof                                                2    0
##   no incorp                                                2    0
##   No prestorage                                            2    0
##   none                                                    18    0
##   NUGA-tine                                                3    0
##   P                                                        8    0
##   PE CS1011                                                3    0
##   PE PS1011                                                3    0
##   Prestorage                                               1    0
##   ps                                                      47    0
##   ref                                                     34    0
##   Rønhave                                                  6    0
##   S                                                        8    0
##   separated                                                6    0
##   separated broadcast                                      8    0
##   separated narrow banded                                  8    0
##   separated SSD                                            8    0
##   Shallow Injection                                        2    0
##   Shallow Injection - Conc                                 1    0
##   SIC-13_EC                                                1    0
##   SIC-13_IDM                                               1    0
##   SIC-13_TAGM                                              1    0
##   Simpel tine                                              3    0
##   slurry_bov                                               4    0
##   slurry_pig                                               2    0
##   Small Size                                               1    0
##   Splash                                                  12    0
##   Splash Plate                                             7    0
##   Splash Plate - Evening                                   1    0
##   Splash Plate - Morning                                   1    0
##   Splash Plate - Noon                                      1    0
##   Spring 2009 D                                            3    0
##   Spring 2009 UD                                           2    0
##   Spring 2010 D                                            3    0
##   Spring 2010 UD                                           3    0
##   Spring 2011 D                                            3    0
##   Spring 2011 UD                                           2    0
##   SS                                                       2    0
##   SS-13_IDM                                                1    0
##   SSD                                                     12    0
##   stored                                                   3    0
##   Summer 2009 D                                            3    0
##   Summer 2009 UD                                           3    0
##   Summer 2010 D                                            3    0
##   Summer 2010 UD                                           3    0
##   Summer 2011 D                                            3    0
##   Summer 2011 UD                                           3    0
##   Summer CS10                                              3    0
##   Summer CS1011                                            3    0
##   SURF                                                     2    0
##   TH                                                      30    0
##   TH20                                                     9    0
##   Trail hose                                              26    0
##   Trailing Hose                                            5    0
##   Trailing Hose - Evening                                  1    0
##   Trailing Hose - Long Grass                               1    0
##   Trailing Hose - Morning                                  1    0
##   Trailing Hose - Noon                                     1    0
##   Trailing Hose - Short Grass                              1    0
##   trailing shoe                                            1    0
##   Trailing Shoe                                            5    0
##   UM                                                       1    0
##   Unter                                                    1    0
##   untreat                                                  2    0
##   untreat diluted                                          1    0
##   untreated                                               34    0
##   untreated broadcast                                      8    0
##   untreated narrow banded                                 16    0
##   Untreated slurry                                         3    0
##   untreated SSD                                            8    0
##   untreated wide banded                                    8    0
##   Urea                                                     3    0
##   Vo                                                      15    0
##   Whole-MAI                                               24    0
##   Whole-Surface                                           24    0
##   Winge tine                                               3    0
##   zodebem                                                 55    0
```

