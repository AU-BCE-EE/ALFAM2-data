Submitted data error checks
================

- [0. Instructions for submitters](#0-instructions-for-submitters)
- [1. Submitter](#1-submitter)
- [2. Contributors](#2-contributors)
- [3. File and directory names](#3-file-and-directory-names)
- [4. Location](#4-location)
- [5.Keys and codes](#5keys-and-codes)
  - [Codes in Treatments sheet](#codes-in-treatments-sheet)
  - [Codes in Plots sheet](#codes-in-plots-sheet)
  - [Codes in Emission sheet](#codes-in-emission-sheet)
  - [Code merge check (matching project, experiment, field, plot,
    treatment)](#code-merge-check-matching-project-experiment-field-plot-treatment)
- [6. Publication info](#6-publication-info)
  - [Check for missing codes](#check-for-missing-codes)
  - [Complete citations given](#complete-citations-given)
- [7. Emission sheet](#7-emission-sheet)
  - [Duplicated intervals](#duplicated-intervals)
  - [Missing incorporation time](#missing-incorporation-time)
  - [Delay after application](#delay-after-application)
  - [Missing or double interval
    number](#missing-or-double-interval-number)
  - [Missing time between intervals](#missing-time-between-intervals)
  - [Measurement method and units](#measurement-method-and-units)
- [7. Value checks](#7-value-checks)
  - [Weather](#weather)
  - [Manure and application](#manure-and-application)
  - [Emission](#emission)
- [8. Missing values](#8-missing-values)
  - [All variables](#all-variables)
  - [Application method and measurement
    method](#application-method-and-measurement-method)
- [9. Plots](#9-plots)
  - [Calculated cumulative emission](#calculated-cumulative-emission)
  - [Final cumulative emission](#final-cumulative-emission)
  - [Relative versus absolute
    emission](#relative-versus-absolute-emission)
  - [Flux](#flux)
  - [Weather data](#weather-data)
  - [Manure and application](#manure-and-application-1)
- [10. Summary](#10-summary)
  - [Plot-level data](#plot-level-data)
  - [Interval-level emission data](#interval-level-emission-data)

# 0. Instructions for submitters

Submitters should use this file to check for problems with submitted
data. Send either a list of problems or confirmation that everything
looks OK to Sasha by email. Be sure to reference the dataset version and
file creation date/time when doing so. These are:

    ## Version:  3.0

    ## [1] "Date/time: 2026-03-11 15:19:48.844374"

Each of these files contains a summary of the data from a single
submitted spreadsheet file. The html name is based on the name of the
submitted file. Use the details below to check:

- Institute abbreviation, submitter and contributor names
- The plot location(s), using the map zoom and pan features if needed
- For problems in the first sections; “OK” means there are no problems
  in a particular section, “warning” is something that should be checked
  (but might be OK), “error” is a problem that needs to be addressed
- For numeric values outside the expected range in the “Value checks”
  section
- Variables with missing values–are there any missing that you thought
  you included?
- Plots of flux, cumulative emission over time, and final cumulative
  emission for strange patterns, unexpectedly high or low values
- Plots of weather data for appropriate differences between plots and
  expected diurnal or other patterns
- Plots of manure and application data for correct values

Finally, the numeric summary at the end might provide details that can
help in pinpointing problems, but typically does not need to be checked.

# 1. Submitter

| inst.abbrev  | submitter           | version | date       |
|:-------------|:--------------------|:--------|:-----------|
| UNITO DISAFA | Dela Pierre, Flavia | 1       | 2025/05/21 |

# 2. Contributors

| contributor         | institute                                                               | sub.period | file                                           |
|:--------------------|:------------------------------------------------------------------------|-----------:|:-----------------------------------------------|
| Kamp, Jesper Nørlem | Aarhus University, Department of Biological and Chemical Engineering    |          4 | ../../data-submitted/04/UNITO-DISAFA/test.xlsx |
| Dela Pierre, Flavia | University of Turin, Department of Agriculture, Forest and Food Science |          4 | ../../data-submitted/04/UNITO-DISAFA/test.xlsx |

# 3. File and directory names

    ## [1] "../../data-submitted/04/UNITO-DISAFA"

    ## [1] "../../data-submitted/04/UNITO-DISAFA/test.xlsx"

# 4. Location

Location 1: lat=56.49353, long=9.56064 [View on
map](https://maps.google.com/?q=56.49353,9.56064)

# 5.Keys and codes

## Codes in Treatments sheet

    ## OK

    ## OK

## Codes in Plots sheet

    ## OK

    ## OK

## Codes in Emission sheet

    ## OK

    ## OK

## Code merge check (matching project, experiment, field, plot, treatment)

    ## OK

    ## OK

    ## OK

    ## OK

    ## OK

# 6. Publication info

## Check for missing codes

    ## OK

    ## OK

## Complete citations given

    ## OK

    ## OK

# 7. Emission sheet

## Duplicated intervals

    ## OK

## Missing incorporation time

    ## OK

## Delay after application

    ## OK

## Missing or double interval number

    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK

## Missing time between intervals

    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK
    ## OK

## Measurement method and units

Measurement technique:

| Method          | Frequency |
|:----------------|----------:|
| bLS             |       240 |
| Dynamic chamber |       853 |

Measurement technique classification:

| Classification | Frequency |
|:---------------|----------:|
| chamber        |       853 |
| micro met      |       240 |

Emission units and conversion factors.

| Original unit | Conversion factor applied | Final unit |
|:--------------|--------------------------:|:-----------|
| kg N/ha-hr    |                 1.0000000 | kg N/ha-hr |
| kg NH3/ha-hr  |                 0.8224414 | kg N/ha-hr |

# 7. Value checks

Check to see if submitted values are within a reasonable range.

## Weather

    ## wind : OK
    ## rain.rate : OK
    ## air.temp : OK
    ## soil.temp : OK
    ## soil.temp.surf : No values to check.
    ## air.temp.z : OK
    ## wind.z : OK

## Manure and application

    ## man.stor : No values to check.
    ## man.dm : OK
    ## man.vs : No values to check.
    ## man.tkn : OK
    ## man.tan : OK
    ## man.tic : No values to check.
    ## man.ua : No values to check.
    ## man.vfa : OK
    ## man.ph : OK
    ## app.rate : OK
    ## crop.z : OK

## Emission

    ## j.NH3 : OK
    ## e.int : OK
    ## e.rel : OK

# 8. Missing values

Check for missing values.

## All variables

    ## Some values missing:
    ## Table below has number of missing observations by variable:
    ##         pub.id  meas.tech.det    soil.samp.z             oc      soil.type 
    ##           1093           1093           1093           1093           1093 
    ##   soil.water.v     soil.moist        soil.ph       crop.res man.source.det 
    ##           1093           1093           1093           1093           1093 
    ##        man.bed       man.trt2       man.trt3       man.stor         man.vs 
    ##           1093           1093           1093           1093           1093 
    ##        man.tic         man.ua        app.end    time.incorp       man.area 
    ##           1093           1093           1093           1093           1093 
    ##       dist.inj       furrow.z       furrow.w      crop.area            lai 
    ##           1093           1093           1093           1093           1093 
    ##     notes.plot   app.end.orig          bg.dl        pH.surf      soil.temp 
    ##           1039           1093           1093           1093            853 
    ##    soil.temp.z soil.temp.surf            rad           wind            MOL 
    ##            853           1093            853            853            882 
    ##          ustar             rl       air.pres  air.pres.unit             rh 
    ##            854            854            853            853            853 
    ##       wind.loc        far.loc      notes.int        wind.2m     soil.type2 
    ##            853           1093           1092            853           1093 
    ##         exper2           rep2 
    ##           1093           1093

## Application method and measurement method

    ## OK

    ## OK

# 9. Plots

## Calculated cumulative emission

Cumulative emission. Missing values imputed (linear interpolation).
Numeric labels show position of data in data file: row in the “Plots”
sheet and first row in the “Emission” sheet. Labels in center of the
first plot have measurement method, manure source, and application
method. The same emission data are plotted a few different ways to
facilitate checking for problems, e.g., comparing plot to each other or
checking application dates. The same colors should be be used for
particular field plots throughout this section.

![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-30-1.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-30-2.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-30-3.png)<!-- -->

## Final cumulative emission

    ## `stat_bin()` using `bins = 30`. Pick better value `binwidth`.

![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

## Relative versus absolute emission

![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

## Flux

![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-2.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-3.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-4.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-5.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-6.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-7.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-8.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-33-9.png)<!-- -->

## Weather data

    ## Warning: Removed 853 rows containing missing values or values outside the scale
    ## range (`geom_line()`).

    ## Warning: Removed 853 rows containing missing values or values outside the scale
    ## range (`geom_point()`).

![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-34-2.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-34-3.png)<!-- -->![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-34-4.png)<!-- -->

## Manure and application

![](../../logs/04/md/UNITO_DISAFA_Dela_Pierre_Flavia_test_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

# 10. Summary

## Plot-level data

    ## 
    ##  17 rows and 210 columns
    ##  17 unique rows
    ##                       pub.id      proj     exper
    ## Class              character character character
    ## Minimum                 <NA>    AM.VOC    Fall24
    ## Maximum                 <NA>    AM.VOC    Fall24
    ## Mean                    <NA>      <NA>      <NA>
    ## Unique (excld. NA)         0         1         1
    ## Missing values            17         0         0
    ## Sorted                  <NA>      TRUE      TRUE
    ##                                                 
    ##                                                                                                                                                                                           cpmid
    ## Class                                                                                                                                                                                 character
    ## Minimum            D:1.I:UNITO DISAFA.Pr:AM.VOC.F:../../data-submitted/04/UNITO-DISAFA/test.xlsx.E:Fall24.F:Foulumgård.P:1.T:Machine plot DFC.R:1.R2:.T:2024-09-18 12:30:00.M:Dynamic chamberNA
    ## Maximum            D:1.I:UNITO DISAFA.Pr:AM.VOC.F:../../data-submitted/04/UNITO-DISAFA/test.xlsx.E:Fall24.F:Foulumgård.P:8.T:Machine plot DFC.R:2.R2:.T:2024-09-18 12:30:00.M:Dynamic chamberNA
    ## Mean                                                                                                                                                                                       <NA>
    ## Unique (excld. NA)                                                                                                                                                                           17
    ## Missing values                                                                                                                                                                                0
    ## Sorted                                                                                                                                                                                     TRUE
    ##                                                                                                                                                                                                
    ##                         field      plot       rep plot.area     lat    long
    ## Class               character character character   numeric numeric numeric
    ## Minimum            Foulumgård         1         1      0.38    56.5    9.56
    ## Maximum            Foulumgård         8         4       732    56.5    9.56
    ## Mean                     <NA>      <NA>      <NA>      43.4    56.5    9.56
    ## Unique (excld. NA)          1        17         4         2       1       1
    ## Missing values              0         0         0         0       0       0
    ## Sorted                   TRUE      TRUE     FALSE     FALSE    TRUE    TRUE
    ##                                                                            
    ##                      country      topo soil.samp.z    clay    silt    sand
    ## Class              character character     logical integer integer integer
    ## Minimum                   DK      Flat        <NA>       9      24      65
    ## Maximum                   DK      Flat        <NA>       9      24      65
    ## Mean                    <NA>      <NA>        <NA>       9      24      65
    ## Unique (excld. NA)         1         1           0       1       1       1
    ## Missing values             0         0          17       0       0       0
    ## Sorted                  TRUE      TRUE        <NA>    TRUE    TRUE    TRUE
    ##                                                                           
    ##                         oc soil.type soil.water soil.water.v soil.moist soil.ph
    ## Class              logical   logical    numeric      logical    logical logical
    ## Minimum               <NA>      <NA>       0.23         <NA>       <NA>    <NA>
    ## Maximum               <NA>      <NA>       0.23         <NA>       <NA>    <NA>
    ## Mean                  <NA>      <NA>       0.23         <NA>       <NA>    <NA>
    ## Unique (excld. NA)       0         0          1            0          0       0
    ## Missing values          17        17          0           17         17      17
    ## Sorted                <NA>      <NA>       TRUE         <NA>       <NA>    <NA>
    ##                                                                                
    ##                    soil.dens crop.res      till man.source man.source.det
    ## Class                numeric  logical character  character        logical
    ## Minimum                  1.1     <NA>        No        pig           <NA>
    ## Maximum                  1.1     <NA>        No        pig           <NA>
    ## Mean                     1.1     <NA>      <NA>       <NA>           <NA>
    ## Unique (excld. NA)         1        0         1          1              0
    ## Missing values             0       17         0          0             17
    ## Sorted                  TRUE     <NA>      TRUE       TRUE           <NA>
    ##                                                                          
    ##                    man.bed   man.con      man.trt1 man.trt2 man.trt3 man.stor
    ## Class              logical character     character  logical  logical  logical
    ## Minimum               <NA>    slurry Acidification     <NA>     <NA>     <NA>
    ## Maximum               <NA>    slurry          None     <NA>     <NA>     <NA>
    ## Mean                  <NA>      <NA>          <NA>     <NA>     <NA>     <NA>
    ## Unique (excld. NA)       0         1             2        0        0        0
    ## Missing values          17         0             0       17       17       17
    ## Sorted                <NA>      TRUE         FALSE     <NA>     <NA>     <NA>
    ##                                                                              
    ##                     man.dm  man.vs man.tkn man.tan man.tic  man.ua man.vfa
    ## Class              numeric logical numeric numeric logical logical numeric
    ## Minimum               1.96    <NA>    2.42    2.32    <NA>    <NA>    12.7
    ## Maximum               2.73    <NA>    3.04    2.51    <NA>    <NA>    13.4
    ## Mean                  2.16    <NA>    2.83    2.44    <NA>    <NA>    13.1
    ## Unique (excld. NA)       5       0       5       5       0       0       5
    ## Missing values           0      17       0       0      17      17       0
    ## Sorted               FALSE    <NA>   FALSE   FALSE    <NA>    <NA>   FALSE
    ##                                                                           
    ##                     man.ph           app.start         app.end app.method
    ## Class              numeric     POSIXct, POSIXt POSIXct, POSIXt  character
    ## Minimum               4.65 2024-09-18 12:30:00            <NA>       bsth
    ## Maximum               7.59 2024-09-18 15:03:00            <NA>       bsth
    ## Mean                  6.41 2024-09-18 13:27:38            <NA>       <NA>
    ## Unique (excld. NA)       5                  13               0          1
    ## Missing values           0                   0              17          0
    ## Sorted               FALSE               FALSE            <NA>       TRUE
    ##                                                                          
    ##                    app.rate app.rate.unit    incorp time.incorp man.area
    ## Class               integer     character character     numeric  logical
    ## Minimum                  35          t/ha      none        <NA>     <NA>
    ## Maximum                  35          t/ha      none        <NA>     <NA>
    ## Mean                     35          <NA>      <NA>        <NA>     <NA>
    ## Unique (excld. NA)        1             1         1           0        0
    ## Missing values            0             0         0          17       17
    ## Sorted                 TRUE          TRUE      TRUE        <NA>     <NA>
    ##                                                                         
    ##                    dist.inj furrow.z furrow.w      crop  crop.z crop.area
    ## Class               logical  logical  logical character numeric   numeric
    ## Minimum                <NA>     <NA>     <NA>     grass      15      <NA>
    ## Maximum                <NA>     <NA>     <NA>     grass      15      <NA>
    ## Mean                   <NA>     <NA>     <NA>      <NA>      15      <NA>
    ## Unique (excld. NA)        0        0        0         1       1         0
    ## Missing values           17       17       17         0       0        17
    ## Sorted                 <NA>     <NA>     <NA>      TRUE    TRUE      <NA>
    ##                                                                          
    ##                        lai notes.plot row.in.file.plot    institute sub.period
    ## Class              logical  character          numeric    character    numeric
    ## Minimum               <NA>          .                5 UNITO DISAFA          4
    ## Maximum               <NA>          .               21 UNITO DISAFA          4
    ## Mean                  <NA>       <NA>               13         <NA>          4
    ## Unique (excld. NA)       0          1               17            1          1
    ## Missing values          17         16                0            0          0
    ## Sorted                <NA>       TRUE            FALSE         TRUE       TRUE
    ##                                                                               
    ##                                                              file         treat
    ## Class                                                   character     character
    ## Minimum            ../../data-submitted/04/UNITO-DISAFA/test.xlsx High acid DFC
    ## Maximum            ../../data-submitted/04/UNITO-DISAFA/test.xlsx   No acid DFC
    ## Mean                                                         <NA>          <NA>
    ## Unique (excld. NA)                                              1             6
    ## Missing values                                                  0             0
    ## Sorted                                                       TRUE         FALSE
    ##                                                                                
    ##                          meas.tech meas.tech.det   app.start.orig app.end.orig
    ## Class                    character       logical        character      logical
    ## Minimum                        bLS          <NA> 18-09-2024 12:30         <NA>
    ## Maximum            Dynamic chamber          <NA> 18-09-2024 15:03         <NA>
    ## Mean                          <NA>          <NA>             <NA>         <NA>
    ## Unique (excld. NA)               2             0               13            0
    ## Missing values                   0            17                0           17
    ## Sorted                       FALSE          <NA>            FALSE         <NA>
    ##                                                                               
    ##                                                                                                                                                                        cpid
    ## Class                                                                                                                                                             character
    ## Minimum            D:1.I:UNITO DISAFA.Pr:AM.VOC.F:../../data-submitted/04/UNITO-DISAFA/test.xlsx.E:Fall24.F:Foulumgård.P:1.T:Machine plot DFC.R:1.R2:.T:2024-09-18 12:30:00
    ## Maximum            D:1.I:UNITO DISAFA.Pr:AM.VOC.F:../../data-submitted/04/UNITO-DISAFA/test.xlsx.E:Fall24.F:Foulumgård.P:8.T:Machine plot DFC.R:2.R2:.T:2024-09-18 12:30:00
    ## Mean                                                                                                                                                                   <NA>
    ## Unique (excld. NA)                                                                                                                                                       17
    ## Missing values                                                                                                                                                            0
    ## Sorted                                                                                                                                                                 TRUE
    ##                                                                                                                                                                            
    ##                                                     ceid flag.plot
    ## Class                                          character character
    ## Minimum            D:1.I:UNITO DISAFA.Pr:AM.VOC.E:Fall24          
    ## Maximum            D:1.I:UNITO DISAFA.Pr:AM.VOC.E:Fall24          
    ## Mean                                                <NA>      <NA>
    ## Unique (excld. NA)                                     1         1
    ## Missing values                                         0         0
    ## Sorted                                              TRUE      TRUE
    ##                                                                   
    ##                              submitter tan.app e.cum.1 e.cum.4 e.cum.6 e.cum.12
    ## Class                        character numeric numeric numeric numeric  numeric
    ## Minimum            Dela Pierre, Flavia    81.2   0.328 -0.0949  -0.098   -0.268
    ## Maximum            Dela Pierre, Flavia    87.8   0.328    5.52    6.16     6.76
    ## Mean                              <NA>    85.2   0.328    1.01    1.22     1.33
    ## Unique (excld. NA)                   1       5       1      17      17       17
    ## Missing values                       0       0      16       0       0        0
    ## Sorted                            TRUE   FALSE    TRUE   FALSE   FALSE    FALSE
    ##                                                                                
    ##                    e.cum.24 e.cum.48 e.cum.72 e.cum.96 e.cum.168 e.cum.final
    ## Class               numeric  numeric  numeric  numeric   numeric     numeric
    ## Minimum              -0.491   -0.907    -1.39     -1.6      <NA>       -1.77
    ## Maximum                7.26     8.67     10.7     12.4      <NA>        13.4
    ## Mean                   1.77     2.71     3.84     4.88      <NA>        5.98
    ## Unique (excld. NA)       17       17       17       17         0          17
    ## Missing values            0        0        0        0        17           0
    ## Sorted                FALSE    FALSE    FALSE    FALSE      <NA>       FALSE
    ##                                                                             
    ##                    e.rel.1 e.rel.4  e.rel.6 e.rel.12 e.rel.24 e.rel.48 e.rel.72
    ## Class              numeric numeric  numeric  numeric  numeric  numeric  numeric
    ## Minimum            0.00376 -0.0011 -0.00114 -0.00311  -0.0057  -0.0103  -0.0158
    ## Maximum            0.00376  0.0633   0.0707   0.0776   0.0833   0.0995    0.123
    ## Mean               0.00376  0.0119   0.0143   0.0156   0.0207   0.0317   0.0449
    ## Unique (excld. NA)       1      17       17       17       17       17       17
    ## Missing values          16       0        0        0        0        0        0
    ## Sorted                TRUE   FALSE    FALSE    FALSE    FALSE    FALSE    FALSE
    ##                                                                                
    ##                    e.rel.96 e.rel.168 e.rel.final  rain.1  rain.4  rain.6
    ## Class               numeric   numeric     numeric numeric numeric numeric
    ## Minimum             -0.0182      <NA>     -0.0201       0       0       0
    ## Maximum               0.142      <NA>       0.154       0       0       0
    ## Mean                 0.0569      <NA>      0.0699       0       0       0
    ## Unique (excld. NA)       17         0          17       1       1       1
    ## Missing values            0        17           0      16       0       0
    ## Sorted                FALSE      <NA>       FALSE    TRUE    TRUE    TRUE
    ##                                                                          
    ##                    rain.12 rain.24 rain.48 rain.72 rain.96 rain.168 rain.final
    ## Class              numeric numeric numeric numeric numeric  numeric    numeric
    ## Minimum                  0       0       0       0       0     <NA>          0
    ## Maximum                  0       0       0       0       0     <NA>          0
    ## Mean                     0       0       0       0       0     <NA>          0
    ## Unique (excld. NA)       1       1       1       1       1        0          1
    ## Missing values           0       0       0       0       0       17          0
    ## Sorted                TRUE    TRUE    TRUE    TRUE    TRUE     <NA>       TRUE
    ##                                                                               
    ##                    air.temp.1 air.temp.4 air.temp.6 air.temp.12 air.temp.24
    ## Class                 numeric    numeric    numeric     numeric     numeric
    ## Minimum                  19.7       18.6         17        14.8        14.1
    ## Maximum                  19.7         20       19.3        16.7        14.5
    ## Mean                     19.7       19.6       18.4        15.7        14.3
    ## Unique (excld. NA)          1          5          7           9          13
    ## Missing values             16          0          0           0           0
    ## Sorted                   TRUE      FALSE      FALSE       FALSE       FALSE
    ##                                                                            
    ##                    air.temp.48 air.temp.72 air.temp.96 air.temp.168 air.temp.mn
    ## Class                  numeric     numeric     numeric      numeric     numeric
    ## Minimum                   14.2        14.3        14.2         14.2        14.2
    ## Maximum                   14.6        14.4        14.4         14.4        14.4
    ## Mean                      14.4        14.4        14.3         14.3        14.3
    ## Unique (excld. NA)          16          17          17           17          17
    ## Missing values               0           0           0            0           0
    ## Sorted                   FALSE       FALSE       FALSE        FALSE       FALSE
    ##                                                                                
    ##                    soil.temp.1 soil.temp.4 soil.temp.6 soil.temp.12
    ## Class                  numeric     numeric     numeric      numeric
    ## Minimum                   14.6        14.9          15         15.1
    ## Maximum                   14.6        14.9          15         15.1
    ## Mean                      14.6        14.9          15         15.1
    ## Unique (excld. NA)           1           1           1            1
    ## Missing values              16          16          16           16
    ## Sorted                    TRUE        TRUE        TRUE         TRUE
    ##                                                                    
    ##                    soil.temp.24 soil.temp.48 soil.temp.72 soil.temp.96
    ## Class                   numeric      numeric      numeric      numeric
    ## Minimum                    14.9           15         15.1         15.2
    ## Maximum                    14.9           15         15.1         15.2
    ## Mean                       14.9           15         15.1         15.2
    ## Unique (excld. NA)            1            1            1            1
    ## Missing values               16           16           16           16
    ## Sorted                     TRUE         TRUE         TRUE         TRUE
    ##                                                                       
    ##                    soil.temp.168 soil.temp.mn soil.temp.surf.1 soil.temp.surf.4
    ## Class                    numeric      numeric          numeric          numeric
    ## Minimum                     15.2         15.2             <NA>             <NA>
    ## Maximum                     15.2         15.2             <NA>             <NA>
    ## Mean                        15.2         15.2             <NA>             <NA>
    ## Unique (excld. NA)             1            1                0                0
    ## Missing values                16           16               17               17
    ## Sorted                      TRUE         TRUE             <NA>             <NA>
    ##                                                                                
    ##                    soil.temp.surf.6 soil.temp.surf.12 soil.temp.surf.24
    ## Class                       numeric           numeric           numeric
    ## Minimum                        <NA>              <NA>              <NA>
    ## Maximum                        <NA>              <NA>              <NA>
    ## Mean                           <NA>              <NA>              <NA>
    ## Unique (excld. NA)                0                 0                 0
    ## Missing values                   17                17                17
    ## Sorted                         <NA>              <NA>              <NA>
    ##                                                                        
    ##                    soil.temp.surf.48 soil.temp.surf.72 soil.temp.surf.96
    ## Class                        numeric           numeric           numeric
    ## Minimum                         <NA>              <NA>              <NA>
    ## Maximum                         <NA>              <NA>              <NA>
    ## Mean                            <NA>              <NA>              <NA>
    ## Unique (excld. NA)                 0                 0                 0
    ## Missing values                    17                17                17
    ## Sorted                          <NA>              <NA>              <NA>
    ##                                                                         
    ##                    soil.temp.surf.168 soil.temp.surf.mn  wind.1  wind.4  wind.6
    ## Class                         numeric           numeric numeric numeric numeric
    ## Minimum                          <NA>              <NA>    1.99    2.06    1.92
    ## Maximum                          <NA>              <NA>    1.99    2.06    1.92
    ## Mean                             <NA>              <NA>    1.99    2.06    1.92
    ## Unique (excld. NA)                  0                 0       1       1       1
    ## Missing values                     17                17      16      16      16
    ## Sorted                           <NA>              <NA>    TRUE    TRUE    TRUE
    ##                                                                                
    ##                    wind.12 wind.24 wind.48 wind.72 wind.96 wind.168 wind.mn
    ## Class              numeric numeric numeric numeric numeric  numeric numeric
    ## Minimum               1.34   0.998    1.11    1.16    1.09     1.07    1.07
    ## Maximum               1.34   0.998    1.11    1.16    1.09     1.07    1.07
    ## Mean                  1.34   0.998    1.11    1.16    1.09     1.07    1.07
    ## Unique (excld. NA)       1       1       1       1       1        1       1
    ## Missing values          16      16      16      16      16       16      16
    ## Sorted                TRUE    TRUE    TRUE    TRUE    TRUE     TRUE    TRUE
    ##                                                                            
    ##                    wind.2m.1 wind.2m.4 wind.2m.6 wind.2m.12 wind.2m.24
    ## Class                numeric   numeric   numeric    numeric    numeric
    ## Minimum                 1.99      2.06      1.92       1.34      0.998
    ## Maximum                 1.99      2.06      1.92       1.34      0.998
    ## Mean                    1.99      2.06      1.92       1.34      0.998
    ## Unique (excld. NA)         1         1         1          1          1
    ## Missing values            16        16        16         16         16
    ## Sorted                  TRUE      TRUE      TRUE       TRUE       TRUE
    ##                                                                       
    ##                    wind.2m.48 wind.2m.72 wind.2m.96 wind.2m.168 wind.2m.mn
    ## Class                 numeric    numeric    numeric     numeric    numeric
    ## Minimum                  1.11       1.16       1.09        1.07       1.07
    ## Maximum                  1.11       1.16       1.09        1.07       1.07
    ## Mean                     1.11       1.16       1.09        1.07       1.07
    ## Unique (excld. NA)          1          1          1           1          1
    ## Missing values             16         16         16          16         16
    ## Sorted                   TRUE       TRUE       TRUE        TRUE       TRUE
    ##                                                                           
    ##                      rad.1   rad.4   rad.6  rad.12  rad.24  rad.48  rad.72
    ## Class              numeric numeric numeric numeric numeric numeric numeric
    ## Minimum                555     433     319     160     169     141     145
    ## Maximum                555     433     319     160     169     141     145
    ## Mean                   555     433     319     160     169     141     145
    ## Unique (excld. NA)       1       1       1       1       1       1       1
    ## Missing values          16      16      16      16      16      16      16
    ## Sorted                TRUE    TRUE    TRUE    TRUE    TRUE    TRUE    TRUE
    ##                                                                           
    ##                     rad.96 rad.168  rad.mn rain.rate.1 rain.rate.4 rain.rate.6
    ## Class              numeric numeric numeric     numeric     numeric     numeric
    ## Minimum                148     141     141           0           0           0
    ## Maximum                148     141     141           0           0           0
    ## Mean                   148     141     141           0           0           0
    ## Unique (excld. NA)       1       1       1           1           1           1
    ## Missing values          16      16      16          16           0           0
    ## Sorted                TRUE    TRUE    TRUE        TRUE        TRUE        TRUE
    ##                                                                               
    ##                    rain.rate.12 rain.rate.24 rain.rate.48 rain.rate.72
    ## Class                   numeric      numeric      numeric      numeric
    ## Minimum                       0            0            0            0
    ## Maximum                       0            0            0            0
    ## Mean                          0            0            0            0
    ## Unique (excld. NA)            1            1            1            1
    ## Missing values                0            0            0            0
    ## Sorted                     TRUE         TRUE         TRUE         TRUE
    ##                                                                       
    ##                    rain.rate.96 rain.rate.168 rain.rate.mn    rh.1    rh.4
    ## Class                   numeric       numeric      numeric numeric numeric
    ## Minimum                       0             0            0    60.6    60.4
    ## Maximum                       0             0            0    60.6    60.4
    ## Mean                          0             0            0    60.6    60.4
    ## Unique (excld. NA)            1             1            1       1       1
    ## Missing values                0             0            0      16      16
    ## Sorted                     TRUE          TRUE         TRUE    TRUE    TRUE
    ##                                                                           
    ##                       rh.6   rh.12   rh.24   rh.48   rh.72   rh.96  rh.168
    ## Class              numeric numeric numeric numeric numeric numeric numeric
    ## Minimum               64.6    78.7    84.9    86.1    88.1    87.8    88.2
    ## Maximum               64.6    78.7    84.9    86.1    88.1    87.8    88.2
    ## Mean                  64.6    78.7    84.9    86.1    88.1    87.8    88.2
    ## Unique (excld. NA)       1       1       1       1       1       1       1
    ## Missing values          16      16      16      16      16      16      16
    ## Sorted                TRUE    TRUE    TRUE    TRUE    TRUE    TRUE    TRUE
    ##                                                                           
    ##                      rh.mn first.row.in.file.int last.row.in.file.int  n.ints
    ## Class              numeric               numeric              numeric integer
    ## Minimum               88.2                     5                   58      53
    ## Maximum               88.2                   858                 1100     240
    ## Mean                  88.2                   432                  495    64.3
    ## Unique (excld. NA)       1                    17                   17       3
    ## Missing values          16                     0                    0       0
    ## Sorted                TRUE                 FALSE                FALSE   FALSE
    ##                                                                              
    ##                        dt1   j.rel1  j.NH31  dt.min  dt.max  ct.min  ct.max
    ## Class              numeric  numeric numeric numeric numeric numeric numeric
    ## Minimum                0.5 -0.00048 -0.0421     0.5     0.5     0.5     120
    ## Maximum               2.53   0.0222    1.94    2.52    2.53    2.53     137
    ## Mean                  2.41   0.0035   0.298    2.32    2.41    2.41     134
    ## Unique (excld. NA)       2       17      17       3       2       2       3
    ## Missing values           0        0       0       0       0       0       0
    ## Sorted               FALSE    FALSE   FALSE   FALSE   FALSE   FALSE   FALSE
    ##                                                                            
    ##                              t.start.p             t.end.p air.temp.z
    ## Class                  POSIXct, POSIXt     POSIXct, POSIXt    integer
    ## Minimum            2024-09-18 12:30:00 2024-09-23 12:00:00          2
    ## Maximum            2024-09-18 15:03:00 2024-09-24 03:15:00          2
    ## Mean               2024-09-18 13:46:14 2024-09-24 01:19:03          2
    ## Unique (excld. NA)                  17                  17          1
    ## Missing values                       0                   0          0
    ## Sorted                           FALSE               FALSE       TRUE
    ##                                                                      
    ##                    soil.temp.z  wind.z  wind.loc far.loc  pub.info soil.type2
    ## Class                  numeric integer character logical character    logical
    ## Minimum                    0.1       2     Field    <NA>         .       <NA>
    ## Maximum                    0.1       2     Field    <NA>         .       <NA>
    ## Mean                       0.1       2      <NA>    <NA>      <NA>       <NA>
    ## Unique (excld. NA)           1       1         1       0         1          0
    ## Missing values              16       0        16      17         0         17
    ## Sorted                    TRUE    TRUE      TRUE    <NA>      TRUE       <NA>
    ##                                                                              
    ##                     exper2    rep2                   acid  meas.tech.orig
    ## Class              logical logical                logical       character
    ## Minimum               <NA>    <NA>                  FALSE             bLS
    ## Maximum               <NA>    <NA>                   TRUE Dynamic chamber
    ## Mean                  <NA>    <NA> 0.705882352941177 TRUE            <NA>
    ## Unique (excld. NA)       0       0                      2               2
    ## Missing values          17      17                      0               0
    ## Sorted                <NA>    <NA>                  FALSE           FALSE
    ##                                                                          
    ##                    meas.tech2 crop.orig              app.method.orig
    ## Class               character character                    character
    ## Minimum               chamber     Grass Band spread or trailing hose
    ## Maximum             micro met     Grass Band spread or trailing hose
    ## Mean                     <NA>      <NA>                         <NA>
    ## Unique (excld. NA)          2         1                            1
    ## Missing values              0         0                            0
    ## Sorted                  FALSE      TRUE                         TRUE
    ##                                                                     
    ##                    incorp.orig man.source.orig date.start
    ## Class                character       character       Date
    ## Minimum                   None             Pig 2024-09-18
    ## Maximum                   None             Pig 2024-09-18
    ## Mean                      <NA>            <NA>       <NA>
    ## Unique (excld. NA)           1               1          1
    ## Missing values               0               0          0
    ## Sorted                    TRUE            TRUE       TRUE
    ## 

## Interval-level emission data

    ## 
    ##  1093 rows and 136 columns
    ##  1093 unique rows
    ##                                                                                                                                                                                           cpmid
    ## Class                                                                                                                                                                                 character
    ## Minimum            D:1.I:UNITO DISAFA.Pr:AM.VOC.F:../../data-submitted/04/UNITO-DISAFA/test.xlsx.E:Fall24.F:Foulumgård.P:1.T:Machine plot DFC.R:1.R2:.T:2024-09-18 12:30:00.M:Dynamic chamberNA
    ## Maximum            D:1.I:UNITO DISAFA.Pr:AM.VOC.F:../../data-submitted/04/UNITO-DISAFA/test.xlsx.E:Fall24.F:Foulumgård.P:8.T:Machine plot DFC.R:2.R2:.T:2024-09-18 12:30:00.M:Dynamic chamberNA
    ## Mean                                                                                                                                                                                       <NA>
    ## Unique (excld. NA)                                                                                                                                                                           17
    ## Missing values                                                                                                                                                                                0
    ## Sorted                                                                                                                                                                                     TRUE
    ##                                                                                                                                                                                                
    ##                       pub.id      proj     exper      field      plot       rep
    ## Class              character character character  character character character
    ## Minimum                 <NA>    AM.VOC    Fall24 Foulumgård         1         1
    ## Maximum                 <NA>    AM.VOC    Fall24 Foulumgård         8         4
    ## Mean                    <NA>      <NA>      <NA>       <NA>      <NA>      <NA>
    ## Unique (excld. NA)         0         1         1          1        17         4
    ## Missing values          1093         0         0          0         0         0
    ## Sorted                  <NA>      TRUE      TRUE       TRUE      TRUE     FALSE
    ##                                                                                
    ##                            treat       meas.tech meas.tech.det plot.area
    ## Class                  character       character       logical   numeric
    ## Minimum            High acid DFC             bLS          <NA>      0.38
    ## Maximum              No acid DFC Dynamic chamber          <NA>       732
    ## Mean                        <NA>            <NA>          <NA>       161
    ## Unique (excld. NA)             6               2             0         2
    ## Missing values                 0               0          1093         0
    ## Sorted                     FALSE           FALSE          <NA>     FALSE
    ##                                                                         
    ##                        lat    long   country      topo soil.samp.z    clay
    ## Class              numeric numeric character character     logical integer
    ## Minimum               56.5    9.56        DK      Flat        <NA>       9
    ## Maximum               56.5    9.56        DK      Flat        <NA>       9
    ## Mean                  56.5    9.56      <NA>      <NA>        <NA>       9
    ## Unique (excld. NA)       1       1         1         1           0       1
    ## Missing values           0       0         0         0        1093       0
    ## Sorted                TRUE    TRUE      TRUE      TRUE        <NA>    TRUE
    ##                                                                           
    ##                       silt    sand      oc soil.type soil.water soil.water.v
    ## Class              integer integer logical   logical    numeric      logical
    ## Minimum                 24      65    <NA>      <NA>       0.23         <NA>
    ## Maximum                 24      65    <NA>      <NA>       0.23         <NA>
    ## Mean                    24      65    <NA>      <NA>       0.23         <NA>
    ## Unique (excld. NA)       1       1       0         0          1            0
    ## Missing values           0       0    1093      1093          0         1093
    ## Sorted                TRUE    TRUE    <NA>      <NA>       TRUE         <NA>
    ##                                                                             
    ##                    soil.moist soil.ph soil.dens crop.res      till man.source
    ## Class                 logical logical   numeric  logical character  character
    ## Minimum                  <NA>    <NA>       1.1     <NA>        No        pig
    ## Maximum                  <NA>    <NA>       1.1     <NA>        No        pig
    ## Mean                     <NA>    <NA>       1.1     <NA>      <NA>       <NA>
    ## Unique (excld. NA)          0       0         1        0         1          1
    ## Missing values           1093    1093         0     1093         0          0
    ## Sorted                   <NA>    <NA>      TRUE     <NA>      TRUE       TRUE
    ##                                                                              
    ##                    man.source.det man.bed   man.con      man.trt1 man.trt2
    ## Class                     logical logical character     character  logical
    ## Minimum                      <NA>    <NA>    slurry Acidification     <NA>
    ## Maximum                      <NA>    <NA>    slurry          None     <NA>
    ## Mean                         <NA>    <NA>      <NA>          <NA>     <NA>
    ## Unique (excld. NA)              0       0         1             2        0
    ## Missing values               1093    1093         0             0     1093
    ## Sorted                       <NA>    <NA>      TRUE         FALSE     <NA>
    ##                                                                           
    ##                    man.trt3 man.stor  man.dm  man.vs man.tkn man.tan man.tic
    ## Class               logical  logical numeric logical numeric numeric logical
    ## Minimum                <NA>     <NA>    1.96    <NA>    2.42    2.32    <NA>
    ## Maximum                <NA>     <NA>    2.73    <NA>    3.04    2.51    <NA>
    ## Mean                   <NA>     <NA>    2.13    <NA>    2.86    2.44    <NA>
    ## Unique (excld. NA)        0        0       5       0       5       5       0
    ## Missing values         1093     1093       0    1093       0       0    1093
    ## Sorted                 <NA>     <NA>   FALSE    <NA>   FALSE   FALSE    <NA>
    ##                                                                             
    ##                     man.ua man.vfa  man.ph           app.start         app.end
    ## Class              logical numeric numeric     POSIXct, POSIXt POSIXct, POSIXt
    ## Minimum               <NA>    12.7    4.65 2024-09-18 12:30:00            <NA>
    ## Maximum               <NA>    13.4    7.59 2024-09-18 15:03:00            <NA>
    ## Mean                  <NA>    13.1    6.61 2024-09-18 13:17:39            <NA>
    ## Unique (excld. NA)       0       5       5                  13               0
    ## Missing values        1093       0       0                   0            1093
    ## Sorted                <NA>   FALSE   FALSE               FALSE            <NA>
    ##                                                                               
    ##                    app.method app.rate app.rate.unit    incorp time.incorp
    ## Class               character  integer     character character     numeric
    ## Minimum                  bsth       35          t/ha      none        <NA>
    ## Maximum                  bsth       35          t/ha      none        <NA>
    ## Mean                     <NA>       35          <NA>      <NA>        <NA>
    ## Unique (excld. NA)          1        1             1         1           0
    ## Missing values              0        0             0         0        1093
    ## Sorted                   TRUE     TRUE          TRUE      TRUE        <NA>
    ##                                                                           
    ##                    man.area dist.inj furrow.z furrow.w      crop  crop.z
    ## Class               logical  logical  logical  logical character numeric
    ## Minimum                <NA>     <NA>     <NA>     <NA>     grass      15
    ## Maximum                <NA>     <NA>     <NA>     <NA>     grass      15
    ## Mean                   <NA>     <NA>     <NA>     <NA>      <NA>      15
    ## Unique (excld. NA)        0        0        0        0         1       1
    ## Missing values         1093     1093     1093     1093         0       0
    ## Sorted                 <NA>     <NA>     <NA>     <NA>      TRUE    TRUE
    ##                                                                         
    ##                    crop.area     lai notes.plot row.in.file.plot    institute
    ## Class                numeric logical  character          numeric    character
    ## Minimum                 <NA>    <NA>          .                5 UNITO DISAFA
    ## Maximum                 <NA>    <NA>          .               21 UNITO DISAFA
    ## Mean                    <NA>    <NA>       <NA>             14.3         <NA>
    ## Unique (excld. NA)         0       0          1               17            1
    ## Missing values          1093    1093       1039                0            0
    ## Sorted                  <NA>    <NA>       TRUE            FALSE         TRUE
    ##                                                                              
    ##                    sub.period                                           file
    ## Class                 numeric                                      character
    ## Minimum                     4 ../../data-submitted/04/UNITO-DISAFA/test.xlsx
    ## Maximum                     4 ../../data-submitted/04/UNITO-DISAFA/test.xlsx
    ## Mean                        4                                           <NA>
    ## Unique (excld. NA)          1                                              1
    ## Missing values              0                                              0
    ## Sorted                   TRUE                                           TRUE
    ##                                                                             
    ##                      app.start.orig app.end.orig
    ## Class                     character      logical
    ## Minimum            18-09-2024 12:30         <NA>
    ## Maximum            18-09-2024 15:03         <NA>
    ## Mean                           <NA>         <NA>
    ## Unique (excld. NA)               13            0
    ## Missing values                    0         1093
    ## Sorted                        FALSE         <NA>
    ##                                                 
    ##                                                                                                                                                                        cpid
    ## Class                                                                                                                                                             character
    ## Minimum            D:1.I:UNITO DISAFA.Pr:AM.VOC.F:../../data-submitted/04/UNITO-DISAFA/test.xlsx.E:Fall24.F:Foulumgård.P:1.T:Machine plot DFC.R:1.R2:.T:2024-09-18 12:30:00
    ## Maximum            D:1.I:UNITO DISAFA.Pr:AM.VOC.F:../../data-submitted/04/UNITO-DISAFA/test.xlsx.E:Fall24.F:Foulumgård.P:8.T:Machine plot DFC.R:2.R2:.T:2024-09-18 12:30:00
    ## Mean                                                                                                                                                                   <NA>
    ## Unique (excld. NA)                                                                                                                                                       17
    ## Missing values                                                                                                                                                            0
    ## Sorted                                                                                                                                                                 TRUE
    ##                                                                                                                                                                            
    ##                                                     ceid flag.plot
    ## Class                                          character character
    ## Minimum            D:1.I:UNITO DISAFA.Pr:AM.VOC.E:Fall24          
    ## Maximum            D:1.I:UNITO DISAFA.Pr:AM.VOC.E:Fall24          
    ## Mean                                                <NA>      <NA>
    ## Unique (excld. NA)                                     1         1
    ## Missing values                                         0         0
    ## Sorted                                              TRUE      TRUE
    ##                                                                   
    ##                              submitter tan.app interval             t.start
    ## Class                        character numeric  numeric     POSIXct, POSIXt
    ## Minimum            Dela Pierre, Flavia    81.2        1 2024-09-18 12:30:00
    ## Maximum            Dela Pierre, Flavia    87.8      240 2024-09-24 03:15:00
    ## Mean                              <NA>    85.6     47.7 2024-09-21 06:20:02
    ## Unique (excld. NA)                   1       5      240                1064
    ## Missing values                       0       0        0                   0
    ## Sorted                            TRUE   FALSE    FALSE               FALSE
    ##                                                                            
    ##                                  t.end      dt   bg.dl  bg.val   bg.unit
    ## Class                  POSIXct, POSIXt numeric logical numeric character
    ## Minimum            2024-09-18 13:00:00     0.5    <NA>  0.0247       ppm
    ## Maximum            2024-09-24 05:47:00    2.53    <NA>    13.6     µg/m3
    ## Mean               2024-09-21 08:25:03    2.08    <NA>   0.879      <NA>
    ## Unique (excld. NA)                1064       5       0     294         2
    ## Missing values                       0       0    1093       0         0
    ## Sorted                           FALSE   FALSE    <NA>   FALSE     FALSE
    ##                                                                         
    ##                           j.type   j.NH3 j.NH3.unit pH.surf air.temp air.temp.z
    ## Class                  character numeric  character logical  numeric    integer
    ## Minimum            emission rate -0.0588 kg N/ha-hr    <NA>      7.5          2
    ## Maximum            emission rate    1.94 kg N/ha-hr    <NA>     21.1          2
    ## Mean                        <NA>  0.0505       <NA>    <NA>     14.2          2
    ## Unique (excld. NA)             1    1093          1       0      148          1
    ## Missing values                 0       0          0    1093        0          0
    ## Sorted                      TRUE   FALSE       TRUE    <NA>    FALSE       TRUE
    ##                                                                                
    ##                    soil.temp soil.temp.z soil.temp.surf     rad    wind  wind.z
    ## Class                numeric     numeric        logical numeric numeric integer
    ## Minimum                 14.4         0.1           <NA>       0  0.0517       2
    ## Maximum                 16.2         0.1           <NA>     566    2.56       2
    ## Mean                    15.2         0.1           <NA>     141    1.07       2
    ## Unique (excld. NA)        36           1              0     147     240       1
    ## Missing values           853         853           1093     853     853       0
    ## Sorted                 FALSE        TRUE           <NA>   FALSE   FALSE    TRUE
    ##                                                                                
    ##                        MOL   ustar       rl air.pres air.pres.unit    rain
    ## Class              numeric numeric  numeric  numeric     character numeric
    ## Minimum               -967 0.00688 3.65e-10    1e+05            Pa       0
    ## Maximum                572   0.256    0.888   103000            Pa       0
    ## Mean                   -12   0.113   0.0842   102000          <NA>       0
    ## Unique (excld. NA)     175     239      237      240             1       1
    ## Missing values         882     854      854      853           853       0
    ## Sorted               FALSE   FALSE    FALSE    FALSE          TRUE    TRUE
    ##                                                                           
    ##                         rh  wind.loc far.loc notes.int row.in.file.int
    ## Class              numeric character logical character         numeric
    ## Minimum               57.3     Field    <NA>         .               5
    ## Maximum               98.5     Field    <NA>         .            1100
    ## Mean                  88.2      <NA>    <NA>      <NA>             551
    ## Unique (excld. NA)     164         1       0         1            1093
    ## Missing values         853       853    1093      1092               0
    ## Sorted               FALSE      TRUE    <NA>      TRUE           FALSE
    ##                                                                       
    ##                        t.start.orig       t.end.orig j.NH3.orig j.NH3.conv.fact
    ## Class                     character        character    numeric         numeric
    ## Minimum            18-09-2024 12:30 18-09-2024 12:30    -0.0588           0.822
    ## Maximum            24-09-2024 03:15 24-09-2024 03:15       1.94               1
    ## Mean                           <NA>             <NA>     0.0542           0.961
    ## Unique (excld. NA)             1064             1064       1093               2
    ## Missing values                    0                0          0               0
    ## Sorted                        FALSE            FALSE      FALSE           FALSE
    ##                                                                                
    ##                    j.NH3.unit.orig dt.calc dt.diff      ct      mt     cta
    ## Class                    character numeric numeric numeric numeric numeric
    ## Minimum                 kg N/ha-hr     0.5       0     0.5    0.25     0.5
    ## Maximum               kg NH3/ha-hr    2.53       0     137     135     137
    ## Mean                          <NA>    2.08       0    66.9    65.8    67.1
    ## Unique (excld. NA)               2       5       1     296     301     501
    ## Missing values                   0       0       0       0       0       0
    ## Sorted                       FALSE   FALSE    TRUE   FALSE   FALSE   FALSE
    ##                                                                           
    ##                        bta  flag.int rain.rate rain.cum wind.2m   e.int   e.cum
    ## Class              numeric character   numeric  numeric numeric numeric numeric
    ## Minimum                  0                   0        0  0.0517  -0.149   -1.82
    ## Maximum                134                   0        0    2.56     4.9    13.4
    ## Mean                    65      <NA>         0        0    1.07  0.0931    3.99
    ## Unique (excld. NA)     500         1         1        1     240    1093    1093
    ## Missing values           0         0         0        0     853       0       0
    ## Sorted               FALSE      TRUE      TRUE     TRUE   FALSE   FALSE   FALSE
    ##                                                                                
    ##                      e.rel     j.rel  pub.info soil.type2  exper2    rep2
    ## Class              numeric   numeric character    logical logical logical
    ## Minimum            -0.0211 -0.000712         .       <NA>    <NA>    <NA>
    ## Maximum              0.154    0.0222         .       <NA>    <NA>    <NA>
    ## Mean                0.0464  0.000587      <NA>       <NA>    <NA>    <NA>
    ## Unique (excld. NA)    1093      1093         1          0       0       0
    ## Missing values           0         0         0       1093    1093    1093
    ## Sorted               FALSE     FALSE      TRUE       <NA>    <NA>    <NA>
    ##                                                                          
    ##                                      acid  meas.tech.orig meas.tech2 crop.orig
    ## Class                             logical       character  character character
    ## Minimum                             FALSE             bLS    chamber     Grass
    ## Maximum                              TRUE Dynamic chamber  micro met     Grass
    ## Mean               0.585544373284538 TRUE            <NA>       <NA>      <NA>
    ## Unique (excld. NA)                      2               2          2         1
    ## Missing values                          0               0          0         0
    ## Sorted                              FALSE           FALSE      FALSE      TRUE
    ##                                                                               
    ##                                 app.method.orig incorp.orig man.source.orig
    ## Class                                 character   character       character
    ## Minimum            Band spread or trailing hose        None             Pig
    ## Maximum            Band spread or trailing hose        None             Pig
    ## Mean                                       <NA>        <NA>            <NA>
    ## Unique (excld. NA)                            1           1               1
    ## Missing values                                0           0               0
    ## Sorted                                     TRUE        TRUE            TRUE
    ##                                                                            
    ##                    date.start first.row.int row.plot         first.rows
    ## Class                    Date       numeric  numeric             factor
    ## Minimum            2024-09-18             5        5 Plots 10 Emis. 752
    ## Maximum            2024-09-18           858       21  Plots 9 Emis. 699
    ## Mean                     <NA>           504     14.3 Plots 19 Emis. 431
    ## Unique (excld. NA)          1            17       17                 17
    ## Missing values              0             0        0                  0
    ## Sorted                   TRUE         FALSE    FALSE              FALSE
    ##                                                                        
    ##                    ggplotgroup
    ## Class                   factor
    ## Minimum            (4.98,10.3]
    ## Maximum              (15.7,21]
    ## Mean               (10.3,15.7]
    ## Unique (excld. NA)           3
    ## Missing values               0
    ## Sorted                   FALSE
    ## 
