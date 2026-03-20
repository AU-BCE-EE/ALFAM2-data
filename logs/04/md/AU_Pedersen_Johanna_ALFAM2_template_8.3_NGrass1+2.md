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

    ## Version:  3.0-dev

    ## [1] "Date/time: 2026-03-20 11:09:11.18512"

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

| inst.abbrev | submitter         | version | date       |
|:------------|:------------------|:--------|:-----------|
| AU          | Pedersen, Johanna | 1       | 2026/03/16 |

# 2. Contributors

| contributor       | institute         | sub.period | file                                                          |
|:------------------|:------------------|-----------:|:--------------------------------------------------------------|
| Hafner, Sasha     | AU                |          4 | ../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx |
| Pedersen, Johanna | Aarhus University |          4 | ../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx |

# 3. File and directory names

    ## [1] "../../data-submitted/04/AU"

    ## [1] "../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx"

# 4. Location

Location 1: lat=56.48427, long=9.58356 [View on
map](https://maps.google.com/?q=56.48427,9.58356)

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
    ## [1] "Problem, see following rows (compare start time to end time in previous rows):"
    ## [1] 345
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
    ## OK
    ## OK
    ## OK

## Measurement method and units

Measurement technique:

| Method          | Frequency |
|:----------------|----------:|
| Dynamic chamber |      2257 |

Measurement technique classification:

| Classification | Frequency |
|:---------------|----------:|
| chamber        |      2257 |

Emission units and conversion factors.

| Original unit | Conversion factor applied | Final unit |
|:--------------|--------------------------:|:-----------|
| kg N/ha-hr    |                         1 | kg N/ha-hr |

# 7. Value checks

Check to see if submitted values are within a reasonable range.

## Weather

    ## wind : No values to check.
    ## rain.rate : OK
    ## air.temp : OK
    ## soil.temp : No values to check.
    ## soil.temp.surf : No values to check.
    ## air.temp.z : OK
    ## wind.z : No values to check.

## Manure and application

    ## man.stor : No values to check.
    ## man.dm : OK
    ## man.vs : OK
    ## man.tkn : OK
    ## man.tan : OK
    ## man.tic : No values to check.
    ## man.ua : No values to check.
    ## man.vfa : No values to check.
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
    ##         pub.id  meas.tech.det             oc      soil.type   soil.water.v 
    ##           2257           2257           2257           2257           2257 
    ## man.source.det        man.bed       man.trt2       man.trt3       man.stor 
    ##           2257           2257           2257           2257           2257 
    ##        man.tic         man.ua        man.vfa    time.incorp       man.area 
    ##           2257           2257           2257           2257           2257 
    ##       dist.inj       furrow.z       furrow.w      crop.area            lai 
    ##           2257           2257           2257           2257           2257 
    ##     notes.plot          bg.dl        pH.surf      soil.temp    soil.temp.z 
    ##           2188           2257           2257           2257           2257 
    ## soil.temp.surf            rad           wind         wind.z            MOL 
    ##           2257           2257           2257           2257           2257 
    ##          ustar             rl       air.pres  air.pres.unit             rh 
    ##           2257           2257           2257           2257           2257 
    ##       wind.loc        far.loc      notes.int        wind.2m     soil.type2 
    ##           2257           2257           2257           2257           2257 
    ##         exper2           rep2 
    ##           2257           2257

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

![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-30-1.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-30-2.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-30-3.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-30-4.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-30-5.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-30-6.png)<!-- -->

## Final cumulative emission

    ## `stat_bin()` using `bins = 30`. Pick better value `binwidth`.

![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-31-1.png)<!-- -->

## Relative versus absolute emission

![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

## Flux

![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-2.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-3.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-4.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-5.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-6.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-7.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-8.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-9.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-10.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-11.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-12.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-13.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-14.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-15.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-16.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-17.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-33-18.png)<!-- -->

## Weather data

![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-34-2.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-34-3.png)<!-- -->![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-34-4.png)<!-- -->

## Manure and application

![](AU_Pedersen_Johanna_ALFAM2_template_8.3_NGrass1+2_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

# 10. Summary

## Plot-level data

    ## 
    ##  32 rows and 210 columns
    ##  32 unique rows
    ##                       pub.id      proj     exper
    ## Class              character character character
    ## Minimum                 <NA>   N-Grass   Trial 1
    ## Maximum                 <NA>   N-Grass   Trial 2
    ## Mean                    <NA>      <NA>      <NA>
    ## Unique (excld. NA)         0         1         2
    ## Missing values            32         0         0
    ## Sorted                  <NA>      TRUE      TRUE
    ##                                                 
    ##                                                                                                                                                                                         cpmid
    ## Class                                                                                                                                                                               character
    ## Minimum             D:1.I:AU.Pr:N-Grass.F:../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx.E:Trial 1.F:semi-field.P:1.T:Røn-TH.R:1.R2:.T:2025-05-13 10:00:00.M:Dynamic chamberNA
    ## Maximum            D:1.I:AU.Pr:N-Grass.F:../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx.E:Trial 2.F:semi-field.P:8.T:Røn-OSI.R:2.R2:.T:2025-07-29 10:15:00.M:Dynamic chamberNA
    ## Mean                                                                                                                                                                                     <NA>
    ## Unique (excld. NA)                                                                                                                                                                         32
    ## Missing values                                                                                                                                                                              0
    ## Sorted                                                                                                                                                                                   TRUE
    ##                                                                                                                                                                                              
    ##                         field      plot       rep plot.area     lat    long
    ## Class               character character character   numeric numeric numeric
    ## Minimum            semi-field         1         1      0.38    56.5    9.58
    ## Maximum            semi-field         8         4      0.38    56.5    9.58
    ## Mean                     <NA>      <NA>      <NA>      0.38    56.5    9.58
    ## Unique (excld. NA)          1        17         4         1       1       1
    ## Missing values              0         0         0         0       0       0
    ## Sorted                   TRUE     FALSE     FALSE      TRUE    TRUE    TRUE
    ##                                                                            
    ##                      country      topo soil.samp.z    clay    silt    sand
    ## Class              character character   character integer integer integer
    ## Minimum                   DK      Flat         0-5       4       5      49
    ## Maximum                   DK      Flat         0-5      18      31      89
    ## Mean                    <NA>      <NA>        <NA>      11      18      69
    ## Unique (excld. NA)         1         1           1       2       2       2
    ## Missing values             0         0           0       0       0       0
    ## Sorted                  TRUE      TRUE        TRUE   FALSE   FALSE   FALSE
    ##                                                                           
    ##                         oc soil.type soil.water soil.water.v soil.moist soil.ph
    ## Class              logical   logical    numeric      logical  character numeric
    ## Minimum               <NA>      <NA>       0.01         <NA>        Dry     6.1
    ## Maximum               <NA>      <NA>       0.16         <NA>        Dry     6.6
    ## Mean                  <NA>      <NA>     0.0725         <NA>       <NA>    6.38
    ## Unique (excld. NA)       0         0          4            0          1       4
    ## Missing values          32        32          0           32          0       0
    ## Sorted                <NA>      <NA>      FALSE         <NA>       TRUE   FALSE
    ##                                                                                
    ##                    soil.dens  crop.res      till man.source man.source.det
    ## Class                numeric character character  character        logical
    ## Minimum                  1.3       Yes        No        cat           <NA>
    ## Maximum                  1.5       Yes        No        cat           <NA>
    ## Mean                     1.4      <NA>      <NA>       <NA>           <NA>
    ## Unique (excld. NA)         3         1         1          1              0
    ## Missing values             0         0         0          0             32
    ## Sorted                 FALSE      TRUE      TRUE       TRUE           <NA>
    ##                                                                           
    ##                    man.bed   man.con  man.trt1 man.trt2 man.trt3 man.stor
    ## Class              logical character character  logical  logical  logical
    ## Minimum               <NA>    slurry      None     <NA>     <NA>     <NA>
    ## Maximum               <NA>    slurry      None     <NA>     <NA>     <NA>
    ## Mean                  <NA>      <NA>      <NA>     <NA>     <NA>     <NA>
    ## Unique (excld. NA)       0         1         1        0        0        0
    ## Missing values          32         0         0       32       32       32
    ## Sorted                <NA>      TRUE      TRUE     <NA>     <NA>     <NA>
    ##                                                                          
    ##                     man.dm  man.vs man.tkn man.tan man.tic  man.ua man.vfa
    ## Class              numeric numeric numeric numeric logical logical logical
    ## Minimum               7.65     6.2    3.29    1.82    <NA>    <NA>    <NA>
    ## Maximum               9.28    7.15    3.37       2    <NA>    <NA>    <NA>
    ## Mean                  8.46    6.68    3.33    1.91    <NA>    <NA>    <NA>
    ## Unique (excld. NA)       2       2       2       2       0       0       0
    ## Missing values           0       0       0       0      32      32      32
    ## Sorted               FALSE   FALSE   FALSE   FALSE    <NA>    <NA>    <NA>
    ##                                                                           
    ##                     man.ph           app.start             app.end app.method
    ## Class              numeric     POSIXct, POSIXt     POSIXct, POSIXt  character
    ## Minimum               6.89 2025-05-13 10:00:00 2025-05-13 10:42:00       bsth
    ## Maximum               6.92 2025-07-29 10:15:00 2025-07-29 10:51:00         os
    ## Mean                   6.9 2025-06-20 22:07:30 2025-06-20 22:46:30       <NA>
    ## Unique (excld. NA)       2                   2                   2          2
    ## Missing values           0                   0                   0          0
    ## Sorted               FALSE                TRUE                TRUE      FALSE
    ##                                                                              
    ##                    app.rate app.rate.unit    incorp time.incorp man.area
    ## Class               integer     character character     numeric  logical
    ## Minimum                  30          t/ha      none        <NA>     <NA>
    ## Maximum                  30          t/ha      none        <NA>     <NA>
    ## Mean                     30          <NA>      <NA>        <NA>     <NA>
    ## Unique (excld. NA)        1             1         1           0        0
    ## Missing values            0             0         0          32       32
    ## Sorted                 TRUE          TRUE      TRUE        <NA>     <NA>
    ##                                                                         
    ##                    dist.inj furrow.z furrow.w      crop  crop.z crop.area
    ## Class               logical  logical  logical character numeric   numeric
    ## Minimum                <NA>     <NA>     <NA>     grass       7      <NA>
    ## Maximum                <NA>     <NA>     <NA>     grass       7      <NA>
    ## Mean                   <NA>     <NA>     <NA>      <NA>       7      <NA>
    ## Unique (excld. NA)        0        0        0         1       1         0
    ## Missing values           32       32       32         0       0        32
    ## Sorted                 <NA>     <NA>     <NA>      TRUE    TRUE      <NA>
    ##                                                                          
    ##                        lai notes.plot row.in.file.plot institute sub.period
    ## Class              logical  character          numeric character    numeric
    ## Minimum               <NA>          .                5        AU          4
    ## Maximum               <NA>          .               36        AU          4
    ## Mean                  <NA>       <NA>             20.5      <NA>          4
    ## Unique (excld. NA)       0          1               32         1          1
    ## Missing values          32         31                0         0          0
    ## Sorted                <NA>       TRUE            FALSE      TRUE       TRUE
    ##                                                                            
    ##                                                                             file
    ## Class                                                                  character
    ## Minimum            ../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx
    ## Maximum            ../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx
    ## Mean                                                                        <NA>
    ## Unique (excld. NA)                                                             1
    ## Missing values                                                                 0
    ## Sorted                                                                      TRUE
    ##                                                                                 
    ##                        treat       meas.tech meas.tech.det   app.start.orig
    ## Class              character       character       logical        character
    ## Minimum              Jyn-OSI Dynamic chamber          <NA> 13-05-2025 10:00
    ## Maximum               Røn-TH Dynamic chamber          <NA> 29-07-2025 10:15
    ## Mean                    <NA>            <NA>          <NA>             <NA>
    ## Unique (excld. NA)         4               1             0                2
    ## Missing values             0               0            32                0
    ## Sorted                 FALSE            TRUE          <NA>             TRUE
    ##                                                                            
    ##                        app.end.orig
    ## Class                     character
    ## Minimum            13-05-2025 10:42
    ## Maximum            29-07-2025 10:51
    ## Mean                           <NA>
    ## Unique (excld. NA)                2
    ## Missing values                    0
    ## Sorted                         TRUE
    ##                                    
    ##                                                                                                                                                                      cpid
    ## Class                                                                                                                                                           character
    ## Minimum             D:1.I:AU.Pr:N-Grass.F:../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx.E:Trial 1.F:semi-field.P:1.T:Røn-TH.R:1.R2:.T:2025-05-13 10:00:00
    ## Maximum            D:1.I:AU.Pr:N-Grass.F:../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx.E:Trial 2.F:semi-field.P:8.T:Røn-OSI.R:2.R2:.T:2025-07-29 10:15:00
    ## Mean                                                                                                                                                                 <NA>
    ## Unique (excld. NA)                                                                                                                                                     32
    ## Missing values                                                                                                                                                          0
    ## Sorted                                                                                                                                                               TRUE
    ##                                                                                                                                                                          
    ##                                             ceid flag.plot          submitter
    ## Class                                  character character          character
    ## Minimum            D:1.I:AU.Pr:N-Grass.E:Trial 1           Pedersen, Johanna 
    ## Maximum            D:1.I:AU.Pr:N-Grass.E:Trial 2           Pedersen, Johanna 
    ## Mean                                        <NA>      <NA>               <NA>
    ## Unique (excld. NA)                             2         1                  1
    ## Missing values                                 0         0                  0
    ## Sorted                                      TRUE      TRUE               TRUE
    ##                                                                              
    ##                    tan.app e.cum.1 e.cum.4 e.cum.6 e.cum.12 e.cum.24 e.cum.48
    ## Class              numeric numeric numeric numeric  numeric  numeric  numeric
    ## Minimum               54.6    <NA>  -0.115  -0.138   0.0428     0.39     2.05
    ## Maximum                 60    <NA>    9.16    11.4     16.8     22.2     37.4
    ## Mean                  57.3    <NA>    4.36     5.9     8.63     12.6     19.2
    ## Unique (excld. NA)       2       0      32      32       32       32       32
    ## Missing values           0      32       0       0        0        0        0
    ## Sorted               FALSE    <NA>   FALSE   FALSE    FALSE    FALSE    FALSE
    ##                                                                              
    ##                    e.cum.72 e.cum.96 e.cum.168 e.cum.final e.rel.1  e.rel.4
    ## Class               numeric  numeric   numeric     numeric numeric  numeric
    ## Minimum                   3     3.98       6.3        6.74    <NA> -0.00211
    ## Maximum                41.1     44.4      51.2        52.2    <NA>    0.153
    ## Mean                   22.2     24.3      28.2        28.7    <NA>   0.0754
    ## Unique (excld. NA)       32       32        32          32       0       32
    ## Missing values            0        0         0           0      32        0
    ## Sorted                FALSE    FALSE     FALSE       FALSE    <NA>    FALSE
    ##                                                                            
    ##                     e.rel.6 e.rel.12 e.rel.24 e.rel.48 e.rel.72 e.rel.96
    ## Class               numeric  numeric  numeric  numeric  numeric  numeric
    ## Minimum            -0.00253 0.000783  0.00714   0.0375   0.0549    0.073
    ## Maximum               0.189    0.279    0.377    0.623     0.72    0.813
    ## Mean                  0.102    0.149     0.22    0.333    0.386    0.423
    ## Unique (excld. NA)       32       32       32       32       32       32
    ## Missing values            0        0        0        0        0        0
    ## Sorted                FALSE    FALSE    FALSE    FALSE    FALSE    FALSE
    ##                                                                         
    ##                    e.rel.168 e.rel.final  rain.1  rain.4  rain.6 rain.12
    ## Class                numeric     numeric numeric numeric numeric numeric
    ## Minimum                0.115       0.124    <NA>       0       0       0
    ## Maximum                0.937       0.955    <NA>       0       0       0
    ## Mean                    0.49         0.5    <NA>       0       0       0
    ## Unique (excld. NA)        32          32       0       1       1       1
    ## Missing values             0           0      32       0       0       0
    ## Sorted                 FALSE       FALSE    <NA>    TRUE    TRUE    TRUE
    ##                                                                         
    ##                    rain.24 rain.48 rain.72 rain.96 rain.168 rain.final
    ## Class              numeric numeric numeric numeric  numeric    numeric
    ## Minimum                  0       0       0       0        0          0
    ## Maximum                  0       0       0       0        0          0
    ## Mean                     0       0       0       0        0          0
    ## Unique (excld. NA)       1       1       1       1        1          1
    ## Missing values           0       0       0       0        0          0
    ## Sorted                TRUE    TRUE    TRUE    TRUE     TRUE       TRUE
    ##                                                                       
    ##                    air.temp.1 air.temp.4 air.temp.6 air.temp.12 air.temp.24
    ## Class                 numeric    numeric    numeric     numeric     numeric
    ## Minimum                  <NA>       16.7       16.9        15.4        12.6
    ## Maximum                  <NA>       18.8       18.9        18.1        15.8
    ## Mean                     <NA>       17.8       17.9        16.7        14.1
    ## Unique (excld. NA)          0          6         11          14          23
    ## Missing values             32          0          0           0           0
    ## Sorted                   <NA>      FALSE      FALSE       FALSE       FALSE
    ##                                                                            
    ##                    air.temp.48 air.temp.72 air.temp.96 air.temp.168 air.temp.mn
    ## Class                  numeric     numeric     numeric      numeric     numeric
    ## Minimum                   12.9        12.2        12.3         12.8          13
    ## Maximum                   16.3        16.6        16.7         16.5        16.2
    ## Mean                      14.6        14.4        14.6         14.7        14.6
    ## Unique (excld. NA)          31          32          32           32          31
    ## Missing values               0           0           0            0           0
    ## Sorted                   FALSE       FALSE       FALSE        FALSE       FALSE
    ##                                                                                
    ##                    soil.temp.1 soil.temp.4 soil.temp.6 soil.temp.12
    ## Class                  numeric     numeric     numeric      numeric
    ## Minimum                   <NA>        <NA>        <NA>         <NA>
    ## Maximum                   <NA>        <NA>        <NA>         <NA>
    ## Mean                      <NA>        <NA>        <NA>         <NA>
    ## Unique (excld. NA)           0           0           0            0
    ## Missing values              32          32          32           32
    ## Sorted                    <NA>        <NA>        <NA>         <NA>
    ##                                                                    
    ##                    soil.temp.24 soil.temp.48 soil.temp.72 soil.temp.96
    ## Class                   numeric      numeric      numeric      numeric
    ## Minimum                    <NA>         <NA>         <NA>         <NA>
    ## Maximum                    <NA>         <NA>         <NA>         <NA>
    ## Mean                       <NA>         <NA>         <NA>         <NA>
    ## Unique (excld. NA)            0            0            0            0
    ## Missing values               32           32           32           32
    ## Sorted                     <NA>         <NA>         <NA>         <NA>
    ##                                                                       
    ##                    soil.temp.168 soil.temp.mn soil.temp.surf.1 soil.temp.surf.4
    ## Class                    numeric      numeric          numeric          numeric
    ## Minimum                     <NA>         <NA>             <NA>             <NA>
    ## Maximum                     <NA>         <NA>             <NA>             <NA>
    ## Mean                        <NA>         <NA>             <NA>             <NA>
    ## Unique (excld. NA)             0            0                0                0
    ## Missing values                32           32               32               32
    ## Sorted                      <NA>         <NA>             <NA>             <NA>
    ##                                                                                
    ##                    soil.temp.surf.6 soil.temp.surf.12 soil.temp.surf.24
    ## Class                       numeric           numeric           numeric
    ## Minimum                        <NA>              <NA>              <NA>
    ## Maximum                        <NA>              <NA>              <NA>
    ## Mean                           <NA>              <NA>              <NA>
    ## Unique (excld. NA)                0                 0                 0
    ## Missing values                   32                32                32
    ## Sorted                         <NA>              <NA>              <NA>
    ##                                                                        
    ##                    soil.temp.surf.48 soil.temp.surf.72 soil.temp.surf.96
    ## Class                        numeric           numeric           numeric
    ## Minimum                         <NA>              <NA>              <NA>
    ## Maximum                         <NA>              <NA>              <NA>
    ## Mean                            <NA>              <NA>              <NA>
    ## Unique (excld. NA)                 0                 0                 0
    ## Missing values                    32                32                32
    ## Sorted                          <NA>              <NA>              <NA>
    ##                                                                         
    ##                    soil.temp.surf.168 soil.temp.surf.mn  wind.1  wind.4  wind.6
    ## Class                         numeric           numeric numeric numeric numeric
    ## Minimum                          <NA>              <NA>    <NA>    <NA>    <NA>
    ## Maximum                          <NA>              <NA>    <NA>    <NA>    <NA>
    ## Mean                             <NA>              <NA>    <NA>    <NA>    <NA>
    ## Unique (excld. NA)                  0                 0       0       0       0
    ## Missing values                     32                32      32      32      32
    ## Sorted                           <NA>              <NA>    <NA>    <NA>    <NA>
    ##                                                                                
    ##                    wind.12 wind.24 wind.48 wind.72 wind.96 wind.168 wind.mn
    ## Class              numeric numeric numeric numeric numeric  numeric numeric
    ## Minimum               <NA>    <NA>    <NA>    <NA>    <NA>     <NA>    <NA>
    ## Maximum               <NA>    <NA>    <NA>    <NA>    <NA>     <NA>    <NA>
    ## Mean                  <NA>    <NA>    <NA>    <NA>    <NA>     <NA>    <NA>
    ## Unique (excld. NA)       0       0       0       0       0        0       0
    ## Missing values          32      32      32      32      32       32      32
    ## Sorted                <NA>    <NA>    <NA>    <NA>    <NA>     <NA>    <NA>
    ##                                                                            
    ##                    wind.2m.1 wind.2m.4 wind.2m.6 wind.2m.12 wind.2m.24
    ## Class                numeric   numeric   numeric    numeric    numeric
    ## Minimum                 <NA>      <NA>      <NA>       <NA>       <NA>
    ## Maximum                 <NA>      <NA>      <NA>       <NA>       <NA>
    ## Mean                    <NA>      <NA>      <NA>       <NA>       <NA>
    ## Unique (excld. NA)         0         0         0          0          0
    ## Missing values            32        32        32         32         32
    ## Sorted                  <NA>      <NA>      <NA>       <NA>       <NA>
    ##                                                                       
    ##                    wind.2m.48 wind.2m.72 wind.2m.96 wind.2m.168 wind.2m.mn
    ## Class                 numeric    numeric    numeric     numeric    numeric
    ## Minimum                  <NA>       <NA>       <NA>        <NA>       <NA>
    ## Maximum                  <NA>       <NA>       <NA>        <NA>       <NA>
    ## Mean                     <NA>       <NA>       <NA>        <NA>       <NA>
    ## Unique (excld. NA)          0          0          0           0          0
    ## Missing values             32         32         32          32         32
    ## Sorted                   <NA>       <NA>       <NA>        <NA>       <NA>
    ##                                                                           
    ##                      rad.1   rad.4   rad.6  rad.12  rad.24  rad.48  rad.72
    ## Class              numeric numeric numeric numeric numeric numeric numeric
    ## Minimum               <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Maximum               <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Mean                  <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Unique (excld. NA)       0       0       0       0       0       0       0
    ## Missing values          32      32      32      32      32      32      32
    ## Sorted                <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ##                                                                           
    ##                     rad.96 rad.168  rad.mn rain.rate.1 rain.rate.4 rain.rate.6
    ## Class              numeric numeric numeric     numeric     numeric     numeric
    ## Minimum               <NA>    <NA>    <NA>        <NA>           0           0
    ## Maximum               <NA>    <NA>    <NA>        <NA>           0           0
    ## Mean                  <NA>    <NA>    <NA>        <NA>           0           0
    ## Unique (excld. NA)       0       0       0           0           1           1
    ## Missing values          32      32      32          32           0           0
    ## Sorted                <NA>    <NA>    <NA>        <NA>        TRUE        TRUE
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
    ## Minimum                       0             0            0    <NA>    <NA>
    ## Maximum                       0             0            0    <NA>    <NA>
    ## Mean                          0             0            0    <NA>    <NA>
    ## Unique (excld. NA)            1             1            1       0       0
    ## Missing values                0             0            0      32      32
    ## Sorted                     TRUE          TRUE         TRUE    <NA>    <NA>
    ##                                                                           
    ##                       rh.6   rh.12   rh.24   rh.48   rh.72   rh.96  rh.168
    ## Class              numeric numeric numeric numeric numeric numeric numeric
    ## Minimum               <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Maximum               <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Mean                  <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Unique (excld. NA)       0       0       0       0       0       0       0
    ## Missing values          32      32      32      32      32      32      32
    ## Sorted                <NA>    <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ##                                                                           
    ##                      rh.mn first.row.in.file.int last.row.in.file.int  n.ints
    ## Class              numeric               numeric              numeric integer
    ## Minimum               <NA>                     5                   73      66
    ## Maximum               <NA>                  2190                 2260      74
    ## Mean                  <NA>                  1100                 1170    70.5
    ## Unique (excld. NA)       0                    32                   32       5
    ## Missing values          32                     0                    0       0
    ## Sorted                <NA>                 FALSE                FALSE   FALSE
    ##                                                                              
    ##                        dt1    j.rel1  j.NH31  dt.min  dt.max  ct.min  ct.max
    ## Class              numeric   numeric numeric numeric numeric numeric numeric
    ## Minimum               2.53 -0.000427 -0.0233   0.283    2.53    2.53     185
    ## Maximum               2.53    0.0486    2.91    2.52    16.9    2.53     188
    ## Mean                  2.53    0.0209    1.21    2.45    9.17    2.53     186
    ## Unique (excld. NA)       1        32      32       2       3       1       5
    ## Missing values           0         0       0       0       0       0       0
    ## Sorted                TRUE     FALSE   FALSE   FALSE   FALSE    TRUE   FALSE
    ##                                                                             
    ##                              t.start.p             t.end.p air.temp.z
    ## Class                  POSIXct, POSIXt     POSIXct, POSIXt    integer
    ## Minimum            2025-05-13 10:52:00 2025-05-21 02:56:00          2
    ## Maximum            2025-07-29 13:26:00 2025-08-06 05:20:00          2
    ## Mean               2025-06-21 00:09:30 2025-06-28 16:05:15          2
    ## Unique (excld. NA)                  32                  32          1
    ## Missing values                       0                   0          0
    ## Sorted                           FALSE               FALSE       TRUE
    ##                                                                      
    ##                    soil.temp.z  wind.z wind.loc far.loc  pub.info soil.type2
    ## Class                  logical logical  logical logical character    logical
    ## Minimum                   <NA>    <NA>     <NA>    <NA>         .       <NA>
    ## Maximum                   <NA>    <NA>     <NA>    <NA>         .       <NA>
    ## Mean                      <NA>    <NA>     <NA>    <NA>      <NA>       <NA>
    ## Unique (excld. NA)           0       0        0       0         1          0
    ## Missing values              32      32       32      32         0         32
    ## Sorted                    <NA>    <NA>     <NA>    <NA>      TRUE       <NA>
    ##                                                                             
    ##                     exper2    rep2    acid  meas.tech.orig meas.tech2 crop.orig
    ## Class              logical logical logical       character  character character
    ## Minimum               <NA>    <NA>   FALSE Dynamic chamber    chamber     Grass
    ## Maximum               <NA>    <NA>   FALSE Dynamic chamber    chamber     Grass
    ## Mean                  <NA>    <NA>  0 TRUE            <NA>       <NA>      <NA>
    ## Unique (excld. NA)       0       0       1               1          1         1
    ## Missing values          32      32       0               0          0         0
    ## Sorted                <NA>    <NA>    TRUE            TRUE       TRUE      TRUE
    ##                                                                                
    ##                                 app.method.orig incorp.orig man.source.orig
    ## Class                                 character   character       character
    ## Minimum            Band spread or trailing hose        None          Cattle
    ## Maximum                     Open slot injection        None          Cattle
    ## Mean                                       <NA>        <NA>            <NA>
    ## Unique (excld. NA)                            2           1               1
    ## Missing values                                0           0               0
    ## Sorted                                    FALSE        TRUE            TRUE
    ##                                                                            
    ##                    date.start
    ## Class                    Date
    ## Minimum            2025-05-13
    ## Maximum            2025-07-29
    ## Mean                     <NA>
    ## Unique (excld. NA)          2
    ## Missing values              0
    ## Sorted                   TRUE
    ## 

## Interval-level emission data

    ## 
    ##  2257 rows and 139 columns
    ##  2257 unique rows
    ##                                                                                                                                                                                         cpmid
    ## Class                                                                                                                                                                               character
    ## Minimum             D:1.I:AU.Pr:N-Grass.F:../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx.E:Trial 1.F:semi-field.P:1.T:Røn-TH.R:1.R2:.T:2025-05-13 10:00:00.M:Dynamic chamberNA
    ## Maximum            D:1.I:AU.Pr:N-Grass.F:../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx.E:Trial 2.F:semi-field.P:8.T:Røn-OSI.R:2.R2:.T:2025-07-29 10:15:00.M:Dynamic chamberNA
    ## Mean                                                                                                                                                                                     <NA>
    ## Unique (excld. NA)                                                                                                                                                                         32
    ## Missing values                                                                                                                                                                              0
    ## Sorted                                                                                                                                                                                   TRUE
    ##                                                                                                                                                                                              
    ##                       pub.id      proj     exper      field      plot       rep
    ## Class              character character character  character character character
    ## Minimum                 <NA>   N-Grass   Trial 1 semi-field         1         1
    ## Maximum                 <NA>   N-Grass   Trial 2 semi-field         8         4
    ## Mean                    <NA>      <NA>      <NA>       <NA>      <NA>      <NA>
    ## Unique (excld. NA)         0         1         2          1        17         4
    ## Missing values          2257         0         0          0         0         0
    ## Sorted                  <NA>      TRUE      TRUE       TRUE     FALSE     FALSE
    ##                                                                                
    ##                        treat       meas.tech meas.tech.det plot.area     lat
    ## Class              character       character       logical   numeric numeric
    ## Minimum              Jyn-OSI Dynamic chamber          <NA>      0.38    56.5
    ## Maximum               Røn-TH Dynamic chamber          <NA>      0.38    56.5
    ## Mean                    <NA>            <NA>          <NA>      0.38    56.5
    ## Unique (excld. NA)         4               1             0         1       1
    ## Missing values             0               0          2257         0       0
    ## Sorted                 FALSE            TRUE          <NA>      TRUE    TRUE
    ##                                                                             
    ##                       long   country      topo soil.samp.z    clay    silt
    ## Class              numeric character character   character integer integer
    ## Minimum               9.58        DK      Flat         0-5       4       5
    ## Maximum               9.58        DK      Flat         0-5      18      31
    ## Mean                  9.58      <NA>      <NA>        <NA>      11      18
    ## Unique (excld. NA)       1         1         1           1       2       2
    ## Missing values           0         0         0           0       0       0
    ## Sorted                TRUE      TRUE      TRUE        TRUE   FALSE   FALSE
    ##                                                                           
    ##                       sand      oc soil.type soil.water soil.water.v soil.moist
    ## Class              integer logical   logical    numeric      logical  character
    ## Minimum                 49    <NA>      <NA>       0.01         <NA>        Dry
    ## Maximum                 89    <NA>      <NA>       0.16         <NA>        Dry
    ## Mean                    69    <NA>      <NA>     0.0737         <NA>       <NA>
    ## Unique (excld. NA)       2       0         0          4            0          1
    ## Missing values           0    2257      2257          0         2257          0
    ## Sorted               FALSE    <NA>      <NA>      FALSE         <NA>       TRUE
    ##                                                                                
    ##                    soil.ph soil.dens  crop.res      till man.source
    ## Class              numeric   numeric character character  character
    ## Minimum                6.1       1.3       Yes        No        cat
    ## Maximum                6.6       1.5       Yes        No        cat
    ## Mean                  6.38       1.4      <NA>      <NA>       <NA>
    ## Unique (excld. NA)       4         3         1         1          1
    ## Missing values           0         0         0         0          0
    ## Sorted               FALSE     FALSE      TRUE      TRUE       TRUE
    ##                                                                    
    ##                    man.source.det man.bed   man.con  man.trt1 man.trt2 man.trt3
    ## Class                     logical logical character character  logical  logical
    ## Minimum                      <NA>    <NA>    slurry      None     <NA>     <NA>
    ## Maximum                      <NA>    <NA>    slurry      None     <NA>     <NA>
    ## Mean                         <NA>    <NA>      <NA>      <NA>     <NA>     <NA>
    ## Unique (excld. NA)              0       0         1         1        0        0
    ## Missing values               2257    2257         0         0     2257     2257
    ## Sorted                       <NA>    <NA>      TRUE      TRUE     <NA>     <NA>
    ##                                                                                
    ##                    man.stor  man.dm  man.vs man.tkn man.tan man.tic  man.ua
    ## Class               logical numeric numeric numeric numeric logical logical
    ## Minimum                <NA>    7.65     6.2    3.29    1.82    <NA>    <NA>
    ## Maximum                <NA>    9.28    7.15    3.37       2    <NA>    <NA>
    ## Mean                   <NA>    8.43    6.65    3.33    1.91    <NA>    <NA>
    ## Unique (excld. NA)        0       2       2       2       2       0       0
    ## Missing values         2257       0       0       0       0    2257    2257
    ## Sorted                 <NA>   FALSE   FALSE   FALSE   FALSE    <NA>    <NA>
    ##                                                                            
    ##                    man.vfa  man.ph           app.start             app.end
    ## Class              logical numeric     POSIXct, POSIXt     POSIXct, POSIXt
    ## Minimum               <NA>    6.89 2025-05-13 10:00:00 2025-05-13 10:42:00
    ## Maximum               <NA>    6.92 2025-07-29 10:15:00 2025-07-29 10:51:00
    ## Mean                  <NA>     6.9 2025-06-22 14:39:37 2025-06-22 15:18:29
    ## Unique (excld. NA)       0       2                   2                   2
    ## Missing values        2257       0                   0                   0
    ## Sorted                <NA>   FALSE                TRUE                TRUE
    ##                                                                           
    ##                    app.method app.rate app.rate.unit    incorp time.incorp
    ## Class               character  integer     character character     numeric
    ## Minimum                  bsth       30          t/ha      none        <NA>
    ## Maximum                    os       30          t/ha      none        <NA>
    ## Mean                     <NA>       30          <NA>      <NA>        <NA>
    ## Unique (excld. NA)          2        1             1         1           0
    ## Missing values              0        0             0         0        2257
    ## Sorted                  FALSE     TRUE          TRUE      TRUE        <NA>
    ##                                                                           
    ##                    man.area dist.inj furrow.z furrow.w      crop  crop.z
    ## Class               logical  logical  logical  logical character numeric
    ## Minimum                <NA>     <NA>     <NA>     <NA>     grass       7
    ## Maximum                <NA>     <NA>     <NA>     <NA>     grass       7
    ## Mean                   <NA>     <NA>     <NA>     <NA>      <NA>       7
    ## Unique (excld. NA)        0        0        0        0         1       1
    ## Missing values         2257     2257     2257     2257         0       0
    ## Sorted                 <NA>     <NA>     <NA>     <NA>      TRUE    TRUE
    ##                                                                         
    ##                    crop.area     lai notes.plot row.in.file.plot institute
    ## Class                numeric logical  character          numeric character
    ## Minimum                 <NA>    <NA>          .                5        AU
    ## Maximum                 <NA>    <NA>          .               36        AU
    ## Mean                    <NA>    <NA>       <NA>             20.8      <NA>
    ## Unique (excld. NA)         0       0          1               32         1
    ## Missing values          2257    2257       2188                0         0
    ## Sorted                  <NA>    <NA>       TRUE            FALSE      TRUE
    ##                                                                           
    ##                    sub.period
    ## Class                 numeric
    ## Minimum                     4
    ## Maximum                     4
    ## Mean                        4
    ## Unique (excld. NA)          1
    ## Missing values              0
    ## Sorted                   TRUE
    ##                              
    ##                                                                             file
    ## Class                                                                  character
    ## Minimum            ../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx
    ## Maximum            ../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx
    ## Mean                                                                        <NA>
    ## Unique (excld. NA)                                                             1
    ## Missing values                                                                 0
    ## Sorted                                                                      TRUE
    ##                                                                                 
    ##                      app.start.orig     app.end.orig
    ## Class                     character        character
    ## Minimum            13-05-2025 10:00 13-05-2025 10:42
    ## Maximum            29-07-2025 10:15 29-07-2025 10:51
    ## Mean                           <NA>             <NA>
    ## Unique (excld. NA)                2                2
    ## Missing values                    0                0
    ## Sorted                         TRUE             TRUE
    ##                                                     
    ##                                                                                                                                                                      cpid
    ## Class                                                                                                                                                           character
    ## Minimum             D:1.I:AU.Pr:N-Grass.F:../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx.E:Trial 1.F:semi-field.P:1.T:Røn-TH.R:1.R2:.T:2025-05-13 10:00:00
    ## Maximum            D:1.I:AU.Pr:N-Grass.F:../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx.E:Trial 2.F:semi-field.P:8.T:Røn-OSI.R:2.R2:.T:2025-07-29 10:15:00
    ## Mean                                                                                                                                                                 <NA>
    ## Unique (excld. NA)                                                                                                                                                     32
    ## Missing values                                                                                                                                                          0
    ## Sorted                                                                                                                                                               TRUE
    ##                                                                                                                                                                          
    ##                                             ceid flag.plot          submitter
    ## Class                                  character character          character
    ## Minimum            D:1.I:AU.Pr:N-Grass.E:Trial 1           Pedersen, Johanna 
    ## Maximum            D:1.I:AU.Pr:N-Grass.E:Trial 2           Pedersen, Johanna 
    ## Mean                                        <NA>      <NA>               <NA>
    ## Unique (excld. NA)                             2         1                  1
    ## Missing values                                 0         0                  0
    ## Sorted                                      TRUE      TRUE               TRUE
    ##                                                                              
    ##                    tan.app interval             t.start               t.end
    ## Class              numeric  numeric     POSIXct, POSIXt     POSIXct, POSIXt
    ## Minimum               54.6        1 2025-05-13 10:52:00 2025-05-13 13:24:00
    ## Maximum                 60       74 2025-08-06 05:20:00 2025-08-06 07:52:00
    ## Mean                  57.2     35.8 2025-06-26 14:18:42 2025-06-26 16:57:19
    ## Unique (excld. NA)       2       74                2257                2257
    ## Missing values           0        0                   0                   0
    ## Sorted               FALSE    FALSE               FALSE               FALSE
    ##                                                                            
    ##                         dt   bg.dl  bg.val   bg.unit        j.type   j.NH3
    ## Class              numeric logical numeric character     character numeric
    ## Minimum              0.283    <NA>   0.011       ppm emission rate -0.0384
    ## Maximum               16.9    <NA>   0.125       ppm emission rate    2.91
    ## Mean                  2.64    <NA>  0.0355      <NA>          <NA>   0.147
    ## Unique (excld. NA)       9       0     143         1             1    2257
    ## Missing values           0    2257       0         0             0       0
    ## Sorted               FALSE    <NA>   FALSE      TRUE          TRUE   FALSE
    ##                                                                           
    ##                    j.NH3.unit pH.surf air.temp air.temp.z soil.temp soil.temp.z
    ## Class               character logical  numeric    integer   logical     logical
    ## Minimum            kg N/ha-hr    <NA>      6.7          2      <NA>        <NA>
    ## Maximum            kg N/ha-hr    <NA>     22.3          2      <NA>        <NA>
    ## Mean                     <NA>    <NA>     14.6          2      <NA>        <NA>
    ## Unique (excld. NA)          1       0      131          1         0           0
    ## Missing values              0    2257        0          0      2257        2257
    ## Sorted                   TRUE    <NA>    FALSE       TRUE      <NA>        <NA>
    ##                                                                                
    ##                    soil.temp.surf     rad    wind  wind.z     MOL   ustar
    ## Class                     logical logical logical logical logical logical
    ## Minimum                      <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Maximum                      <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Mean                         <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ## Unique (excld. NA)              0       0       0       0       0       0
    ## Missing values               2257    2257    2257    2257    2257    2257
    ## Sorted                       <NA>    <NA>    <NA>    <NA>    <NA>    <NA>
    ##                                                                          
    ##                         rl air.pres air.pres.unit    rain      rh wind.loc
    ## Class              logical  logical       logical numeric logical  logical
    ## Minimum               <NA>     <NA>          <NA>       0    <NA>     <NA>
    ## Maximum               <NA>     <NA>          <NA>       0    <NA>     <NA>
    ## Mean                  <NA>     <NA>          <NA>       0    <NA>     <NA>
    ## Unique (excld. NA)       0        0             0       1       0        0
    ## Missing values        2257     2257          2257       0    2257     2257
    ## Sorted                <NA>     <NA>          <NA>    TRUE    <NA>     <NA>
    ##                                                                           
    ##                    far.loc chamber.vol chamber.flow chamber.AER notes.int
    ## Class              logical     numeric      numeric     numeric   logical
    ## Minimum               <NA>        0.15        0.032       0.213      <NA>
    ## Maximum               <NA>        0.15        0.032       0.213      <NA>
    ## Mean                  <NA>        0.15        0.032       0.213      <NA>
    ## Unique (excld. NA)       0           1            1           1         0
    ## Missing values        2257           0            0           0      2257
    ## Sorted                <NA>        TRUE         TRUE        TRUE      <NA>
    ##                                                                          
    ##                    row.in.file.int     t.start.orig       t.end.orig j.NH3.orig
    ## Class                      numeric        character        character    numeric
    ## Minimum                          5 01-08-2025 00:04 01-08-2025 00:04    -0.0384
    ## Maximum                       2260 31-07-2025 23:56 31-07-2025 23:56       2.91
    ## Mean                          1130             <NA>             <NA>      0.147
    ## Unique (excld. NA)            2257             2257             2257       2257
    ## Missing values                   0                0                0          0
    ## Sorted                       FALSE            FALSE            FALSE      FALSE
    ##                                                                                
    ##                    j.NH3.conv.fact j.NH3.unit.orig dt.calc dt.diff      ct
    ## Class                      numeric       character numeric numeric numeric
    ## Minimum                          1      kg N/ha-hr   0.283       0    2.53
    ## Maximum                          1      kg N/ha-hr    16.9       0     188
    ## Mean                             1            <NA>    2.64       0    96.3
    ## Unique (excld. NA)               1               1       9       1     169
    ## Missing values                   0               0       0       0       0
    ## Sorted                        TRUE            TRUE   FALSE    TRUE   FALSE
    ##                                                                           
    ##                         mt     cta     bta  flag.int rain.rate rain.cum wind.2m
    ## Class              numeric numeric numeric character   numeric  numeric numeric
    ## Minimum               1.27    3.32   0.783                   0        0    <NA>
    ## Maximum                187     190     187                   0        0    <NA>
    ## Mean                  94.9    98.3    95.7      <NA>         0        0    <NA>
    ## Unique (excld. NA)     186    2257    2257         1         1        1       0
    ## Missing values           0       0       0         0         0        0    2257
    ## Sorted               FALSE   FALSE   FALSE      TRUE      TRUE     TRUE    <NA>
    ##                                                                                
    ##                      e.int   e.cum    e.rel     j.rel  pub.info soil.type2
    ## Class              numeric numeric  numeric   numeric character    logical
    ## Minimum            -0.0973  -0.156 -0.00287 -0.000704         .       <NA>
    ## Maximum               11.1    52.2    0.955    0.0486         .       <NA>
    ## Mean                 0.407    22.1    0.385   0.00257      <NA>       <NA>
    ## Unique (excld. NA)    2257    2257     2257      2257         1          0
    ## Missing values           0       0        0         0         0       2257
    ## Sorted               FALSE   FALSE    FALSE     FALSE      TRUE       <NA>
    ##                                                                           
    ##                     exper2    rep2    acid  meas.tech.orig meas.tech2 crop.orig
    ## Class              logical logical logical       character  character character
    ## Minimum               <NA>    <NA>   FALSE Dynamic chamber    chamber     Grass
    ## Maximum               <NA>    <NA>   FALSE Dynamic chamber    chamber     Grass
    ## Mean                  <NA>    <NA>  0 TRUE            <NA>       <NA>      <NA>
    ## Unique (excld. NA)       0       0       1               1          1         1
    ## Missing values        2257    2257       0               0          0         0
    ## Sorted                <NA>    <NA>    TRUE            TRUE       TRUE      TRUE
    ##                                                                                
    ##                                 app.method.orig incorp.orig man.source.orig
    ## Class                                 character   character       character
    ## Minimum            Band spread or trailing hose        None          Cattle
    ## Maximum                     Open slot injection        None          Cattle
    ## Mean                                       <NA>        <NA>            <NA>
    ## Unique (excld. NA)                            2           1               1
    ## Missing values                                0           0               0
    ## Sorted                                    FALSE        TRUE            TRUE
    ##                                                                            
    ##                    date.start first.row.int row.plot         first.rows
    ## Class                    Date       numeric  numeric             factor
    ## Minimum            2025-05-13             5        5 Plots 10 Emis. 720
    ## Maximum            2025-05-13          2190       36  Plots 9 Emis. 577
    ## Mean                     <NA>          1100     20.8 Plots 26 Emis. 789
    ## Unique (excld. NA)          1            32       32                 32
    ## Missing values              0             0        0                  0
    ## Sorted                   TRUE         FALSE    FALSE              FALSE
    ##                                                                        
    ##                    ggplotgroup
    ## Class                   factor
    ## Minimum            (4.97,10.2]
    ## Maximum              (30.8,36]
    ## Mean               (20.5,25.7]
    ## Unique (excld. NA)           6
    ## Missing values               0
    ## Sorted                   FALSE
    ## 
