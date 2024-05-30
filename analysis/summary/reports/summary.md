---
title: 'Summary of new ALFAM2 data'
output: pdf_document
author: Sasha D. Hafner
date: "30 May, 2024"
---


```r
pdat$digested <- grepl('anaerobic digestion', tolower(paste(pdat$man.trt1, pdat$man.trt2)))
```



```r
dim(pdat)
```

```
## [1] 2613  222
```

```r
length(unique(pdat$pmid))
```

```
## [1] 2613
```

```r
length(unique(pdat$pid))
```

```
## [1] 2609
```



```r
up <- pdat[unique(pdat$pid), ]
table(pdat$sub.period)
```

```
## 
##    1    2    3 
##  791 1103  719
```

```r
table(up$sub.period)
```

```
## 
##    1    2    3 
##  612 1070  571
```

```r
table(country = up$country, sub.period = up$sub.period)
```

```
##        sub.period
## country   1   2   3
##      CA   0 229  31
##      CH   6  47   0
##      DE   0 197   0
##      DK  46 251 310
##      FR   0  25  21
##      IE   0  68   0
##      IT  75   8  17
##      NL  46 134 174
##      NO   9   0   0
##      SE  88   0  18
##      UK 342 109   0
##      US   0   2   0
```

```r
table(institute = up$institute, sub.period = up$sub.period)
```

```
##           sub.period
## institute    1   2   3
##   AAFC       0 109   0
##   ADAS      79   0   0
##   ADAS-RR    0 109   0
##   ARDC       0 120   0
##   AT         0  26   0
##   AU         0  87 374
##   AU-BCE     0   0   4
##   AUN        9   0   0
##   CAU-LU     0 197   0
##   CRPA      75   0   0
##   DIAS      46   0   0
##   DiSAA-IT   0   0   6
##   IGER     263   0   0
##   INH-HAFL   0  47   0
##   INRA       0  25   0
##   INRAE      0   0  21
##   IUL/FAT    6   0   0
##   JTI       88   0   0
##   MU         0   8   0
##   NMI-WUR    0  16   0
##   SDU        0 138   0
##   TEAGASC    0  68   0
##   UNIMI      0   0   4
##   UNINA      0   0   7
##   USDA       0   2   0
##   WUR       46 118 155
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
##                               Acidification     Ammonia stripping 
##                   201                     9                     3 
##   Anaerobic digestion           Floculation Mechanical separation 
##                    16                     9                    71 
##                  none                  None                Plasma 
##                  1262                   279                     6
```


```r
u3 <- subset(pdat, sub.period == 3)
up3 <- subset(up, sub.period == 3)
table(paste(u3$sub.period, u3$country, u3$institute, u3$man.source, u3$meas.tech2), u3$digested)
```

```
##                                        
##                                         FALSE TRUE
##   3 CA AU cat wt                           64    0
##   3 DK AU cat wt                           69   38
##   3 DK AU mix chamber                      75   34
##   3 DK AU mix micro met                     0   15
##   3 DK AU mix wt                            0   43
##   3 DK AU pig wt                          147    0
##   3 DK AU-BCE cat micro met                 4    0
##   3 FR INRAE cat micro met                  7    0
##   3 FR INRAE mix micro met                  0   14
##   3 IT DiSAA-IT sewage sludge micro met     0    3
##   3 IT DiSAA-IT urea 46% micro met          3    0
##   3 IT UNIMI cat micro met                  0    4
##   3 IT UNINA cat micro met                  1    1
##   3 IT UNINA cat wt                         2    3
##   3 NL AU cat chamber                       4    0
##   3 NL AU cat micro met                     6    0
##   3 NL AU cat wt                            9    0
##   3 NL WUR dairy micro met                 93    0
##   3 NL WUR mineralconcentrate micro met    12    0
##   3 NL WUR pig micro met                   50    0
##   3 SE AU cat wt                           12    0
##   3 SE AU mix wt                            0    6
```

```r
table(u3$digested)
```

```
## 
## FALSE  TRUE 
##   558   161
```

```r
table(up3$digested)
```

```
## 
## FALSE  TRUE 
##   411   160
```


```r
table(u3$meas.tech2)
```

```
## 
##   chamber micro met        wt 
##       113       213       393
```

```r
table(up3$meas.tech2)
```

```
## 
##   chamber micro met        wt 
##       113       213       245
```


```r
table(up3$country)
```

```
## 
##  CA  DK  FR  IT  NL  SE 
##  31 310  21  17 174  18
```

```r
table(u3$country)
```

```
## 
##  CA  DK  FR  IT  NL  SE 
##  64 425  21  17 174  18
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
##   Acidification NA NA                                         0   30
##   Field acidification  NA                                     0   14
##   Barn acidification  NA                                      0   12
##   Acidification Anaerobic digestion NA                        0    8
##   Acidification Mechanical separation NA                      0    8
##   Acidified NA NA                                             0    8
##   Anaerobic digestion Mechanical separation Acidification     0    8
##   Mechanical separation Acidification NA                      0    6
##   Disruption Acidification NA                                 0    3
##    none NA                                                   72    0
##   Anaerobic digestion  NA                                    26    0
##   Anaerobic digestion Ammonia stripping NA                    3    0
##   Anaerobic digestion Floculation NA                          9    0
##   Anaerobic digestion Mechanical separation NA               23    0
##   Anaerobic digestion Mechanical separation None             18    0
##   Anaerobic digestion Mechanical separation Plasma            6    0
##   Anaerobic digestion NA NA                                  96    0
##   anaerobic digestion none NA                                 1    0
##   Anaerobic digestion none NA                               137    0
##   Anaerobic digestion None NA                                13    0
##   Diluted NA NA                                              34    0
##   Dilution NA NA                                              3    0
##   Disruption NA NA                                            3    0
##   Filtration  NA                                             21    0
##   Floculation  NA                                            10    0
##   Gravity separation  NA                                     21    0
##   Gravity separation NA NA                                   24    0
##   In-house separation none NA                                62    0
##   Irrigated NA NA                                             5    0
##   Low DM none NA                                             12    0
##   Low protein diet none NA                                    9    0
##   Mechanical separation NA NA                                15    0
##   Mechanical separation none NA                               4    0
##   Mechanical separation None NA                               6    0
##   Mechanical separation Plasma NA                             6    0
##   NA NA NA                                                    9    0
##   None  NA                                                   97    0
##   None Anaerobic digestion NA                                 8    0
##   None Mechanical separation NA                               8    0
##   None NA NA                                                530    0
##   none none NA                                              231    0
##   None none NA                                              686    0
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
##   1                                                      308    4
##   2                                                      275    4
##   ES                                                       0    4
##   A acid                                                   0    3
##   A dis acid                                               0    3
##   A sep acid                                               0    3
##   B acid                                                   0    3
##   B sep acid                                               0    3
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
##   10                                                       2    0
##   100                                                      1    0
##   101                                                      1    0
##   102                                                      1    0
##   103                                                      1    0
##   104                                                      1    0
##   105                                                      1    0
##   106                                                      1    0
##   107                                                      1    0
##   108                                                      1    0
##   109                                                      1    0
##   11                                                       2    0
##   110                                                      1    0
##   111                                                      1    0
##   112                                                      1    0
##   113                                                      1    0
##   114                                                      1    0
##   115                                                      1    0
##   116                                                      1    0
##   12                                                       2    0
##   14                                                       1    0
##   143                                                      1    0
##   15                                                       1    0
##   17                                                       1    0
##   18                                                       1    0
##   19                                                       1    0
##   2-BRM                                                    3    0
##   2,5                                                     10    0
##   2,6                                                      2    0
##   20                                                       4    0
##   20diluted                                                3    0
##   21                                                       3    0
##   22                                                       2    0
##   23                                                       1    0
##   24                                                       1    0
##   25                                                       2    0
##   26                                                       1    0
##   27                                                       2    0
##   28                                                       2    0
##   29                                                       2    0
##   3                                                      179    0
##   3-BLD                                                    4    0
##   30                                                       5    0
##   31                                                       2    0
##   32                                                       2    0
##   33                                                       2    0
##   34                                                       1    0
##   35                                                       1    0
##   36                                                       1    0
##   37                                                       1    0
##   38                                                       1    0
##   39                                                       1    0
##   4                                                      106    0
##   40                                                       1    0
##   400                                                      1    0
##   41                                                       2    0
##   42                                                       3    0
##   43                                                       2    0
##   44                                                       2    0
##   45                                                       2    0
##   46                                                       2    0
##   47                                                       2    0
##   48                                                       2    0
##   49                                                       2    0
##   5                                                       68    0
##   50                                                       2    0
##   51                                                       2    0
##   52                                                       1    0
##   53                                                       2    0
##   54                                                       1    0
##   55                                                       2    0
##   56                                                       2    0
##   57                                                       2    0
##   58                                                       2    0
##   59                                                       2    0
##   6                                                       16    0
##   6 h shallow                                              1    0
##   60                                                       2    0
##   61                                                       1    0
##   62                                                       1    0
##   63                                                       2    0
##   64                                                       2    0
##   65                                                       1    0
##   66                                                       1    0
##   67                                                       2    0
##   68                                                       2    0
##   69                                                       2    0
##   7                                                       10    0
##   7,0                                                      6    0
##   7,2                                                      6    0
##   70                                                       2    0
##   71                                                       2    0
##   72                                                       2    0
##   73                                                       2    0
##   74                                                       2    0
##   75                                                       2    0
##   76                                                       2    0
##   77                                                       2    0
##   78                                                       2    0
##   79                                                       1    0
##   8                                                        6    0
##   80                                                       1    0
##   81                                                       1    0
##   82                                                       2    0
##   83                                                       1    0
##   84                                                       1    0
##   85                                                       1    0
##   86                                                       1    0
##   87                                                       1    0
##   88                                                       1    0
##   89                                                       1    0
##   9                                                        3    0
##   90                                                       1    0
##   91                                                       1    0
##   92                                                       1    0
##   93                                                       1    0
##   94                                                       1    0
##   95                                                       1    0
##   96                                                       1    0
##   97                                                       1    0
##   98                                                       1    0
##   99                                                       1    0
##   A                                                       16    0
##   A dis                                                    3    0
##   A sep                                                    3    0
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
##   B                                                       10    0
##   B sep                                                    3    0
##   BACK                                                     2    0
##   BACK                                                     2    0
##   Band                                                     3    0
##   bLS                                                      1    0
##   bLS_inj                                                  1    0
##   bLS_th                                                   1    0
##   Bo                                                      21    0
##   Bomech                                                   9    0
##   Breeding Pig Slurry                                      2    0
##   broadband & incorporation                                1    0
##   broadcast                                                1    0
##   C                                                       14    0
##   C sep                                                    3    0
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
##   D                                                       11    0
##   D-CM                                                     6    0
##   D-CM-CC                                                  6    0
##   decanted                                                21    0
##   Decanted-MAI                                            24    0
##   Decanted-Surface                                        24    0
##   DFC                                                     18    0
##   DFC_inj                                                  7    0
##   DFC_th                                                   6    0
##   dig_slurry_pig                                           2    0
##   DIGB_1                                                   1    0
##   DIGB_2                                                   1    0
##   DIGB_3                                                   1    0
##   DIGB_4                                                   1    0
##   DIGB_5                                                   1    0
##   DIGB_6                                                   1    0
##   DIGB_7                                                   1    0
##   Digestate                                                3    0
##   digested                                                30    0
##   DIGL_1                                                   1    0
##   DIGL_2                                                   1    0
##   DIGL_3                                                   1    0
##   DIGL_4                                                   1    0
##   DIGL_5                                                   1    0
##   DIGS_1                                                   1    0
##   DIGS_2                                                   1    0
##   Disc                                                    15    0
##   Disc injection                                          11    0
##   E                                                        7    0
##   eGylle_bLS                                               4    0
##   eGylle_bLS_acid_traps_0.25m                              1    0
##   eGylle_bLS_acid_traps_0.54m                              1    0
##   eGylle_bLS_acid_traps_1.04m                              1    0
##   eGylle_bLS_Alpha1                                        1    0
##   eGylle_bLS_Alpha2                                        1    0
##   eGylle_bLS_avg_time                                      1    0
##   eGylle_DTM1                                              1    0
##   eGylle_DTM2                                              1    0
##   eGylle_DTM3                                              1    0
##   eGylle_FC_1                                              1    0
##   eGylle_FC_2                                              1    0
##   eGylle_FC_3                                              1    0
##   eGylle_FC_4                                              1    0
##   eGylle_IHF                                               1    0
##   ES CS0910                                                3    0
##   ES CS10                                                  6    0
##   ES CS1011                                                9    0
##   ES PS0910                                                3    0
##   ES PS1011                                                3    0
##   F                                                        3    0
##   F1                                                       1    0
##   F2                                                       1    0
##   F3                                                       1    0
##   Fattening Pig Slurry                                     2    0
##   Field Size                                               3    0
##   filtered                                                21    0
##   floculated                                              19    0
##   Foulum                                                   6    0
##   FUM_1                                                    1    0
##   FUM_2                                                    1    0
##   G                                                        3    0
##   H                                                        3    0
##   Harso                                                    1    0
##   I                                                        7    0
##   inc_slurry_bov                                           4    0
##   INCORP                                                   2    0
##   irrigation                                              18    0
##   JL_combi                                                 1    0
##   JOS_d                                                    2    0
##   JOS_e                                                    1    0
##   Jyndevad                                                 3    0
##   Jyndevand                                                3    0
##   KIM                                                      1    0
##   LIS_1                                                    1    0
##   LIS_2                                                    1    0
##   LIS_3                                                    1    0
##   LIS_4                                                    1    0
##   LIS_5                                                    1    0
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
##   NUGA                                                     9    0
##   NUGA-tine                                                3    0
##   P                                                        8    0
##   PE CS1011                                                3    0
##   PE PS1011                                                3    0
##   Plasma                                                  12    0
##   Prestorage                                               1    0
##   ps                                                      47    0
##   Reference                                               12    0
##   Rønhave                                                  6    0
##   S                                                        8    0
##   separated                                                6    0
##   Separated                                               12    0
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
##   Trailing hose                                            9    0
##   Trailing Hose                                            5    0
##   Trailing Hose - Evening                                  1    0
##   Trailing Hose - Long Grass                               1    0
##   Trailing Hose - Morning                                  1    0
##   Trailing Hose - Noon                                     1    0
##   Trailing Hose - Short Grass                              1    0
##   trailing shoe                                            1    0
##   Trailing shoe                                            9    0
##   Trailing Shoe                                            5    0
##   U-CM                                                     6    0
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
##   WT                                                       3    0
```


```r
unique(pdat[, c('inst', 'institute', 'country')])
```

```
##      inst institute country
## 1     101      ADAS      UK
## 80    102       AUN      NO
## 89    103      CRPA      IT
## 164   104      DIAS      DK
## 210   105      IGER      UK
## 473   106      IMAG      NL
## 475   107   IUL/FAT      CH
## 596   108       JTI      SE
## 684   201      AAFC      CA
## 793   202   ADAS-RR      UK
## 902   203      ARDC      CA
## 1022  204        AT      DK
## 1048  205        AU      DK
## 1135  206    CAU-LU      DE
## 1332  207  INH-HAFL      CH
## 1379  208      INRA      FR
## 1404  209        MU      IT
## 1412  210   NMI-WUR      NL
## 1428  211       SDU      DK
## 1566  212   TEAGASC      IE
## 1634  213      USDA      US
## 1636  301    AU-BCE      DK
## 1662  205        AU      NL
## 1718  205        AU      CA
## 1911  205        AU      SE
## 1962  302  DiSAA-IT      IT
## 1968  303     UNIMI      IT
## 1972  304     UNINA      IT
## 2179  208     INRAE      FR
## 2200  214       WUR      NL
```


```r
table(pdat[, c('institute', 'app.method')])
```

```
##           app.method
## institute   bc bss bsth  cs  os  pi  ts
##   AAFC     109   0    0   0   0   0   0
##   ADAS      79   0    0   0   0   0   0
##   ADAS-RR    0   0   63   0   0   0  46
##   ARDC      60  60    0   0   0   0   0
##   AT         8   0   11   0   7   0   0
##   AU        16   0  392  16  75   0 110
##   AU-BCE     4   0    0   0   0   0   0
##   AUN        3   0    3   0   0   3   0
##   CAU-LU     0   0  197   0   0   0   0
##   CRPA      52   0   18   0   5   0   0
##   DIAS      23   0   21   2   0   0   0
##   DiSAA-IT   3   0    0   0   3   0   0
##   IGER     245   0    3   0   6   0   9
##   IMAG       1   0    0   0   1   0   0
##   INH-HAFL  27   0   12   0   3   0   5
##   INRA      10   0    8   0   0   0   1
##   INRAE      4   0   17   0   0   0   0
##   IUL/FAT  117   0    2   0   2   0   0
##   JTI       17   0   34   3  26   0   8
##   MU         7   0    0   0   1   0   0
##   NMI-WUR   16   0    0   0   0   0   0
##   SDU        0   0  106   4   0   0   0
##   TEAGASC   20   0   18   0   0   0  30
##   UNIMI      4   0    0   0   0   0   0
##   UNINA      7   0    0   0   0   0   0
##   USDA       2   0    0   0   0   0   0
##   WUR      158   0    0   4 149   0 103
```

```r
table(pdat[, c('sub.period', 'app.method')])
```

```
##           app.method
## sub.period  bc bss bsth  cs  os  pi  ts
##          1 583   0   81   5  73   3  46
##          2 351  60  476  24  76   0  82
##          3  58   0  348   0 129   0 184
```

```r
table(pdat[, c('corr.period', 'app.method')], exclude = NULL)
```

```
##            app.method
## corr.period  bc bss bsth  cs  os  pi  ts <NA>
##        3    138   0    0   4  88   0  29    0
##        <NA> 854  60  905  25 190   3 283   34
```


