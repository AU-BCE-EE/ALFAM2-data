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
## Error in printVarSumm(pdat.comb[, i]): could not find function "printVarSumm"
```


