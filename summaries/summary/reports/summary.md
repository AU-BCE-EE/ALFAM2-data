---
title: 'Summary of new ALFAM2 data'
output: pdf_document
author: Sasha D. Hafner
date: "20 June, 2026"
---


``` r
pdat[, digested := grepl('anaerobic digestion', tolower(paste(man.trt1, man.trt2)))]
```



``` r
dim(pdat)
```

```
## [1] 3241  222
```

``` r
length(unique(pdat$pmid))
```

```
## [1] 3241
```

``` r
length(unique(pdat$pid))
```

```
## [1] 3237
```


``` r
dim(idat)
```

```
## [1] 104828     51
```


``` r
table(pdat$sub.period)
```

```
## 
##    1    2    3    4 
##  791 1103 1291   56
```

``` r
table(country = up$country, sub.period = up$sub.period)
```

```
## Error:
## ! object 'up' not found
```

``` r
table(institute = up$institute, sub.period = up$sub.period)
```

```
## Error:
## ! object 'up' not found
```


``` r
table(pdat$man.trt1)
```

```
## 
##                                   Acidification               Acidified 
##                      99                     154                       8 
##     anaerobic digestion     Anaerobic digestion      Barn acidification 
##                       1                     691                      12 
##                 Diluted                Dilution     Field acidification 
##                      34                       3                      14 
##              Filtration             Floculation      Gravity separation 
##                      21                      10                      45 
##     In-house separation               Irrigated                  Low DM 
##                      62                       5                      12 
##        Low protein diet   Mechanical separation Nitrification inhibitor 
##                       9                      49                      32 
##                    none                    None                 Surface 
##                     231                    1701                      48
```

``` r
table(pdat$man.trt2)
```

```
## 
##                               Acidification     Ammonia stripping 
##                  1437                    14                     3 
##   Anaerobic digestion      Biochar addition            Disruption 
##                    16                     6                     6 
##           Floculation Mechanical separation                  none 
##                     9                   144                  1262 
##                  None                Plasma 
##                   338                     6
```


``` r
upl <- subset(pdat, sub.period == max(sub.period))
table(paste(upl$sub.period, upl$country, upl$institute, upl$man.source, upl$meas.tech2), upl$digested)
```

```
##                      
##                       FALSE
##   4 DK AU cat chamber    41
##   4 DK AU pig chamber    15
```

``` r
table(upl$digested)
```

```
## 
## FALSE 
##    56
```


``` r
table(upl$meas.tech2)
```

```
## 
## chamber 
##      56
```


``` r
table(upl$country)
```

```
## 
## DK 
## 56
```

Acidification table.


``` r
acidtab <- table(paste(pdat$man.trt1, pdat$man.trt2, pdat$man.trt3, sep = ', '), pdat$acid)
acidtab <- acidtab[order(-acidtab[, 'TRUE']), ]
acidtab
```

```
##                                                                    
##                                                                     FALSE TRUE
##   Acidification, ,                                                      0   96
##   Acidification, None,                                                  0   42
##   Anaerobic digestion, Mechanical separation, Acidification             0   14
##   Field acidification, ,                                                0   14
##   Barn acidification, ,                                                 0   12
##   Acidification, Anaerobic digestion,                                   0    8
##   Acidification, Mechanical separation,                                 0    8
##   Acidified, ,                                                          0    8
##   Anaerobic digestion, Acidification,                                   0    8
##   Anaerobic digestion, Acidification, None                              0    6
##   Anaerobic digestion, Disruption, Acidification                        0    3
##   , ,                                                                  27    0
##   , none,                                                              72    0
##   Anaerobic digestion, ,                                              325    0
##   Anaerobic digestion, Ammonia stripping,                               3    0
##   Anaerobic digestion, Disruption, None                                 3    0
##   Anaerobic digestion, Floculation,                                     9    0
##   Anaerobic digestion, Mechanical separation,                          60    0
##   Anaerobic digestion, Mechanical separation, Biochar addition          9    0
##   Anaerobic digestion, Mechanical separation, Mechanical separation     6    0
##   Anaerobic digestion, Mechanical separation, None                     33    0
##   Anaerobic digestion, Mechanical separation, Plasma                    6    0
##   anaerobic digestion, none,                                            1    0
##   Anaerobic digestion, none,                                          137    0
##   Anaerobic digestion, None,                                           21    0
##   Anaerobic digestion, None, None                                      48    0
##   Diluted, ,                                                           34    0
##   Dilution, ,                                                           3    0
##   Filtration, ,                                                        21    0
##   Floculation, ,                                                       10    0
##   Gravity separation, ,                                                45    0
##   In-house separation, none,                                           62    0
##   Irrigated, ,                                                          5    0
##   Low DM, none,                                                        12    0
##   Low protein diet, none,                                               9    0
##   Mechanical separation, ,                                             24    0
##   Mechanical separation, Biochar addition,                              6    0
##   Mechanical separation, none,                                          4    0
##   Mechanical separation, None,                                          9    0
##   Mechanical separation, Plasma,                                        6    0
##   Nitrification inhibitor, ,                                           32    0
##   None, ,                                                             781    0
##   None, Anaerobic digestion,                                            8    0
##   None, Mechanical separation,                                          8    0
##   none, none,                                                         231    0
##   None, none,                                                         686    0
##   None, None,                                                         218    0
##   Surface, none,                                                       48    0
```


``` r
trttab <- table(pdat$treat, pdat$acid)
trttab <- trttab[order(-trttab[, 'TRUE']), ]
trttab
```

```
##                                                       
##                                                        FALSE TRUE
##   TH:BD+A                                                  0   16
##   TH:CS+A                                                  0   16
##   TS:CS+A                                                  0   16
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
##   TS-TSBacid                                               0    8
##   AA                                                       0    6
##   acidified                                                0    6
##   H2SO4                                                    0    6
##   1                                                      308    4
##   2                                                      275    4
##   ES                                                       0    4
##   A acid                                                   0    3
##   A dec acid                                               0    3
##   A dis acid                                               0    3
##   B acid                                                   0    3
##   B screw acid                                             0    3
##   High acid DFC                                            0    3
##   Low acid DFC                                             0    3
##   Medium acid DFC                                          0    3
##   No acid DFC                                              0    3
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
##   2-pos                                                    5    0
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
##   7-pos                                                    5    0
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
##   A                                                       28    0
##   A dec                                                    6    0
##   A dis                                                    3    0
##   A MF liquid                                              3    0
##   A MF slurry                                              3    0
##   A screw                                                  4    0
##   AD                                                       8    0
##   AD-F                                                    12    0
##   AD-FB                                                    3    0
##   AD-L                                                    12    0
##   AD-LB1                                                   3    0
##   AD-LB2                                                   3    0
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
##   B                                                       13    0
##   B screw                                                  3    0
##   BACK                                                     4    0
##   Band                                                     3    0
##   BDcat                                                    5    0
##   BDmix-high                                               6    0
##   BDmix-low                                                6    0
##   BDpig                                                    5    0
##   bLS                                                      1    0
##   bLS_inj                                                  1    0
##   bLS_th                                                   1    0
##   Bo                                                      21    0
##   Bomech                                                   9    0
##   Breeding Pig Slurry                                      2    0
##   broadband & incorporation                                1    0
##   broadcast                                                1    0
##   C                                                       17    0
##   C dec                                                    3    0
##   CAN                                                     32    0
##   Cattle A                                                 3    0
##   Cattle B                                                 3    0
##   Cattle C                                                 3    0
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
##   D                                                       14    0
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
##   E                                                       10    0
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
##   G                                                        6    0
##   H                                                        6    0
##   Harso                                                    1    0
##   I                                                        7    0
##   inc_slurry_bov                                           4    0
##   INCORP                                                   2    0
##   irrigation                                              18    0
##   JL_combi                                                 1    0
##   JOS_d                                                    2    0
##   JOS_e                                                    1    0
##   Jyn-OSI                                                  8    0
##   Jyn-TH                                                   8    0
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
##   Machine plot bLS                                         1    0
##   Machine plot DFC                                         4    0
##   MD                                                       1    0
##   Medium Size                                              3    0
##   monof                                                   79    0
##   monof/cof                                                2    0
##   No                                                       5    0
##   no incorp                                                2    0
##   No prestorage                                            2    0
##   none                                                    18    0
##   NUGA                                                     9    0
##   NUGA-tine                                                3    0
##   OSI                                                     11    0
##   P                                                        8    0
##   PE CS1011                                                3    0
##   PE PS1011                                                3    0
##   Pig A                                                    3    0
##   Pig B                                                    3    0
##   Pig C                                                    3    0
##   Plasma                                                  12    0
##   Prestorage                                               1    0
##   ps                                                      47    0
##   PS                                                       9    0
##   PS-F                                                     9    0
##   PS-L                                                    12    0
##   PS-LB1                                                   3    0
##   PS-LB2                                                   3    0
##   RAW                                                      6    0
##   Reference                                               12    0
##   Røn-OSI                                                  8    0
##   Røn-TH                                                   8    0
##   Rønhave                                                  6    0
##   S                                                        8    0
##   Sep25                                                    6    0
##   Sep30                                                    6    0
##   separated                                                6    0
##   Separated                                               12    0
##   separated broadcast                                      8    0
##   separated narrow banded                                  8    0
##   separated SSD                                            8    0
##   Shallow Injection                                        2    0
##   Shallow Injection - Conc                                 1    0
##   SI:BD                                                   16    0
##   SI:BD+NI                                                16    0
##   SI:CS                                                   32    0
##   SI:CS+NI                                                32    0
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
##   TH                                                      57    0
##   TH-12                                                    8    0
##   TH-4                                                     8    0
##   TH:BD                                                   16    0
##   TH:CS                                                   16    0
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
##   TS-Bo                                                   15    0
##   TS-TSB                                                  24    0
##   TS-TSB-12                                                8    0
##   TS-TSB-4                                                 8    0
##   TS-TSB+                                                 15    0
##   TS:CS                                                   16    0
##   U-CM                                                     6    0
##   UM                                                       1    0
##   Un12                                                     6    0
##   Un25                                                     6    0
##   Un30                                                     6    0
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


``` r
unique(pdat[, c('inst', 'institute', 'country')])
```

```
##      inst    institute country
##     <int>       <char>  <char>
##  1:   101         ADAS      UK
##  2:   102          AUN      NO
##  3:   103         CRPA      IT
##  4:   104         DIAS      DK
##  5:   105         IGER      UK
##  6:   106         IMAG      NL
##  7:   107      IUL/FAT      CH
##  8:   108          JTI      SE
##  9:   201         AAFC      CA
## 10:   202      ADAS-RR      UK
## 11:   203         ARDC      CA
## 12:   204           AT      DK
## 13:   205           AU      DK
## 14:   206       CAU-LU      DE
## 15:   207     INH-HAFL      CH
## 16:   208         INRA      FR
## 17:   209           MU      IT
## 18:   210      NMI-WUR      NL
## 19:   211          SDU      DK
## 20:   212      TEAGASC      IE
## 21:   213         USDA      US
## 22:   301       AU-BCE      DK
## 23:   205           AU      NL
## 24:   205           AU      CA
## 25:   205           AU      SE
## 26:   302     DiSAA-IT      IT
## 27:   304        UNIMI      IT
## 28:   305        UNINA      IT
## 29:   208        INRAE      FR
## 30:   214          WUR      NL
## 31:   303           TI      DE
## 32:   306 UNITO DISAFA      DK
##      inst    institute country
##     <int>       <char>  <char>
```


``` r
table(pdat[, c('institute', 'app.method')])
```

```
##               app.method
## institute           bc bss bsth  cs  os  pi  ts
##   AAFC           0 109   0    0   0   0   0   0
##   ADAS           0  79   0    0   0   0   0   0
##   ADAS-RR        0   0   0   63   0   0   0  46
##   ARDC           0  60  60    0   0   0   0   0
##   AT             0   8   0   11   0   7   0   0
##   AU            15  16   0  674  16 102   0 173
##   AU-BCE         0   4   0    0   0   0   0   0
##   AUN            0   3   0    3   0   0   3   0
##   CAU-LU         0   0   0  197   0   0   0   0
##   CRPA           0  52   0   18   0   5   0   0
##   DIAS           0  23   0   21   2   0   0   0
##   DiSAA-IT       0   3   0    0   0   3   0   0
##   IGER           0 245   0    3   0   6   0   9
##   IMAG           0   1   0    0   0   1   0   0
##   INH-HAFL       0  27   0   12   0   3   0   5
##   INRA           6  10   0    8   0   0   0   1
##   INRAE          0   4   0   17   0   0   0   0
##   IUL/FAT        0 117   0    2   0   2   0   0
##   JTI            0  17   0   34   3  26   0   8
##   MU             0   7   0    0   0   1   0   0
##   NMI-WUR        0  16   0    0   0   0   0   0
##   SDU           28   0   0  106   4   0   0   0
##   TEAGASC        0  20   0   18   0   0   0  30
##   TI             0  32   0   64   0  64   0  64
##   UNIMI          0   4   0    0   0   0   0   0
##   UNINA          0   7   0    0   0   0   0   0
##   UNITO DISAFA   0   0   0   17   0   0   0   0
##   USDA           0   2   0    0   0   0   0   0
##   WUR            0 158   0    0   4 149   0 103
```

``` r
table(pdat[, c('sub.period', 'app.method')])
```

```
##           app.method
## sub.period      bc bss bsth  cs  os  pi  ts
##          1   0 583   0   81   5  73   3  46
##          2  34 351  60  476  24  76   0  82
##          3  15  90   0  674   0 201   0 311
##          4   0   0   0   37   0  19   0   0
```

``` r
table(pdat[, c('corr.period', 'app.method')], exclude = NULL)
```

```
##            app.method
## corr.period        bc  bss bsth   cs   os   pi   ts
##        3       0  138    0    0    4   88    0   29
##        <NA>   49  886   60 1268   25  281    3  410
```


