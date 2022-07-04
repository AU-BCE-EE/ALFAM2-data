---
title: 'Summary of new ALFAM2 data'
output: pdf_document
author: Sasha D. Hafner
date: "04 July, 2022"
---


```r
pdat$digested <- grepl('anaerobic digestion', tolower(paste(pdat$man.trt1, pdat$man.trt2)))
```



```r
dim(pdat)
```

```
## [1] 2231  220
```

```r
length(unique(pdat$pmid))
```

```
## [1] 2231
```

```r
length(unique(pdat$pid))
```

```
## [1] 2227
```



```r
up <- pdat[unique(pdat$pid), ]
table(pdat$uptake)
```

```
## 
##    1    2    3 
##  800 1099  332
```

```r
table(up$uptake)
```

```
## 
##    1    2    3 
##  800 1099  328
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
##      DK  46 251 227
##      FR   0  25   0
##      IE   0  68   0
##      IT  75   8   9
##      NL 119 163  10
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
##   3 DK AU mix micro met                     0   10
##   3 DK AU mix wt                            0   22
##   3 DK AU pig wt                          102    0
##   3 DK AU-BCE cat micro met                 4    0
##   3 IT DiSAA-IT sewage sludge micro met     0    3
##   3 IT DiSAA-IT urea 46% micro met          3    0
##   3 IT UNINA cat micro met                  1    1
##   3 IT UNINA cat wt                         2    3
##   3 NL AU cat wt                            9    0
##   3 NL AU NA micro met                      1    0
##   3 SE AU cat wt                           12    0
##   3 SE AU mix wt                            0    6
```

```r
table(u3$digested)
```

```
## 
## FALSE  TRUE 
##   261    71
```

```r
table(up3$digested)
```

```
## 
## FALSE  TRUE 
##   258    70
```


```r
table(u3$meas.tech2)
```

```
## 
## micro met        wt 
##        23       309
```

```r
table(up3$meas.tech2)
```

```
## 
## micro met        wt 
##        22       306
```


```r
table(up3$country)
```

```
## 
##  CA  DK  IT  NL  SE 
##  64 227   9  10  18
```

```r
table(u3$country)
```

```
## 
##  CA  DK  IT  NL  SE 
##  64 227  13  10  18
```



