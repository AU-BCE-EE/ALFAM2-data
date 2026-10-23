---
title: 'Combined data checks'
---

Summaries for all plot-level variables.


``` r
for (i in 1:ncol(pdat.comb)) {

  cat(paste('\n', names(pdat.comb)[i], '\n'))
  printVarSumm(pdat.comb[[i]])

}
```

```
## 
##  inst 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 101 
## Maximum: 306 
## Mean: 193.241738066095 
## Median: 205 
## Quantiles
##   0%  25%  50%  75% 100% 
##  101  202  205  211  306 
## 
##  eid 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 1 
## Maximum: 719 
## Mean: 355.258873929009 
## Median: 290.5 
## Quantiles
##    0%   25%   50%   75%  100% 
##   1.0 201.0 290.5 590.0 719.0 
## 
##  pid 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 1 
## Maximum: 3807 
## Mean: 1896.37392900857 
## Median: 1747.5 
## Quantiles
##      0%     25%     50%     75%    100% 
##    1.00  934.75 1747.50 2990.25 3807.00 
## 
##  pmid 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 1 
## Maximum: 3811 
## Mean: 1898.8864749082 
## Median: 1751.5 
## Quantiles
##      0%     25%     50%     75%    100% 
##    1.00  934.75 1751.50 2994.25 3811.00 
## 
##  version 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: 3.6 
## 
##  sub.period 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 1 
## Maximum: 4 
## Mean: 2.20501835985312 
## Median: 2 
## Quantiles
##   0%  25%  50%  75% 100% 
##    1    2    2    3    4 
## 
##  corr.period 
## Class: numeric 
## Length: 3268 
## Missing values: 3009 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    3    3    3    3    3 
## 
##  proj 
## Class: character 
## Length: 3268 
## Missing values: 48 
## Unique values: VLAHR, , 1, 2, 3, 4, 1994, 1997a, 1997sl, 1999, NW251, NW257, IUL/FAT92-96, 2173, 2177, 2181, 272, swine 2000, swine 2001-2003, swine 2004 and 2005, Cracking Clays - Defra AC0111, AAFC-GAPS, AAFC, Feb_2000, Incorporaton DL, Juni 2000, Juni_99, Kent_01, Kent_2_02, Nov_99, STOP, SyreN, Unter, Biogasexpert, NA, CASDAR VOLAT'NH3, ECLAIRE-FP7, NITROEUROPE-FP7, NITROEUROPE, p01, p02, ARMOSA, NMI 1990 to 1992, ALFAM2, 5508_Ammonia measures, 5811_Slurry Characteristics, 5876_Low Protein, eGylle, MHB, NUGA, Vejrumbro_2019, SYSTEMIC, BLD_JUL17, BRM_JUL16, MAG, MetaMetha, B2002-13, B2002-14, B2002-15, B2002-17, B2002-19, B2006-17, B2006-18, B2006-19, B2007-13, B2007-16, B2007-17, B2008-15, B2008-17, B2008-39, B2010-16, B2010-19, B2011-16, B2011-17, G2005-29, G2010-20, G2010-21, G2013-15a, G2013-15b, G2013-16a, G2013-16b, G2013-24a, G2013-24b, G2014-11a, G2014-12a, G2014-12b, G2014-13, G2014-17, G2014-18a, G2014-18b, G2014-19, G2014-20, G2014-21, G2014-23a, G2014-23b, G2015-35, G2016-13, G2016-14, G2016-20, G2016-21, G2016-26, G2016-27, G2016-33, G2016-34, G2017-20a, G2017-20b, G2017-25, G2017-35, G2020-21, G2020-22, G2020-27, G2020-28, G2021-12, G2021-13, G2021-23, G2021-29, G2021-45, GülleBest, AM.VOC, SLU26, STABIL26, B1990-15, B1990-35, B1990-37, B1990-38, B1990-39, B1991-13, B1991-14, B1991-18, B1991-36, B1991-37, B1991-38, B1992-10, B1992-14, B1992-19, B1992-20, B1992-24, B1992-37, B1992-38, B1992-39, B1993-15, B1993-17, B1998-39, B1998-40, G1989-13, G1989-15, G1989-27, G1989-28, G1990-11, G1990-12, G1990-17, G1990-18, G1990-20, G1990-22, G1990-23, G1990-24, G1990-25, G1990-26, G1990-27, G1990-29, G1990-30, G1990-31, G1990-35, G1990-36, G1991-15, G1991-16, G1991-24, G1991-29, G1991-30, G1991-36, G1992-11, G1992-12, G1992-16, G1992-17, G1992-21, G1992-25, G1992-26, G1992-27, G1992-28, G1992-35, G1992-38, G1993-10, G1993-11, G1993-12, G1993-18, G1993-21, G1993-22, G1997-24, G1997-25, G1997-26, G1997-28, G1997-29, G1997-30, G1997-31, G1997-33, G1998-28, G1998-30, G1998-32, G1999-19, G1999-20, G1999-22, G1999-26, G1999-27, G1999-30, G1999-35, G2000-08, G2000-09, G2000-11, G2000-12, G2000-19, G2002-10, G2002-23, G2003-10, G2003-11, N-Grass 
## 
##  exper 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: 1_DR_p1, 1_DR_p2, 1_DR_p3, 1_DR_p4, 1_GT_p1, 1_GT_p2, 1_GT_p3, 1_GT_p4, 1, 2, 10, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 10A, 10B, 1A, 1B, 1C, 1D, 1E, 1F, 1G, 1H, 2A, 2B, 2C, 2D, 2E, 2F, 2G, 2H, 3A, 3B, 5A, 5B, 6A, 7A, 7B, G1989-38, F1, F10, F11, F12, F13, F14, F15, F16, F17, F18, F19, F2, F3, F4, F5, F6, F7, F8, F9, T1, T11, T2, T3, T4, T5, T6, T7, T8, T9, june 2000, june 2001, june 2002, june 2003, may 2001, may 2002, may 2003, may 2004, may 2005, sept 2005, Cracking Clays 40 Acres , Cracking Clays Faringdon, Cracking Clays Rowden, 0546FA, 0546SP, 0546SU, 0646FA, 0646SP, 0646SU, GET_1M01, GET_2M00, GET_5M00, GET_5M01, Feb_2000, Incorporaton DL, Juni 2000, Juni_99, Kent_01, Kent_2_02, Nov_99, STOP-Bygholm (07), STOP-Bygholm (08), STOP-Foulum (09), SyreN, Unter (a), Unter (b), T12, T13, T14, T15, T16, T17, T18, T5g, T5m, A1, A2, A3, A4, A5, A6, G2, G3, R1, TS1, TS2, Z1, Z2, DERVAL(44)_2011, LACHAP(44)_2011, TREV(29)_2011, ECLAIRE-2012, NEU-2009, NEU-2008, LI_1994, INJ-09, SI-09, SI-10, SI-11, SIC-11, SS-11, IHF_13, IHF_6, IHF_7, WIND_10, WIND_4, WIND_6, WIND_8, B1, B2, W1, W2, april 1997, dec 1996, 21C, 21D, 22A, 21E, eGylle1, eGylle2, eGylle3, eGylle4, 20E, 20F, 20G, 20H, A, B, C, D, 18A, 18B, 18C, 18G, 18H, 18I, 18K, 18L, 18R, 18S, 18N, 18O, 18P, 19B, 19C, 19H, 19I, 20C, 20D, 21A, Vejrumbro_2019_Aug, Vejrumbro_2019_May, SYS 2018, SYS 2019, SYS 2020, LAND_13, 3-BLD_IHF, 3-BLD_WT, 2-BRM_IHF, 2-BRM_WT, testA, testB, testC, 23C, 23D, 23G, 23H, 23I, 18E, 18F, 19G, 20A, 20B, 22H, 22I, 22J, 22K, MM1_2017_march_DIGB_1, MM1_2017_march_DIGL_1, MM1_2017_march_LIS_1, MM2_2017_april_DIGB_2, MM2_2017_april_DIGL_2, MM2_2017_april_LIS_2, MM3_2017_august_DIGB_3, MM3_2017_august_DIGS_1, MM3_2017_august_FUM_1, MM4_2018_march_DIGB_4, MM4_2018_march_DIGL_3, MM4_2018_march_LIS_3, MM5_2018_september_DIGB_5, MM5_2018_september_DIGS_2, MM5_2018_september_FUM_2, MM6_2019_february_DIGB_6, MM6_2019_february_DIGL_4, MM6_2019_february_LIS_4, MM7_2019_march_DIGB_7, MM7_2019_march_DIGL_5, MM7_2019_march_LIS_5, B2002-13, B2002-14, B2002-15, B2002-17, B2002-19, B2006-17, B2006-18, B2006-19, B2007-13, B2007-16, B2007-17, B2008-15, B2008-17, B2008-39, B2010-16, B2010-19, B2011-16, B2011-17, G2005-29, G2010-20, G2010-21, G2013-15a, G2013-15b, G2013-16a, G2013-16b, G2013-24a, G2013-24b, G2014-11a, G2014-12a, G2014-12b, G2014-13, G2014-17, G2014-18a, G2014-18b, G2014-19, G2014-20, G2014-21, G2014-23a, G2014-23b, G2015-35, G2016-13, G2016-14, G2016-20, G2016-21, G2016-26, G2016-27, G2016-33, G2016-34, G2017-20a, G2017-20b, G2017-25, G2017-35, G2020-21, G2020-22, G2020-27, G2020-28, G2021-12, G2021-13, G2021-23, G2021-29, G2021-45, BW:HOH-GL-2019-1, BW:HOH-GL-2019-2, BW:HOH-GL-2020-1, BW:HOH-GL-2020-2, BW:HOH-WW-2019-1, BW:HOH-WW-2019-2, BW:HOH-WW-2020-1, BW:HOH-WW-2020-2, 24A, 24B, 24C, 24D, 24E, 24F, 24G, 24H, 24I, 24J, 24K, 24L, 24M, 24N, 24O, Fall24, B1990-15, B1990-35, B1990-37, B1990-38, B1990-39, B1991-13, B1991-14, B1991-18, B1991-36, B1991-37, B1991-38, B1992-10, B1992-14, B1992-19, B1992-20, B1992-24, B1992-37, B1992-38, B1992-39, B1993-15, B1993-17, B1998-39, B1998-40, G1989-13, G1989-15, G1989-27, G1989-28, G1990-11, G1990-12, G1990-17, G1990-18, G1990-20, G1990-22, G1990-23, G1990-24, G1990-25, G1990-26, G1990-27, G1990-29, G1990-30, G1990-31, G1990-35, G1990-36, G1991-15, G1991-16, G1991-24, G1991-29, G1991-30, G1991-36, G1992-11, G1992-12, G1992-16, G1992-17, G1992-21, G1992-25, G1992-26, G1992-27, G1992-28, G1992-35, G1992-38, G1993-10, G1993-11, G1993-12, G1993-18, G1993-21, G1993-22, G1997-24, G1997-25, G1997-26, G1997-28, G1997-29, G1997-30, G1997-31, G1997-33, G1998-28, G1998-30, G1998-32, G1999-19, G1999-20, G1999-22, G1999-26, G1999-27, G1999-30, G1999-35, G2000-08, G2000-09, G2000-11, G2000-12, G2000-19, G2002-10, G2002-23, G2003-10, G2003-11, CattleAcid, PigAcid, Trial 1, Trial 2, Trial 3, Trial 4 
## 
##  exper2 
## Class: numeric 
## Length: 3268 
## Missing values: 2585 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    1    5   10   18   29 
## 
##  institute 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: ADAS, AUN, CRPA, DIAS, IGER, IMAG, IUL/FAT, JTI, AAFC, ADAS-RR, ARDC, AT, AU, CAU-LU, INH-HAFL, INRA, MU, NMI-WUR, SDU, TEAGASC, USDA, DiSAA-IT, UNIMI, UNINA, INRAE, WUR, TI, UNITO DISAFA 
## 
##  country 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: UK, NO, IT, DK, NL, CH, SE, CA, DE, FR, IE, US 
## 
##  submitter 
## Class: character 
## Length: 3268 
## Missing values: 1635 
## Unique values: NA, Pedersen, Johanna, Jesper Nørlem Kamp, Massimo Zilio, Fabrizio Adani, Marco Carozzi, Ester Scotto di Perta, Pedersen, Johanna; Kamp, Jesper, Génermont, Sophie, Huijsmans, Jan, Buchen-Tschiskale, Caroline, Dela Pierre, Flavia, Larsen, Mikael Løvig, Pedersen, Johanna  
## 
##  file 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: ALFAM1.xlsx, ALFAM2_Chantigny_2000.xlsx, ALFAM2_Chantigny_2004_2005.xlsx, ALFAM2_ADAS_RRes_v2.xlsx, Bittman ALFAM2 v5.xlsx, ALFAM2_AT.xlsx, ALFAM2_AU_v5.xlsx, ALFAM2 CAU-LU cps and micromet v5.xlsx, ALFAM2 CAU-LU FTIR v2.xlsx, ALFAM2_Switzerland_v2.xlsx, 1 ALFAM2_96TVNH3_DERVAL(44)_2011 v4.xlsx, 2 ALFAM2_96TVNH3_LACHAP(44)_2011 v4.xlsx, 3 ALFAM2_96TVNH3_TREV(29)_2011 v4.xlsx, 6 ALFAM2_FR-GRI-2012 v4.xlsx, 5 ALFAM2_FR-GRI-2009 v5.xlsx, 4 ALFAM2_FR-GRI-2008 v4.xlsx, 7 ALFAM2_LI94_INCORP v5.xlsx, 8 ALFAM_LI94_SURF v5.xlsx, ALFAM2_PoValley-Italy_v7.xlsx, ALFAM2_NMI-WUR_v3.xlsx, ALFAM2_SDU_v4.xlsx, ALFAM2_Teagasc_v5.xlsx, ALFAM2_USDA.xlsx, ../../data-submitted/03/AU/ALFAM2_template_6_1_220317_JP_21CD22A.xlsx, ../../data-submitted/03/AU/ALFAM2_template_6_1_220524_JP_21E_220610.xlsx, ../../data-submitted/03/AU/ALFAM2_template_6_1_eGylle_JK_3.xlsx, ../../data-submitted/03/AU/ALFAM2_template_7_0_eGylle_NL_DE_JK.xlsx, ../../data-submitted/03/AU/ALFAM2_template_6_0_220310_JP_20EFGH_v2.xlsx, ../../data-submitted/03/AU/ALFAM2_template_5_2_210929_JP_CanadianData.xlsx, ../../data-submitted/03/AU/ALFAM2_template_5_2_211012_JP_18ABC.xlsx, ../../data-submitted/03/AU/ALFAM2_template_5_2_211012_JP_18GHI.xlsx, ../../data-submitted/03/AU/ALFAM2_template_5_2_211012_JP_18KLRS.xlsx, ../../data-submitted/03/AU/ALFAM2_template_5_2_211012_JP_18NOP.xlsx, ../../data-submitted/03/AU/ALFAM2_template_5_2_211012_JP_19BCHI.xlsx, ../../data-submitted/03/AU/ALFAM2_template_6_0_220126_JP_20CD21A_JP.xlsx, ../../data-submitted/03/AU/ALFAM2_JNK_2019_Aug_5_5_b.xlsx, ../../data-submitted/03/AU/ALFAM2_JNK_2019_May_5_6_a.xlsx, ../../data-submitted/03/DiSSA-IT/ALFAM2_data from Adani-Zilio_2.xlsx, ../../data-submitted/03/UNINI/ALFAM2_template_6.1_ARMOSA2013_V1.xlsx, ../../data-submitted/03/UNINA/ALFAM2_UNINA_5_6_1_ver6.xlsx, ../../data-submitted/03/AU/ALFAM2_template_7.0_DFCtest_JP_231108_JK.xlsx, ../../data-submitted/03/AU/ALFAM2_template_7.0_MAGspring23_231117.xlsx, ../../data-submitted/03/AU/ALFAM2_template_6_1_230726_JP_18EF.xlsx, ../../data-submitted/03/AU/ALFAM2_template_6_1_230726_JP_19G20AB.xlsx, ../../data-submitted/03/AU/ALFAM2_template_7.0_22HIJK_240208.xlsx, ../../data-submitted/03/INRAE/ALFAM2_template_8.0_META_METHA_Vf_v4.xlsx, ../../data-submitted/03/WUR/WUR_arable_2024.xlsx, ../../data-submitted/03/WUR/WUR_grass_2024.xlsx, ../../data-submitted/03/TI/ALFAM2_template_7.0_GülleBest_BW_HOH_20240415.xlsx, ../../data-submitted/03/AU/ALFAM2_template_8.2_MAGspring24_240901.xlsx, ../../data-submitted/03/UNITO-DISAFA/ALFAM2_AM.VOC_jk_jp_fd.xlsx, ../../data-submitted/03/AU/ALFAM2_template_8.3_SLU26.xlsx, ../../data-submitted/03/AU/ALFAM2_template_8.3_Stabil26_FDP_27_Jan.xlsx, ../../data-submitted/04/AU/ALFAM2_8.3_N-Grass_Acid.xlsx, ../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass1+2.xlsx, ../../data-submitted/04/AU/ALFAM2_template_8.3_NGrass3+4.xlsx 
## 
##  first.row.in.file.int 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 5 
## Maximum: 15165 
## Mean: 1960.46328029376 
## Median: 1075.5 
## Quantiles
##       0%      25%      50%      75%     100% 
##     5.00   376.75  1075.50  2968.50 15165.00 
## 
##  last.row.in.file.int 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 10 
## Maximum: 15313 
## Mean: 1993.83139534884 
## Median: 1122.5 
## Quantiles
##       0%      25%      50%      75%     100% 
##    10.00   411.75  1122.50  3003.50 15313.00 
## 
##  row.in.file.plot 
## Class: numeric 
## Length: 3268 
## Missing values: 1635 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    5   19   43  120  298 
## 
##  pub.id 
## Class: character 
## Length: 3268 
## Missing values: 1765 
## Unique values: NA, 1, 3, 2, N/A, , 2,3, 4, 2+3, 5, G, A, B, C, D, E, F, AC, Atmos1, Zilio et al 2019, AFM19, a, Moinard et al, under review, 10.1016/j.envpol.2022.120302, 10.3390/agronomy13020472 
## 
##  pub.info 
## Class: character 
## Length: 3268 
## Missing values: 1821 
## Unique values: NA, Chantigny, M. H., Rochette, P., Angers, D. A., Massé, D., Côté, D. (2004). Ammonia volatilization and selected soil characteristics following application of anaerobically digested pig slurry. Soil Sci. Soc. Am. J. 68: 306-212. doi:10.2136/sssaj2004.3060, Chantigny, M. H., Angers, D. A., Rochette, P., Bélanger, G., Massé, D., & Côté, D. (2007). Gaseous nitrogen emissions and forage nitrogen uptake on soils fertilized with raw and treated swine manure. Journal of Environmental Quality, 36(6), 1864\u20131872., Chantigny, M.H., et al. 2009. Ammonia volatilization following surface application of raw and treated liquid swine manure. Nutr. Cycl. Agroecosyst. 85: 275-286. doi: 10.1007/s10705-009-9266-7, Bhandral, R., Bittman, S., Kowalenko, C.G., Buckley, K.E., Chantigny, M.H., Hunt, D.E., Bounaix, F., and Friesen, A.J. (2009). ""Enhancing soil infiltration reduces gaseous emissions and improves N uptake from applied dairy slurry."", Journal of Environmental Quality, 38(4), pp. 1372-1382. doi : 10.2134/jeq2008.0287, Bittman, S., van Vliet, L. J. P., Kowalenko, C. G., McGinn, S., Hunt, D. E., Bounaix, F., (2005) ""Surface-Banding Liquid Manure over Aeration Slots.""  Agron. J.  7:1304–1313.  doi:10.2134/agronj2004.0277, Misselbrooke, T.H.; Hansen, M.N. 2001. Field evaluation of the equilibrium concentration technique (JTI method) for measuring ammonia emission form land spread manure or fertiliser. Atmospheric Environment 35: 3761-3768., Hansen M.N. and Birkmose T.S. 2005. Rapid incorporation of solid manure – effects on ammonia emission and economy. (Hurtig nedmuldning af fast husdyrgødning – effekter på ammoniakfordampning og økonomi) (In Danish). Grøn Viden Markbrug No. 311, May  2005. 8 pages, Hansen, M.N.; Sommer, S.G.; Madsen, N.P. 2003. Reduction of ammonia emission by shallow slurry injection: Injection efficiency and additional energy demand. Journal of Environmental Quality. 32: 1099-1104., Hansen M.N, Birkmose, T.S., Mortensen, B., Skaaning, K. 2004. Environmental impact of anaerobic digestion and separation of pig slurry – effects on odour, ammonia volatilisation and plant utilisation. (Miljøeffekter af bioforgasning og separering af gylle – indflydelse på lugt, ammoniakfordampning og planteudnyttelse). Grøn Viden, Markbrug No. 296. 6 pages., Thomsen et al., Agriculture, Ecosystems and Environment 136 (2010) 227–235, Nyord et al., Agriculture, Ecosystems and Environment 160 (2012) 75– 81, Manuscript is written and obe co-authors has comment that - June 2014 I need corrections from one other co-author., Nyrd et al., 2013. Proceeding for the 15th International RAMIRAN conference, Versailles, France, 2013. Importance of injector design on ammonia volatilization and crop yield when soil injecting pig slurry to a winter wheat crop. www.ramiran.net, Ni K., Pacholski, A., Dirk Gericke, D. and Kage H. (2012): Analysis of ammonia losses after field application of biogas slurries by an empirical model, Journal of Plant Nutrition and Soil Science, 175(2): 253-264, Koester J.R., Dittert K., Mühling K.-H., Kage H., Pacholski A. (2014): Cold season ammonia emissions from land spreading of anaerobic digestates from biogas production, Atmospheric Environment 84, 35–38, Häni, C., Sinterman, J., Kupper, T., Jocher, M., Neftel, A.: Ammonia emission after slurry application to grassland in Switzerland. Atmospheric Environment 125: 92-99, 2016., Cohan J.P., Charpiot A., Morvan T., Eveillard P., Trochard R., Champolivier L., De C., E., Espagnol S., Génermont S., Loubet B., 2012. A new approach for measuring ammonia volatilization in the field: First results of the French research project “VOLAT’NH3”. In: 17th N Workshop 2012, 2 p. (poster)., Personne E., Tardy F., Génermont S., Decuq C., Gueudet J.-C., Mascher N., Durand B., Masson S., Lauransot M., Fléchard C., Burkhardt J., and Loubet B.. 2014, Ammonia sources and sinks in a wheat canopy following slurry application with trailing hose. Agricultural and Forest Meteorol. (Submitted), Loubet, B., Laville, P., Lehuger, S., Larmanou, E., Flechard, C., Mascher, N., Génermont, S., Roche, R., Ferrara, R.M., Stella, P., Personne, E., Durand, B., Decuq, C., Flura, D., Masson, S., Fanucci, O., Rampon, J.-N., Siemens, J., Kindler, R., Schrumpf, M., Gabriele, B. and Cellier, P., 2011. Carbon, nitrogen and Greenhouse gases budgets over a four years crop rotation In northern France. Plant and Soil, 343(1-2): 109-137., Loubet, B., Génermont, S., Ferrara, R., Bedos, C., Decuq, C., Personne, E., Fanucci, O., Durand, B., Rana, G. and Cellier, P., 2010. An inverse model to estimate ammonia emissions from fields. European Journal of Soil Science, 61: 793-805., Génermont, S., Cellier, P., Flura, D., Morvan, T., Laville, P., 1998. Measuring ammonia fluxes after slurry spreading under actual field conditions. Atmospheric Environment 32, 279-284., Carozzi M., Loubet B., Acutis M., Rana G., Ferrara R.M., 2013. Inverse dispersion modelling highlights the efficiency of slurry injection to duce ammonia losses by agriculture in the Po Valley (Italy). Agricultural and Forest Meteorology 171–172, 306–318., Carozzi M., Ferrara R.M., Rana G., Acutis M. 2013. Evaluation of mitigation strategies to reduce ammonia losses from slurry fertilisation on arable lands. Science of the Total Environment 449, 126–133., Ferrara R. M., Carozzi M., Di Tommasi P., Nelson D. D., Fratini G., Bertolini T., Magliulo V., Acutis M., and Rana G., 2016. Dynamics
## of ammonia volatilisation measured by eddy covariance during slurry spreading in north Italy, Agr. Ecosyst. Environ., 219, 1–13., Carozzi M., Ferrara R.M., Fumagalli M., Sanna M., Chiodini M.E., Perego A., Chierichetti A., Brenna S., Rana G., Acutis M., 2012. Field-scale ammonia emissions from surface spreading of dairy slurry in Po Valley. Italian Journal of Agrometeorology, 4, 25-34., Bussink, D.W., Huijsmans, J.F.M., Ketelaars, J.J.M.H. (1994). Ammonia volatilization from nitric-acid-treated cattle slurry surface applied to grassland. Netherlands J. Agr. Sci., 42(4): 293-309., Wagner, C., Hafner, S., Nyord, T., Pacholski, A. 2015. Impact of field acidification and application methods on ammonia emissions, yield and nitrogen efficiency of organic liquid manures. Paper presented at 2015 RAMIRAN conference, Hamburg, Germany., Dowling, C., Curran, T. and Lanigan G.J. (2008) The effect of application technique and climate conditions on ammonia emissions from cattle slurry. In: 13th Int. RAMIRAN Proceedings, Albena, 4 pages ISBN 978-954-9067671-6-3, Bourdin, F., Sakrabani, R., Kibblewhite, M. G., Lanigan, G. J. (2014) Effect of slurry dry matter content, application technique and timing on emissions of ammonia and greenhouse gas from cattle slurry applied to grassland soils in Ireland. Agriculture Ecosystems & Environment 188: 122-133, Meade, G., Pierce, K., O'Doherty, J.V., Mueller, C., Lanigan, G., Mc Cabe, T., (2011). Ammonia and nitrous oxide emissions following land application of high and low nitrogen pig manures to winter wheat at three growth stages. Agriculture Ecosystems & Environment 140, 208-217., Thompson R.B. and J.J. Meisinger, 2004, Gaseous N losses and ammonia volatilization measuement following land application of cattle slurry in the mid-Atlantic retion of the USA, Plant and Soil 266:231-246., Pedersen, J., Feilberg, A., Nyord, T. 2022. Effect of storage and field acidification on emissions of NH3, NMVOC, and odour from field applied slurry in winter conditions. Journal of Environmental Management, 310. doi.org/10.1016/j.jenvman.2022.114756, Pedersen, J., Nyord, T., Feilberg, A., Labouriau, R., Hunt, D., & Bittman, S. (2021). Effect of exposed surface area and enhanced infiltration on ammonia emission from untreated and separated cattle slurry. Biosystems Engineering, 211, 141–151. https://doi.org/10.1016/j.biosystemseng.2020.12.005, Pedersen, J., Feilberg, A., Kamp, J. N., Hafner, S., & Nyord, T. (2020). Ammonia emission measurement with an online wind tunnel system for evaluation of manure application techniques. Atmospheric Environment, 230(December 2019). https://doi.org/10.1016/j.atmosenv.2020.117562 AND Pedersen, J., Nyord, T., Feilberg, A., & Labouriau, R. (2021). Analysis of the effect of air temperature on ammonia emission from band application of slurry. Environmental Pollution, 282, 1–25. https://doi.org/10.1016/j.envpol.2021.117055, Pedersen, J., Feilberg, A., Kamp, J. N., Hafner, S., & Nyord, T. (2020). Ammonia emission measurement with an online wind tunnel system for evaluation of manure application techniques. Atmospheric Environment, 230(December 2019). https://doi.org/10.1016/j.atmosenv.2020.117562, Pedersen, J., Nyord, T., Feilberg, A., & Labouriau, R. (2021). Analysis of the effect of air temperature on ammonia emission from band application of slurry. Environmental Pollution, 282, 1–25. https://doi.org/10.1016/j.envpol.2021.117055, Pedersen, J., Nyord, T., Feilberg, A., & Labouriau, R. (2021). Analysis of the effect of air temperature on ammonia emission from band application of slurry. Environmental Pollution, 282, 1–25. https://doi.org/10.1016/j.envpol.2021.117055 AND Foldager, F. F., Pedersen, J. M., Skov, E. H., Evgrafova, A., & Green, O. (2019). Lidar-based 3d scans of soil surfaces and furrows in two soil types. Sensors (Switzerland), 19(3), 1–13. https://doi.org/10.3390/s19030661, Pedersen, J., Andresson, K., Feilberg, A., Delin, S., Hafner, S., & Nyord, T. (2020). The effect of manure exposed surface area on ammonia emission from untreated, separated, and digested cattle manure. Biosystems Engineering, 202, 66–78. https://doi.org/10.1016/j.biosystemseng.2020.12.005, Pedersen, J., Andresson, K., Feilberg, A., Delin, S., Hafner, S., & Nyord, T. (2020). The effect of manure exposed surface area on ammonia emission from untreated, separated, and digested cattle manure. Biosystems Engineering, 202, 66–78. https://doi.org/10.1016/j.biosystemseng.2020.12.005 AND Pedersen, J., Nyord, T., Feilberg, A., & Labouriau, R. (2021). Analysis of the effect of air temperature on ammonia emission from band application of slurry. Environmental Pollution, 282, 1–25. https://doi.org/10.1016/j.envpol.2021.117055, Pedersen, J., Nyord T. 2023. Effect of low-dose acidification of slurry digestate on ammonia emissions after field application (Short Communication). Atmospheric Environment: X. 17, 100205. 10.1016/j.aeaoa.2023.100205 AND Pedersen, J., Nyord, T., Feilberg, A., & Labouriau, R. (2021). Analysis of the effect of air temperature on ammonia emission from band application of slurry. Environmental Pollution, 282, 1–25. https://doi.org/10.1016/j.envpol.2021.117055, Kamp, J.N.; Häni, C.; Nyord, T.; Feilberg, A.; Sørensen, L.L. Calculation of NH3 Emissions, Evaluation of Backward Lagrangian Stochastic Dispersion Model and Aerodynamic Gradient Method. Atmosphere 2021, 12, 102. https://doi.org/10.3390/atmos12010102, Zilio, M. et al. (2020) ‘Evaluation of ammonia and odour emissions from animal slurry and digestate storage in the Po Valley (Italy)’, Waste Management. Elsevier Ltd, 103, pp. 296–304. doi: 10.1016/j.wasman.2019.12.038., Scotto di Perta, E., Fiorentino, N., Gioia, L., Cervelli, E., Faugno, S., & Pindozzi, S. (2019). Prolonged sampling time increases correlation between wind tunnel and integrated horizontal flux method. Agricultural and forest meteorology, 265, 48-55., Lemes, Y. M., Nyord, T., Feilberg, A., Hafner, S. D., Pedersen, J. 2023. Effect of anaerobic digestion on odor and ammonia emission from land-applied cattle manure. Journal of Environmental Management 338, 117815. 10.1016/j.jenvman.2023.117815, McCollough, M. R., Pedersen, J., Nyord, T., Sørensen, P., Melander, B. 2022. Ammonia emissions, exposed surface area, and crop and weed responses resulting from three post-emergence slurry application stretegies in cereals. Agronomy 12, 2441. https://doi.org/10.3390/agronomy12102441., Nyameasem J, Zutz M, Kluß C, ten Huf M, Essich C, Buchen-Tschiskale C, et al. Impact of cattle slurry application methods on ammonia losses and grassland nitrogen use efficiency. Environmental Pollution 2022; 315: 120302. DOI: 10.1016/j.envpol.2022.120302, ten Huf M, Reinsch T, Zutz M, Essich C, Ruser R, Buchen-Tschiskale C, et al. Effects of Liquid Manure Application Techniques on Ammonia Emission and Winter Wheat Yield. Agronomy 2023; 13: 472. DOI: 10.3390/agronomy13020472, . 
## 
##  lat 
## Class: numeric 
## Length: 3268 
## Missing values: 1105 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
## 39.033 49.240 55.579 56.493 58.381 
## 
##  long 
## Class: numeric 
## Length: 3268 
## Missing values: 1105 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
## -121.7600    5.8417    9.5613    9.5835   14.4260 
## 
##  topo 
## Class: character 
## Length: 3268 
## Missing values: 1246 
## Unique values: NA, Flat, Hilly, flat, hilly, slightly hilly, Field flat, surrounding hilly 
## 
##  field 
## Class: character 
## Length: 3268 
## Missing values: 778 
## Unique values: NA, 2, Sandy loam, loam, 1, Arable, Grass, Rowden drainage plots, Fld25, FLd12_13, FLd13_14, Bygholm, Foulum, F-1, F-2, F-3, F-4, F-5, Taenikon1, Posieux, Hohenrain, Wengi, Taenikon2, Derval, La Chappelle Jaillière, Trevarez, FR-GRI, Méjusseaume, Bigarello, Landriano, Cornaredo, Duiven, Wageningen, , ECO field Foulum, AGP field Foulum, FoulumgårdD, WUR, FoulumgårdC, Agassiz, semi-field facilities, FoulumgårdA, FoulumgårdB, semi-field, SLU1, SLU2, Holstebro1, Holstebro2, Holstebro3, SIC-13, SS-13, AC, A, Semi-field, Foulumgård, Flakkebjerg, SOERE-PRO-NOUZILLY, Slootdorp, Nagele (NOP), 400-Zegveld, Lelystad, 289-Zegveld, Zegveld, 290-Zegveld, 291-Kamerik, Kamerik, 292-Kamerik, 293-Zegveld, 294-Zegveld, 299-Kamerik, 300-Kamerik, 301-Zegveld, 302-Zegveld, 303-Kamerik, 304-Kamerik, 295-Kamerik, 296-Kamerik, 305-Zegveld, 306-Zegveld, 297-Kamerik, 298-Kamerik, 307-Zegveld, 308-Kamerik, 309-Kamerik, 310-Kamerik, 311-Kamerik, 312-Kamerik, 313-Kamerik, HOH-GL, HOH-WW, Varde1, Varde2, Götala, Lanna, 1-Slootdorp, 2-Slootdorp, 4-Slootdorp, 5-Slootdorp, 7-Slootdorp, 8-Slootdorp, 10-Slootdorp, 11-Slootdorp, 12-Slootdorp, 9-Slootdorp, 70-Slootdorp, 71-Slootdorp, 72-Slootdorp, 73-Slootdorp, 74-Slootdorp, 75-Slootdorp, 76-Slootdorp, 77-Slootdorp, 78-Slootdorp, 82-Slootdorp, 21-Slootdorp, 22-Slootdorp, 25-Slootdorp, 27-Slootdorp, 28-Slootdorp, 29-Slootdorp, 30-Slootdorp, 31-Slootdorp, 32-Slootdorp, 33-Slootdorp, 39-Slootdorp, 42-Slootdorp, 43-Slootdorp, 44-Slootdorp, 45-Slootdorp, 46-Slootdorp, 47-Slootdorp, 48-Slootdorp, 49-Slootdorp, 50-Slootdorp, 51-Slootdorp, 53-Slootdorp, 54-Slootdorp, 55-Slootdorp, 56-Slootdorp, 57-Slootdorp, 58-Slootdorp, 59-Slootdorp, 60-Slootdorp, 63-Slootdorp, 64-Slootdorp, 67-Slootdorp, 68-Slootdorp, 69-Slootdorp, 1-Hardenberg, 3-Hardenberg, 4-Hardenberg, 6-Hardenberg, 8-Swifterbant, 11-Swifterbant, 9-Swifterbant, 18-Duiven, 19-Duiven, 20-Duiven, 21-Duiven, 22-Duiven, 23-Duiven, 111-Zegveld, 112-Zegveld, 24-Zegveld, 26-Duiven, 27-Duiven, 28-Duiven, 29-Duiven, 113-Zegveld, 114-Zegveld, 30-Duiven, 31-Duiven, 32-Duiven, 33-Duiven, 12-Luttenberg, 14-Luttenberg, 34-Duiven, 35-Duiven, 36-Duiven, 37-Duiven, 38-Duiven, 15-Luttenberg, 17-Luttenberg, 40-Zegveld, 41-Duiven, 42-Duiven, 43-Duiven, 143-Zegveld, 115-Zegveld, 116-Zegveld, 44-Duiven, 45-Duiven, 46-Duiven, 47-Duiven, 48-Duiven, 49-Duiven, 50-Duiven, 51-Duiven, 52-Duiven, 53-Duiven, 55-Duiven, 56-Duiven, 57-Zeewolde, 58-Duiven, 59-Duiven, 60-Duiven, 61-Duiven, 62-Duiven, 63-Duiven, 64-Zegveld, 65-Zegveld, 66-Zegveld, 67-Duiven, 68-Duiven, 69-Duiven, 70-Duiven, 71-Duiven, 72-Duiven, 73-Duiven, 74-Duiven, 75-Duiven, 76-Duiven, 77-Zegveld, 78-Zegveld, 79-Zegveld, 80-Zegveld, 81-Zegveld, 82-Zegveld, 83-Zegveld, 84-Duiven, 85-Duiven, 86-Duiven, 87-Duiven, 88-Duiven, 89-Duiven, 90-Duiven, 91-Duiven, 92-Duiven, 93-Duiven, 94-Duiven, 95-Duiven, 96-Duiven, 100-Duiven, 97-Duiven, 98-Duiven, 99-Duiven, 101-Duiven, 102-Duiven, 103-Duiven, 104-Duiven, 105-Duiven, 106-Duiven, 107-Duiven, 108-Duiven, 109-Duiven, 110-Duiven, 200-Zegveld, 201-Zegveld, 202-Zegveld, 203-Zegveld, 204-Zegveld, 205-Duiven, 206-Duiven, 207-Duiven, 208-Duiven, 209-Duiven, 210-Duiven, 211-Duiven, 212-Duiven, 213-Duiven, 214-Zegveld, 215-Zegveld, 216-Zegveld, 217-Zegveld, 218-Zegveld, 219-Zegveld, 220-Duiven, 221-Duiven, 222-Duiven, 223-Duiven, 224-Duiven, 225-Duiven, 226-Duiven, 227-Duiven, 228-Duiven, 229-Duiven, 230-Duiven, 231-Duiven, 232-Duiven, 233-Duiven, 234-Duiven, 235-Hengelo (gld), 236-Hengelo (gld), 237-Duiven, 238-Duiven, 239-Duiven, 242-Duiven, 243-Duiven, 244-Duiven, 240-Hengelo (gld), 241-Hengelo (gld), 245-Hengelo (gld), 246-Hengelo (gld), 247-Hengelo (gld), 248-Hengelo (gld), 249-Duiven, 250-Duiven, 251-Duiven, 252-Hengelo (gld), 253-Hengelo (gld), 254-Duiven, 255-Duiven, 256-Duiven, 257-Hengelo (gld), 258-Hengelo (gld), 259-Hengelo (gld), 260-Hengelo (gld), 261-Duiven, 262-Duiven, 263-Duiven, 264-Hengelo (gld), 265-Hengelo (gld), 266-Hengelo (gld), 267-Hengelo (gld), 268-Hengelo (gld), 269-Hengelo (gld), 270-Duiven, 271-Duiven, 272-Duiven, 273-Hengelo (gld), 274-Hengelo (gld), 275-Duiven, 276-Duiven, 277-Duiven, 278-Gorssel, 279-Gorssel, 280-Waardenburg, 281-Waardenburg, 282-Surhuisterveen, 283-Surhuisterveen, 284-Surhuisterveen, 285-Surhuisterveen, 286-Surhuisterveen, 287-Surhuisterveen, 288-Surhuisterveen, AU Foulum 
## 
##  plot 
## Class: character 
## Length: 3268 
## Missing values: 126 
## Unique values: 1, 10, 2, 3, 4, 5, 6, 7, 8, 9, , 79, 81, 84, 86, 87, 88, 89, 136, 139, E, F, G, H, I, J, K, L, N, O, F4, F5, B, C, D, NA, 11, 12, 13, 15, 16, 18, 19, 20, 21, 22, 23, 24, 33, 34, 35, 36, 38, 39, 40, 41, 14, 101, 102, 103, 104, 201, 202, 203, 204, 301, 302, 303, 304, 401, 402, 403, 404, 105, 205, 206, 305, 106, 107, 108, 207, 208, A1, A2, A3, S1, S2, S3, IV, N4, N2, N3, T1-B1, T1-B2, T2-B1, T2-B2, T3-B1, T3-B2, T1-1, T1-2, T2-1, T2-2, T3-1, T3-2, T1, T2, T3, 17, 28, 29, 32, A, 25, M, 26, 37, 42, 44, 45, 46, 47, 49, 50, 51, 53, 55, 56, 57, 58, 59, 60, CA, 27, 30, 31, 43, 48, Digestate, Urea, plot1, plot10, plot12, plot13, plot15, plot16, plot17, plot3, plot5, plot6, plot7, plot9, plot20, plot4, plot8, plot10inj, plot1th, plot20inj, plot20th, plot2inj, plot3inj, plot3th, plot4inj, plot4th, plot5inj, plot5th, plot6inj, plot6th, plot8inj, plot8th, 1 A, 10 A, 12 A dis, 13 A dis acid, 17 A dis, 18 A, 2 A dis acid, 3 A dis, 8 A dis acid, 1 B, 10 A acid, 11 B, 13 B acid, 14 A, 17 B, 18 A acid, 2 A acid, 4 A, 6 B acid, 7 A, 8 B acid, 10 B, 11 A, 13 C, 14 B, 15 A, 2 B, 4 C, 7 C, 1 F, 10 E, 12 F, 13 E, 15 F, 17 D, 2 D, 3 E, 4 B, 6 A, 7 D, 8 B, 1 C, 10 C, 12 G, 13 I, 14 G, 15 C, 17 A, 18 H, 2 G, 3 H, 4 I, 7 H, 8 I, 400, 11 A dec, 14 A dec acid, 15 A dec, 4 A dec acid, 6 A dec, 7 A dec acid, 12 B screw acid, 15 B screw acid, 3 B screw acid, 12 C dec, 17 B screw, 18 C dec, 3 C dec, 6 B screw, 8 B screw, BW:HOH-GL-2019-1-CAN-A, BW:HOH-GL-2019-1-CAN-B, BW:HOH-GL-2019-1-CAN-C, BW:HOH-GL-2019-1-CAN-D, BW:HOH-GL-2019-1-SI:CS-A, BW:HOH-GL-2019-1-SI:CS-B, BW:HOH-GL-2019-1-SI:CS-C, BW:HOH-GL-2019-1-SI:CS-D, BW:HOH-GL-2019-1-SI:CS+NI-A, BW:HOH-GL-2019-1-SI:CS+NI-B, BW:HOH-GL-2019-1-SI:CS+NI-C, BW:HOH-GL-2019-1-SI:CS+NI-D, BW:HOH-GL-2019-1-TS:CS-A, BW:HOH-GL-2019-1-TS:CS-B, BW:HOH-GL-2019-1-TS:CS-C, BW:HOH-GL-2019-1-TS:CS-D, BW:HOH-GL-2019-1-TS:CS+A-A, BW:HOH-GL-2019-1-TS:CS+A-B, BW:HOH-GL-2019-1-TS:CS+A-C, BW:HOH-GL-2019-1-TS:CS+A-D, BW:HOH-GL-2019-2-CAN-A, BW:HOH-GL-2019-2-CAN-B, BW:HOH-GL-2019-2-CAN-C, BW:HOH-GL-2019-2-CAN-D, BW:HOH-GL-2019-2-SI:CS-A, BW:HOH-GL-2019-2-SI:CS-B, BW:HOH-GL-2019-2-SI:CS-C, BW:HOH-GL-2019-2-SI:CS-D, BW:HOH-GL-2019-2-SI:CS+NI-A, BW:HOH-GL-2019-2-SI:CS+NI-B, BW:HOH-GL-2019-2-SI:CS+NI-C, BW:HOH-GL-2019-2-SI:CS+NI-D, BW:HOH-GL-2019-2-TS:CS-A, BW:HOH-GL-2019-2-TS:CS-B, BW:HOH-GL-2019-2-TS:CS-C, BW:HOH-GL-2019-2-TS:CS-D, BW:HOH-GL-2019-2-TS:CS+A-A, BW:HOH-GL-2019-2-TS:CS+A-B, BW:HOH-GL-2019-2-TS:CS+A-C, BW:HOH-GL-2019-2-TS:CS+A-D, BW:HOH-GL-2020-1-CAN-A, BW:HOH-GL-2020-1-CAN-B, BW:HOH-GL-2020-1-CAN-C, BW:HOH-GL-2020-1-CAN-D, BW:HOH-GL-2020-1-SI:CS-A, BW:HOH-GL-2020-1-SI:CS-B, BW:HOH-GL-2020-1-SI:CS-C, BW:HOH-GL-2020-1-SI:CS-D, BW:HOH-GL-2020-1-SI:CS+NI-A, BW:HOH-GL-2020-1-SI:CS+NI-B, BW:HOH-GL-2020-1-SI:CS+NI-C, BW:HOH-GL-2020-1-SI:CS+NI-D, BW:HOH-GL-2020-1-TS:CS-A, BW:HOH-GL-2020-1-TS:CS-B, BW:HOH-GL-2020-1-TS:CS-C, BW:HOH-GL-2020-1-TS:CS-D, BW:HOH-GL-2020-1-TS:CS+A-A, BW:HOH-GL-2020-1-TS:CS+A-B, BW:HOH-GL-2020-1-TS:CS+A-C, BW:HOH-GL-2020-1-TS:CS+A-D, BW:HOH-GL-2020-2-CAN-A, BW:HOH-GL-2020-2-CAN-B, BW:HOH-GL-2020-2-CAN-C, BW:HOH-GL-2020-2-CAN-D, BW:HOH-GL-2020-2-SI:CS-A, BW:HOH-GL-2020-2-SI:CS-B, BW:HOH-GL-2020-2-SI:CS-C, BW:HOH-GL-2020-2-SI:CS-D, BW:HOH-GL-2020-2-SI:CS+NI-A, BW:HOH-GL-2020-2-SI:CS+NI-B, BW:HOH-GL-2020-2-SI:CS+NI-C, BW:HOH-GL-2020-2-SI:CS+NI-D, BW:HOH-GL-2020-2-TS:CS-A, BW:HOH-GL-2020-2-TS:CS-B, BW:HOH-GL-2020-2-TS:CS-C, BW:HOH-GL-2020-2-TS:CS-D, BW:HOH-GL-2020-2-TS:CS+A-A, BW:HOH-GL-2020-2-TS:CS+A-B, BW:HOH-GL-2020-2-TS:CS+A-C, BW:HOH-GL-2020-2-TS:CS+A-D, BW:HOH-WW-2019-1-CAN-A, BW:HOH-WW-2019-1-CAN-B, BW:HOH-WW-2019-1-CAN-C, BW:HOH-WW-2019-1-CAN-D, BW:HOH-WW-2019-1-SI:BD-A, BW:HOH-WW-2019-1-SI:BD-B, BW:HOH-WW-2019-1-SI:BD-C, BW:HOH-WW-2019-1-SI:BD-D, BW:HOH-WW-2019-1-SI:BD+NI-A, BW:HOH-WW-2019-1-SI:BD+NI-B, BW:HOH-WW-2019-1-SI:BD+NI-C, BW:HOH-WW-2019-1-SI:BD+NI-D, BW:HOH-WW-2019-1-SI:CS-A, BW:HOH-WW-2019-1-SI:CS-B, BW:HOH-WW-2019-1-SI:CS-C, BW:HOH-WW-2019-1-SI:CS-D, BW:HOH-WW-2019-1-SI:CS+NI-A, BW:HOH-WW-2019-1-SI:CS+NI-B, BW:HOH-WW-2019-1-SI:CS+NI-C, BW:HOH-WW-2019-1-SI:CS+NI-D, BW:HOH-WW-2019-1-TH:BD-A, BW:HOH-WW-2019-1-TH:BD-B, BW:HOH-WW-2019-1-TH:BD-C, BW:HOH-WW-2019-1-TH:BD-D, BW:HOH-WW-2019-1-TH:BD+A-A, BW:HOH-WW-2019-1-TH:BD+A-B, BW:HOH-WW-2019-1-TH:BD+A-C, BW:HOH-WW-2019-1-TH:BD+A-D, BW:HOH-WW-2019-1-TH:CS-A, BW:HOH-WW-2019-1-TH:CS-B, BW:HOH-WW-2019-1-TH:CS-C, BW:HOH-WW-2019-1-TH:CS-D, BW:HOH-WW-2019-1-TH:CS+A-A, BW:HOH-WW-2019-1-TH:CS+A-B, BW:HOH-WW-2019-1-TH:CS+A-C, BW:HOH-WW-2019-1-TH:CS+A-D, BW:HOH-WW-2019-2-CAN-A, BW:HOH-WW-2019-2-CAN-B, BW:HOH-WW-2019-2-CAN-C, BW:HOH-WW-2019-2-CAN-D, BW:HOH-WW-2019-2-SI:BD-A, BW:HOH-WW-2019-2-SI:BD-B, BW:HOH-WW-2019-2-SI:BD-C, BW:HOH-WW-2019-2-SI:BD-D, BW:HOH-WW-2019-2-SI:BD+NI-A, BW:HOH-WW-2019-2-SI:BD+NI-B, BW:HOH-WW-2019-2-SI:BD+NI-C, BW:HOH-WW-2019-2-SI:BD+NI-D, BW:HOH-WW-2019-2-SI:CS-A, BW:HOH-WW-2019-2-SI:CS-B, BW:HOH-WW-2019-2-SI:CS-C, BW:HOH-WW-2019-2-SI:CS-D, BW:HOH-WW-2019-2-SI:CS+NI-A, BW:HOH-WW-2019-2-SI:CS+NI-B, BW:HOH-WW-2019-2-SI:CS+NI-C, BW:HOH-WW-2019-2-SI:CS+NI-D, BW:HOH-WW-2019-2-TH:BD-A, BW:HOH-WW-2019-2-TH:BD-B, BW:HOH-WW-2019-2-TH:BD-C, BW:HOH-WW-2019-2-TH:BD-D, BW:HOH-WW-2019-2-TH:BD+A-A, BW:HOH-WW-2019-2-TH:BD+A-B, BW:HOH-WW-2019-2-TH:BD+A-C, BW:HOH-WW-2019-2-TH:BD+A-D, BW:HOH-WW-2019-2-TH:CS-A, BW:HOH-WW-2019-2-TH:CS-B, BW:HOH-WW-2019-2-TH:CS-C, BW:HOH-WW-2019-2-TH:CS-D, BW:HOH-WW-2019-2-TH:CS+A-A, BW:HOH-WW-2019-2-TH:CS+A-B, BW:HOH-WW-2019-2-TH:CS+A-C, BW:HOH-WW-2019-2-TH:CS+A-D, BW:HOH-WW-2020-1-CAN-A, BW:HOH-WW-2020-1-CAN-B, BW:HOH-WW-2020-1-CAN-C, BW:HOH-WW-2020-1-CAN-D, BW:HOH-WW-2020-1-SI:BD-A, BW:HOH-WW-2020-1-SI:BD-B, BW:HOH-WW-2020-1-SI:BD-C, BW:HOH-WW-2020-1-SI:BD-D, BW:HOH-WW-2020-1-SI:BD+NI-A, BW:HOH-WW-2020-1-SI:BD+NI-B, BW:HOH-WW-2020-1-SI:BD+NI-C, BW:HOH-WW-2020-1-SI:BD+NI-D, BW:HOH-WW-2020-1-SI:CS-A, BW:HOH-WW-2020-1-SI:CS-B, BW:HOH-WW-2020-1-SI:CS-C, BW:HOH-WW-2020-1-SI:CS-D, BW:HOH-WW-2020-1-SI:CS+NI-A, BW:HOH-WW-2020-1-SI:CS+NI-B, BW:HOH-WW-2020-1-SI:CS+NI-C, BW:HOH-WW-2020-1-SI:CS+NI-D, BW:HOH-WW-2020-1-TH:BD-A, BW:HOH-WW-2020-1-TH:BD-B, BW:HOH-WW-2020-1-TH:BD-C, BW:HOH-WW-2020-1-TH:BD-D, BW:HOH-WW-2020-1-TH:BD+A-A, BW:HOH-WW-2020-1-TH:BD+A-B, BW:HOH-WW-2020-1-TH:BD+A-C, BW:HOH-WW-2020-1-TH:BD+A-D, BW:HOH-WW-2020-1-TH:CS-A, BW:HOH-WW-2020-1-TH:CS-B, BW:HOH-WW-2020-1-TH:CS-C, BW:HOH-WW-2020-1-TH:CS-D, BW:HOH-WW-2020-1-TH:CS+A-A, BW:HOH-WW-2020-1-TH:CS+A-B, BW:HOH-WW-2020-1-TH:CS+A-C, BW:HOH-WW-2020-1-TH:CS+A-D, BW:HOH-WW-2020-2-CAN-A, BW:HOH-WW-2020-2-CAN-B, BW:HOH-WW-2020-2-CAN-C, BW:HOH-WW-2020-2-CAN-D, BW:HOH-WW-2020-2-SI:BD-A, BW:HOH-WW-2020-2-SI:BD-B, BW:HOH-WW-2020-2-SI:BD-C, BW:HOH-WW-2020-2-SI:BD-D, BW:HOH-WW-2020-2-SI:BD+NI-A, BW:HOH-WW-2020-2-SI:BD+NI-B, BW:HOH-WW-2020-2-SI:BD+NI-C, BW:HOH-WW-2020-2-SI:BD+NI-D, BW:HOH-WW-2020-2-SI:CS-A, BW:HOH-WW-2020-2-SI:CS-B, BW:HOH-WW-2020-2-SI:CS-C, BW:HOH-WW-2020-2-SI:CS-D, BW:HOH-WW-2020-2-SI:CS+NI-A, BW:HOH-WW-2020-2-SI:CS+NI-B, BW:HOH-WW-2020-2-SI:CS+NI-C, BW:HOH-WW-2020-2-SI:CS+NI-D, BW:HOH-WW-2020-2-TH:BD-A, BW:HOH-WW-2020-2-TH:BD-B, BW:HOH-WW-2020-2-TH:BD-C, BW:HOH-WW-2020-2-TH:BD-D, BW:HOH-WW-2020-2-TH:BD+A-A, BW:HOH-WW-2020-2-TH:BD+A-B, BW:HOH-WW-2020-2-TH:BD+A-C, BW:HOH-WW-2020-2-TH:BD+A-D, BW:HOH-WW-2020-2-TH:CS-A, BW:HOH-WW-2020-2-TH:CS-B, BW:HOH-WW-2020-2-TH:CS-C, BW:HOH-WW-2020-2-TH:CS-D, BW:HOH-WW-2020-2-TH:CS+A-A, BW:HOH-WW-2020-2-TH:CS+A-B, BW:HOH-WW-2020-2-TH:CS+A-C, BW:HOH-WW-2020-2-TH:CS+A-D, 10 BDcat, 11 BDmix-high, 12 BDmix-high, 13 BDmix-high, 15 BDmix-low, 17 BDmix-low, 19 BDmix-low, 2 BDpig, 3 BDpig, 4 BDpig, 6 BDcat, 10 BDpig, 11 BDcat, 12 BDcat, 13 BDcat, 15 BDmix-high, 17 BDmix-high, 19 BDmix-high, 2 BDmix-low, 3 BDmix-low, 4 BDmix-low, 6 BDpig, 1 AD, 10 AD-L, 12 AD, 2 AD-F, 4 AD-L, 5 AD-F, 6 AD, 8 AD-F, 9 AD-L, 1 AD-L, 10 AD, 12 AD-L, 5 AD, 6 AD-F, 8 AD, 9 AD-F, 1 AD-F, 10 AD-F, 2 AD-L, 4 AD, 8 AD-L, 1 PS-L, 10 PS-F, 12 PS, 2 PS, 4 PS-F, 5 PS, 6 PS-F, 8 PS-L, 9 PS-L, 1 PS-F, 10 PS-L, 5 PS-L, 6 PS, 9 PS-F, 12 PS-F, 15 PS-L, 16 PS-F, 18 PS, 3 PS-L, 4 PS, 9 PS, 1 AD-FB, 3 AD-F, 6 AD-FB, 9 AD-FB, 1 AD-LB1, 12 AD-LB1, 4 AD-LB2, 5 AD-LB2, 6 AD-LB1, 9 AD-LB2, 12 PS-LB2, 16 PS-LB2, 18 PS-LB1, 3 PS-LB2, 4 PS-LB1, 6 PS-L, 9 PS-LB1, 70, 71, 72, 73, 74, 75, 76, 77, 78, 82, 54, 63, 64, 67, 68, 69, 111, 112, 113, 114, 143, 115, 116, 52, 61, 62, 65, 66, 80, 83, 85, 90, 91, 92, 93, 94, 95, 96, 100, 97, 98, 99, 109, 110, 11RAW, 12H2SO4, 13RAW, 14AA, 15RAW, 17AA, 18H2SO4, 4AA, 8H2SO4, 10RAW, 11AA, 12AA, 13H2SO4, 14RAW, 1OSI, 2OSI, 3OSI, 4TH, 6TH, 7TH 
## 
##  plot.area 
## Class: numeric 
## Length: 3268 
## Missing values: 849 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## 2.00e-01 3.85e-01 8.10e+01 7.07e+02 2.60e+05 
## 
##  treat 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: 1, 5, 3, 4, 2, 6, 7, 8, 9, 10, digested, stored, decanted, filtered, untreated, floculated, Aut CS0910, ES CS1011, Aut PS1011, ES PS0910, LS PS0910, PE PS1011, ES CS0910, Aut CS1011, LS CS0910, ES PS1011, Aut PS0910, PE CS1011, ES CS10, LS CS1011, Summer CS10, Summer CS1011, Autumn 2010 UD, Spring 2009 UD, Summer 2010 UD, Summer 2011 UD, Autumn 2008 UD, Summer 2009 UD, Spring 2009 D, Spring 2011 D, Summer 2010 D, Spring 2011 UD, Spring 2010 UD, Autumn 2010 D, Spring 2010 D, Summer 2011 D, Autumn 2008 D, Summer 2009 D, Whole-Surface, Decanted-Surface, Whole-MAI, Decanted-MAI, SSD, Splash, Prestorage, No prestorage, no incorp, 0 h shallow, 6 h shallow, 0 h deep, KIM, JOS_d, Band, JOS_e, JL_combi, UM, Harso, ana sep, untreat, ana sep diluted, untreat diluted, ana, Simpel tine, Trail hose, Winge tine, Anaerobic digested slurry, Untreated slurry, Anaerobic digested and solid-liquid separated slurry, Unter, Disc injection, Barn acidification, Field acidification, Combined disc and tine injection, cof, monof, ps, cs, monof/cof, Splash Plate, Trailing Hose - Short Grass, Trailing Hose - Long Grass, Trailing Hose, Trailing Shoe, Shallow Injection, Medium Size, Small Size, Field Size, Cattle Slurry, Fattening Pig Slurry, Breeding Pig Slurry, F1, F2, F3, Cattle Slurry - LowDM30, Cattle Slurry - HighDM30, Cattle Slurry - HighDM15, Shallow Injection - Conc, Splash Plate - Noon, Splash Plate - Evening, Splash Plate - Morning, Trailing Hose - Noon, Trailing Hose - Evening, Trailing Hose - Morning, none, slurry_bov, inc_slurry_bov, slurry_pig, dig_slurry_pig, trailing shoe, broadband & incorporation, broadcast, INCORP, SURF, acidified_5.2, acidified_5.6, acidified_5.7, acidified, ES, E, I, CK, A, SS, B, BACK , MA, M, 25, P, S, CA, DA, PA, C, D, SA, 21, 16, BACK, 41, 42, 0, 0,5, 2,5, 0,6, 2,6, 0,0, 7,0, 7,2, AER30, AER25, AER20, AER7, AER54, 30, 20, 20diluted, eGylle_bLS, eGylle_bLS_Alpha1, eGylle_bLS_Alpha2, eGylle_DTM1, eGylle_DTM2, eGylle_DTM3, eGylle_bLS_avg_time, eGylle_IHF, tank, field, untreated wide banded, separated broadcast, untreated narrow banded, untreated broadcast, separated narrow banded, untreated SSD, separated SSD, TH, Bo, Vo, TH20, Jyndevand, Rønhave, Foulum, Jyndevad, Disc, control, irrigation, NUGA-tine, separated, Bomech, BomechAcid, AGM, CRDS_1m, CRDS_2m, MD, Digestate, Urea, SIC-13_EC, SIC-13_IDM, SIC-13_TAGM, SS-13_IDM, 3-BLD, 2-BRM, eGylle_FC_1, eGylle_FC_2, eGylle_FC_3, eGylle_FC_4, WT, DFC, bLS, DFC_inj, DFC_th, bLS_inj, bLS_th, A dis, A dis acid, A acid, B acid, F, G, H, D-CM, D-CM-CC, U-CM, Trailing hose, Trailing shoe, NUGA, eGylle_bLS_acid_traps_0.25m, eGylle_bLS_acid_traps_0.54m, eGylle_bLS_acid_traps_1.04m, Reference, Separated, Plasma, DIGB_1, DIGL_1, LIS_1, DIGB_2, DIGL_2, LIS_2, DIGB_3, DIGS_1, FUM_1, DIGB_4, DIGL_3, LIS_3, DIGB_5, DIGS_2, FUM_2, DIGB_6, DIGL_4, LIS_4, DIGB_7, DIGL_5, LIS_5, 400, A dec, A dec acid, B screw acid, C dec, B screw, CAN, SI:CS, SI:CS+NI, TS:CS, TS:CS+A, SI:BD, SI:BD+NI, TH:BD, TH:BD+A, TH:CS, TH:CS+A, Un30, Un25, Sep25, Sep30, Un12, TH-12, TS-TSB-12, TS-TSB-4, TH-4, TS-Bo, TS-TSB, TS-TSB+, Cattle A, Pig A, Cattle B, Pig B, Cattle C, Pig C, 2-pos, No, 7-pos, A screw, A MF liquid, A MF slurry, TS-TSBacid, OSI, Machine plot DFC, Low acid DFC, Medium acid DFC, High acid DFC, No acid DFC, Machine plot bLS, BDcat, BDmix-high, BDmix-low, BDpig, AD, AD-L, AD-F, PS-L, PS-F, PS, AD-FB, AD-LB1, AD-LB2, PS-LB2, PS-LB1, 11, 12, 70, 71, 72, 73, 74, 75, 76, 77, 78, 82, 22, 27, 28, 29, 31, 32, 33, 39, 43, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 55, 56, 57, 58, 59, 60, 63, 64, 67, 68, 69, 18, 19, 23, 111, 112, 24, 26, 113, 114, 14, 34, 35, 36, 37, 38, 15, 17, 40, 143, 115, 116, 52, 61, 62, 65, 66, 79, 80, 81, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 100, 97, 98, 99, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, RAW, H2SO4, AA, Røn-TH, Jyn-OSI, Jyn-TH, Røn-OSI, Jyn-OSI-P2, Røn-OSI-P1, Røn-OSI-P2, Jyn-OSI-P1 
## 
##  rep 
## Class: character 
## Length: 3268 
## Missing values: 565 
## Unique values: 1, 5, 3, 4, 2, NA, 0, 6, 7, 8, B1, B2, B3, large neighbouring plot, B1b, B4, B2b, B3b, 9, A, B, C, D 
## 
##  rep2 
## Class: numeric 
## Length: 3268 
## Missing values: 2585 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    1    1    1    2    7 
## 
##  n.ints 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 1 
## Maximum: 1310 
## Mean: 32.7242962056304 
## Median: 9 
## Quantiles
##   0%  25%  50%  75% 100% 
##    1    7    9   53 1310 
## 
##  t.start.p 
## Class: POSIXct 
##  Class: POSIXt 
## Length: 3268 
## Missing values: 656 
## Unique values: 1998-09-07, 1998-10-12, 1999-02-01, 1999-03-31, 1997-08-04, 1997-10-13, 1997-12-08, 1998-03-09, 1997-04-30 16:25:00, 1997-04-30 14:50:00, 1997-04-30 12:00:00, 1997-04-28 10:18:00, 1997-04-28 11:11:00, 1997-04-28 12:14:00, 1997-04-28 12:57:00, 1997-04-28 13:44:00, 1997-04-28 14:05:00, 1994-07-15 16:40:00, 1995-07-11 11:30:00, 1994-05-10 13:50:00, 1995-05-04 11:20:00, 1995-05-04 12:15:00, 1994-03-02 12:00:00, 1994-05-16 15:00:00, 1994-07-01 11:45:00, 1994-11-16 12:15:00, 1995-03-07 12:15:00, 1995-05-29 11:15:00, 1996-05-27 12:00:00, 1996-05-27 11:20:00, 1996-05-27 11:15:00, 1996-05-27 12:26:00, 1996-05-27 12:17:00, 1996-05-27 12:08:00, 1998-07-15 12:00:00, 1998-07-15 11:20:00, 1998-07-15 12:15:00, 1998-07-15 10:23:00, 1998-07-15 10:33:00, 1998-07-15 10:47:00, 1994-08-01 11:20:00, 1994-08-01 12:15:00, 1995-07-19 11:30:00, 1995-09-26 11:30:00, NA, 1995-10-17 11:30:00, 1997-06-17 09:55:00, 1997-06-17 10:05:00, 1997-06-17 10:12:00, 1997-06-17 10:25:00, 1997-06-17 10:33:00, 1997-06-17 10:40:00, 1998-05-20 10:50:00, 1998-05-20 10:55:00, 1998-05-20 11:10:00, 1998-05-20 11:15:00, 1998-09-16 12:40:00, 1999-06-17 10:35:00, 1999-06-17 10:05:00, 1999-06-17 10:21:00, 1998-09-10 12:35:00, 1998-10-30 11:00:00, 1999-03-25 13:00:00, 1999-04-07 11:00:00, 1999-09-14 12:00:00, 1990-07-05 09:00:00, 1991-05-01 09:15:00, 1991-07-03 08:15:00, 1991-09-07 08:00:00, 1991-11-03 08:45:00, 1991-11-15 08:45:00, 1991-12-03 08:30:00, 1996-05-01 11:00:00, 1996-05-01 10:30:00, 1993-04-19 11:00:00, 1994-05-16 13:20:00, 1994-05-30 13:50:00, 1994-05-30 13:10:00, 1995-05-02 12:50:00, 1995-05-02 11:15:00, 1995-05-15 11:15:00, 1995-05-15 11:45:00, 1995-06-06 11:15:00, 1995-06-06 10:55:00, 1993-04-19 11:30:00, 1993-05-10 12:00:00, 1993-05-10 12:30:00, 1993-06-14 13:00:00, 1994-05-02 11:40:00, 1994-05-02 12:10:00, 1994-05-16 13:00:00, 1997-03-17 11:30:00, 1997-04-08 08:45:00, 1997-04-28 08:30:00, 1997-05-12 08:00:00, 1997-05-12 07:20:00, 1997-06-09 07:15:00, 1997-06-09 07:45:00, 1997-06-30 08:15:00, 1997-06-30 09:15:00, 1998-08-24 10:00:00, 1999-08-16 09:28:00, 1997-07-29 09:34:00, 1997-07-29 10:03:00, 1997-07-29 09:40:00, 1997-07-29 09:47:00, 1997-07-29 09:54:00, 1997-09-29 09:45:00, 1997-09-29 10:12:00, 1997-09-29 09:52:00, 1997-09-29 09:59:00, 1997-09-29 10:06:00, 1997-12-01 09:59:00, 1997-12-01 10:04:00, 1997-12-01 10:09:00, 1997-12-01 10:15:00, 1998-03-10 09:26:00, 1998-03-10 09:31:00, 1998-03-10 09:38:00, 1998-03-10 09:45:00, 1998-08-03 11:50:00, 1998-08-03 12:11:00, 1998-08-03 11:53:00, 1998-08-03 11:55:00, 1998-08-03 11:58:00, 1998-08-03 12:00:00, 1998-08-03 12:02:00, 1998-08-03 12:04:00, 1998-08-03 12:06:00, 1998-08-03 12:09:00, 1998-11-09 10:13:00, 1998-11-09 10:30:00, 1998-11-09 10:18:00, 1998-11-09 10:22:00, 1998-11-09 10:26:00, 1999-01-18 09:58:00, 1999-01-18 10:15:00, 1999-01-18 10:03:00, 1999-01-18 10:06:00, 1999-01-18 10:11:00, 1999-05-18 11:17:00, 1999-05-18 11:30:00, 1999-05-18 11:20:00, 1999-05-18 11:23:00, 1999-05-18 11:27:00, 1997-08-18 10:33:00, 1997-08-18 10:40:00, 1997-08-18 10:25:00, 1997-08-18 10:50:00, 1997-10-21 09:20:00, 1997-10-21 09:08:00, 1997-10-21 09:02:00, 1997-10-21 09:13:00, 1998-01-27 11:23:00, 1998-01-27 11:32:00, 1998-01-27 11:38:00, 1998-01-27 11:42:00, 1998-03-31 09:56:00, 1998-03-31 09:45:00, 1998-03-31 09:51:00, 1998-03-31 10:00:00, 1998-08-10 09:53:00, 1998-08-10 10:05:00, 1998-08-10 09:57:00, 1998-08-10 10:07:00, 1998-08-10 10:00:00, 1998-08-10 10:02:00, 1998-08-10 10:10:00, 1998-11-16 10:35:00, 1998-11-16 10:27:00, 1998-11-16 10:17:00, 1998-11-16 10:39:00, 1999-02-01 10:01:00, 1999-02-01 09:57:00, 1999-02-01 10:10:00, 1999-02-01 10:13:00, 1999-02-01 10:04:00, 1999-03-01 10:00:00, 1999-03-01 10:09:00, 1999-03-01 09:53:00, 1999-03-01 10:04:00, 1998-05-11 10:04:00, 1998-05-11 09:50:00, 1998-05-11 09:41:00, 1998-05-11 09:33:00, 1998-05-11 09:56:00, 1999-08-23 09:46:00, 1999-08-23 09:55:00, 1999-08-23 10:02:00, 1999-08-23 09:40:00, 1999-08-23 09:35:00, 1998-06-15 10:04:00, 1998-06-15 10:00:00, 1998-06-15 10:12:00, 1998-06-15 10:09:00, 1998-06-15 10:24:00, 1998-06-15 10:27:00, 1998-06-15 10:35:00, 1998-06-15 10:40:00, 1999-07-19 11:55:00, 1999-07-19 12:05:00, 1999-07-19 12:07:00, 1999-07-19 12:09:00, 1999-07-19 12:16:00, 1999-07-19 12:18:00, 1998-05-26 10:00:00, 1998-05-26 10:09:00, 1998-05-26 10:18:00, 1998-05-26 10:26:00, 1997-09-15 10:06:00, 1997-09-15 09:51:00, 1997-09-15 09:58:00, 1997-09-15 10:13:00, 1998-09-29 14:26:00, 1998-09-29 14:31:00, 1998-09-29 14:34:00, 1998-09-29 14:39:00, 1997-09-22 12:57:00, 1997-09-22 12:00:00, 1998-10-06 11:57:00, 1998-10-06 12:04:00, 1998-10-13 11:28:00, 1998-10-13 11:20:00, 1999-04-06 13:20:00, 1999-04-06 13:10:00, 1999-04-06 12:40:00, 1999-06-09 12:47:00, 1999-06-09 11:25:00, 1999-06-09 12:26:00, 1999-06-16 09:23:00, 1999-06-16 09:31:00, 1999-07-21 10:45:00, 1999-07-21 10:20:00, 1999-07-21 12:50:00, 1999-08-10 10:30:00, 1999-08-10 10:10:00, 1997-09-30 12:20:00, 1997-09-30 11:45:00, 1997-11-10 12:10:00, 1997-11-10 11:45:00, 1998-02-18 11:55:00, 1998-02-18 14:15:00, 1998-05-06 11:35:00, 1998-05-06 11:40:00, 1998-06-09 11:30:00, 1998-06-09 11:47:00, 1998-06-23 12:04:00, 1998-06-23 11:48:00, 1998-08-25 11:44:00, 1998-08-25 11:51:00, 1992-03-30 14:17:00, 1992-03-30 16:06:00, 1992-03-30 15:40:00, 1993-08-11 10:52:00, 1993-08-11 10:13:00, 1993-08-11 10:33:00, 1993-08-19 13:06:00, 1993-08-19 06:07:00, 1993-08-19 20:07:00, 1993-10-05 10:58:00, 1993-10-05 10:27:00, 1993-10-05 09:44:00, 1993-11-09 10:10:00, 1993-11-09 10:33:00, 1993-11-09 09:48:00, 1993-11-23 10:07:00, 1993-11-23 10:28:00, 1993-11-23 09:46:00, 1994-02-17 10:45:00, 1994-02-17 11:11:00, 1994-02-17 10:13:00, 1994-03-09 10:38:00, 1994-03-09 11:12:00, 1994-03-09 10:12:00, 1994-04-28 10:48:00, 1994-04-28 11:22:00, 1994-04-28 10:10:00, 1994-06-15 10:30:00, 1994-06-15 10:56:00, 1994-06-15 10:05:00, 1994-07-13 10:48:00, 1994-07-13 10:20:00, 1994-07-13 09:47:00, 1992-08-12 10:17:00, 1992-08-12 10:43:00, 1992-08-12 09:52:00, 1992-10-13 10:03:00, 1992-10-13 09:38:00, 1993-03-18 10:01:00, 1993-03-18 10:48:00, 1993-03-18 11:14:00, 1993-05-11 10:47:00, 1993-05-11 10:26:00, 1993-05-11 11:14:00, 1993-06-08 09:03:00, 1993-06-08 09:34:00, 1993-06-08 10:01:00, 1993-06-24 10:45:00, 1993-06-24 10:19:00, 1993-06-24 11:09:00, 1993-07-07 10:16:00, 1993-07-07 09:53:00, 1993-07-07 09:11:00, 1993-07-29 09:30:00, 1993-07-29 09:01:00, 1993-09-15 12:45:00, 1993-09-15 12:49:00, 1993-09-15 12:53:00, 1993-09-15 12:56:00, 1993-09-15 13:01:00, 1993-09-15 13:06:00, 1993-09-15 13:10:00, 1995-08-15 10:05:00, 1995-08-15 10:06:00, 1995-08-15 10:08:00, 1995-08-15 10:09:00, 1995-08-15 10:11:00, 1995-08-15 10:13:00, 1995-08-15 10:14:00, 1993-10-28 10:33:00, 1993-10-28 10:30:00, 1993-10-28 10:27:00, 1993-10-28 10:24:00, 1993-10-28 10:21:00, 1993-10-28 10:18:00, 1993-11-04 11:47:00, 1993-11-04 11:44:00, 1993-11-04 11:39:00, 1993-11-04 11:37:00, 1993-11-04 11:33:00, 1993-11-04 11:32:00, 1993-11-04 11:29:00, 1994-03-23 13:28:00, 1994-03-23 13:26:00, 1994-03-23 13:24:00, 1994-03-23 13:21:00, 1994-03-23 13:18:00, 1994-03-23 13:14:00, 1994-03-23 13:11:00, 1994-06-01 08:00:00, 1994-06-01 10:00:00, 1994-06-01 12:02:00, 1994-06-01 14:00:00, 1994-06-01 16:01:00, 1994-06-01 18:10:00, 1994-06-01 20:00:00, 1994-06-08 10:12:00, 1994-06-08 10:15:00, 1994-06-08 10:17:00, 1994-06-08 10:18:00, 1994-06-08 10:20:00, 1994-06-08 10:22:00, 1994-06-08 10:24:00, 1994-06-22 10:08:00, 1994-06-22 10:10:00, 1994-06-22 10:12:00, 1994-06-22 10:13:00, 1994-06-22 10:16:00, 1994-06-22 10:18:00, 1994-07-26 10:05:00, 1994-07-26 10:07:00, 1994-07-26 10:09:00, 1994-07-26 10:11:00, 1994-07-26 10:14:00, 1994-07-26 10:18:00, 1994-10-11 10:43:00, 1994-10-11 10:46:00, 1994-10-11 10:48:00, 1994-10-11 10:50:00, 1994-10-11 10:52:00, 1994-10-11 10:54:00, 1993-05-04 11:00:00, 1993-05-04 15:00:00, 1993-05-04 12:00:00, 1993-05-04 13:00:00, 1993-05-04 14:00:00, 1993-06-15 13:00:00, 1993-06-15 10:00:00, 1993-06-15 11:00:00, 1993-06-15 12:00:00, 1994-06-16 14:00:00, 1993-04-27 11:00:00, 1993-04-27 11:30:00, 1993-04-27 12:00:00, 1993-04-27 13:00:00, 1993-06-10 10:00:00, 1994-05-05 10:00:00, 1994-05-05 11:00:00, 1994-06-20 10:00:00, 1994-06-20 11:00:00, 1994-05-03 16:00:00, 1994-05-03 15:00:00, 1994-04-19 16:00:00, 1994-09-13 14:00:00, 1994-09-13 11:30:00, 1994-09-13 12:00:00, 2000-06-19 09:00:00, 2001-06-19 11:48:00, 2001-06-18 09:32:00, 2002-06-25 08:57:00, 2002-06-19 09:33:00, 2003-06-17 09:16:00, 2003-06-23 09:22:00, 2001-05-23 09:34:00, 2001-05-22 10:37:00, 2002-05-08 09:01:00, 2002-05-13 09:07:00, 2003-05-15 08:45:00, 2003-05-20 08:47:00, 2004-05-11 10:30:00, 2005-05-09 10:00:00, 2005-09-06 11:00:00, 2009-08-25 14:30:00, 2011-02-08 12:10:00, 2010-08-18 14:05:00, 2010-03-11 12:10:00, 2010-05-05 13:40:00, 2010-09-22 11:10:00, 2011-02-08 12:20:00, 2010-03-11 14:05:00, 2009-08-25 14:20:00, 2010-08-18 12:20:00, 2010-05-05 12:35:00, 2010-03-11 11:55:00, 2010-09-22 11:20:00, 2011-02-08 13:45:00, 2010-08-18 14:20:00, 2010-05-05 13:52:00, 2009-08-25 12:00:00, 2010-09-22 13:05:00, 2010-09-22 12:55:00, 2010-05-05 12:45:00, 2010-09-22 11:25:00, 2009-08-25 14:05:00, 2010-08-18 12:35:00, 2010-03-11 12:40:00, 2011-02-08 13:55:00, 2010-08-18 14:30:00, 2010-05-05 14:00:00, 2010-09-22 13:15:00, 2010-08-18 12:10:00, 2009-08-25 12:12:00, 2009-08-25 11:55:00, 2011-02-08 12:30:00, 2010-03-11 14:40:00, 2011-02-08 13:40:00, 2010-05-05 12:20:00, 2011-03-15 12:45:00, 2010-09-07 11:20:00, 2010-04-13 12:40:00, 2011-04-12 11:05:00, 2011-03-15 11:20:00, 2010-04-13 11:55:00, 2011-04-12 10:30:00, 2011-03-15 12:00:00, 2010-09-07 12:15:00, 2010-04-13 13:00:00, 2011-04-12 11:10:00, 2010-09-07 10:55:00, 2010-04-13 11:10:00, 2011-03-15 12:10:00, 2010-07-06 13:00:00, 2011-07-05 11:15:00, 2010-04-13 12:10:00, 2011-03-15 11:25:00, 2010-04-13 11:20:00, 2011-03-15 12:35:00, 2010-09-07 11:50:00, 2010-09-07 11:35:00, 2010-09-07 11:00:00, 2010-07-06 12:25:00, 2011-07-05 10:49:00, 2010-07-06 11:15:00, 2011-07-05 10:35:00, 2010-10-13 12:00:00, 2009-05-06 11:33:00, 2010-06-15 12:38:00, 2011-06-22 09:45:00, 2008-09-30 10:35:00, 2010-10-13 09:10:00, 2009-06-22 15:41:00, 2010-06-16 12:16:00, 2011-06-21 09:34:00, 2009-05-05 09:54:00, 2011-02-02 09:42:00, 2010-06-16 11:34:00, 2011-02-02 11:30:00, 2010-06-16 09:20:00, 2009-05-06 16:10:00, 2010-03-17 12:30:00, 2010-10-12 10:07:00, 2009-05-06 14:14:00, 2010-03-17 15:00:00, 2011-06-22 11:10:00, 2009-05-05 12:31:00, 2011-02-02 12:50:00, 2010-06-15 15:19:00, 2008-10-01 10:35:00, 2011-02-03 09:42:00, 2009-06-23 15:01:00, 2010-06-15 09:50:00, 2008-09-30 16:10:00, 2010-10-12 14:20:00, 2010-03-16 14:32:00, 2009-06-22 12:25:00, 2011-06-21 10:16:00, 2008-09-30 13:30:00, 2010-03-16 10:45:00, 2011-02-03 12:15:00, 2009-06-22 10:20:00, 2008-10-01 15:55:00, 2010-10-13 09:49:00, 2010-03-16 16:55:00, 2009-06-23 11:13:00, 2011-06-21 11:53:00, 2008-10-01 12:41:00, 2010-10-12 12:12:00, 2010-03-17 10:25:00, 2009-06-23 12:36:00, 2011-06-22 09:25:00, 2005-10-20 11:29:00, 2005-10-20 11:37:00, 2005-10-20 11:45:00, 2005-10-20 11:53:00, 2005-10-20 12:22:00, 2005-10-20 12:30:00, 2005-10-20 12:38:00, 2005-10-20 12:50:00, 2005-10-20 14:22:00, 2005-10-20 14:27:00, 2005-10-20 14:33:00, 2005-10-20 14:41:00, 2005-10-20 15:10:00, 2005-10-20 15:16:00, 2005-10-20 15:24:00, 2005-10-20 15:29:00, 2005-05-12 11:27:00, 2005-05-12 11:39:00, 2005-05-12 11:48:00, 2005-05-12 11:56:00, 2005-05-12 15:31:00, 2005-05-12 13:38:00, 2005-05-12 13:46:00, 2005-05-12 13:54:00, 2005-05-12 14:02:00, 2005-05-12 15:36:00, 2005-05-12 15:41:00, 2005-05-12 14:45:00, 2005-05-12 14:52:00, 2005-05-12 14:58:00, 2005-05-12 15:03:00, 2005-05-12 15:49:00, 2005-07-26 10:43:00, 2005-07-26 10:54:00, 2005-07-26 11:08:00, 2005-07-26 11:16:00, 2005-07-26 11:42:00, 2005-07-26 11:50:00, 2005-07-26 11:58:00, 2005-07-26 12:07:00, 2005-07-26 13:27:00, 2005-07-26 13:32:00, 2005-07-26 13:44:00, 2005-07-26 13:53:00, 2005-07-26 14:13:00, 2005-07-26 14:19:00, 2005-07-26 14:29:00, 2005-07-26 14:35:00, 2006-10-24 10:28:00, 2006-10-24 10:31:00, 2006-10-24 10:38:00, 2006-10-24 10:41:00, 2006-10-24 10:45:00, 2006-10-24 10:51:00, 2006-10-24 10:56:00, 2006-10-24 11:02:00, 2006-10-24 11:57:00, 2006-10-24 12:01:00, 2006-10-24 12:06:00, 2006-10-24 12:09:00, 2006-10-24 12:13:00, 2006-10-24 12:18:00, 2006-10-24 12:21:00, 2006-10-24 12:24:00, 2006-05-30 14:32:00, 2006-05-30 14:45:00, 2006-05-30 14:54:00, 2006-05-30 15:06:00, 2006-05-30 15:16:00, 2006-05-30 15:26:00, 2006-05-30 15:36:00, 2006-05-30 15:43:00, 2006-05-30 16:48:00, 2006-05-30 16:54:00, 2006-05-30 17:02:00, 2006-05-30 17:10:00, 2006-05-30 17:19:00, 2006-05-30 17:27:00, 2006-05-30 17:34:00, 2006-05-30 17:40:00, 2006-07-11 10:43:00, 2006-07-11 10:51:00, 2006-07-11 10:57:00, 2006-07-11 11:02:00, 2006-07-11 11:07:00, 2006-07-11 11:12:00, 2006-07-11 11:18:00, 2006-07-11 11:23:00, 2006-07-11 14:10:00, 2006-07-11 14:15:00, 2006-07-11 14:22:00, 2006-07-11 14:26:00, 2006-07-11 14:32:00, 2006-07-11 14:36:00, 2006-07-11 14:41:00, 2006-07-11 14:45:00, 2001-05-09 10:30:00, 2001-05-09 11:00:00, 2001-05-09 14:30:00, 2001-05-09 09:30:00, 2001-05-09 11:30:00, 2001-05-09 13:30:00, 2000-05-16 10:00:00, 2000-05-16 15:00:00, 2000-05-16 11:30:00, 2000-05-16 10:30:00, 2000-05-16 14:30:00, 2000-05-16 12:00:00, 2000-08-02 10:00:00, 2000-08-02 11:30:00, 2000-08-02 14:00:00, 2000-08-02 09:30:00, 2000-08-02 11:00:00, 2000-08-02 13:30:00, 2001-08-09 10:30:00, 2001-08-09 12:30:00, 2001-08-09 14:30:00, 2001-08-09 10:00:00, 2001-08-09 12:00:00, 2001-08-09 15:00:00, 2000-02-22 10:20:00, 2000-02-22 09:10:00, 2004-04-22 08:09:00, 2004-04-22 08:41:00, 2004-04-22 09:15:00, 2004-04-22 09:44:00, 2000-05-30 09:10:00, 2000-05-30 10:33:00, 2000-05-30 09:11:00, 2000-05-30 09:12:00, 2000-05-30 09:36:00, 1999-06-01 10:00:00, 1999-06-01 09:20:00, 1999-06-01 08:55:00, 1999-06-01 08:40:00, 2001-05-15 09:26:00, 2001-05-15 09:57:00, 2001-05-15 10:49:00, 2001-05-15 11:24:00, 2001-05-15 12:27:00, 2002-05-07 09:01:00, 2002-05-07 09:49:00, 2002-05-07 10:29:00, 1999-11-02 10:32:00, 2007-05-22 10:00:00, 2008-04-15 11:00:00, 2009-09-08 12:34:00, 2009-09-08 13:21:00, 2009-09-08 15:27:00, 2010-04-22 12:02:00, 2010-04-22 12:35:00, 2010-04-22 10:29:00, 2010-04-22 10:53:00, 2010-05-04 13:13:00, 2010-05-04 12:50:00, 2010-05-04 10:39:00, 2010-05-04 11:06:00, 2010-05-04 11:53:00, 2010-05-18 10:45:00, 2010-05-18 12:44:00, 2010-05-18 11:33:00, 2010-05-18 12:25:00, 2010-06-02 11:17:00, 2010-06-02 10:45:00, 2010-06-02 12:40:00, 2010-06-02 13:35:00, 2010-06-02 11:32:00, 2010-06-15 12:06:00, 2010-06-15 10:55:00, 2010-06-15 13:16:00, 2010-06-15 11:17:00, 2010-06-15 16:14:00, 2011-05-11 11:37:00, 2011-05-11 10:39:00, 2011-05-11 13:31:00, 2011-05-11 14:30:00, 2011-05-11 12:45:00, 2011-05-04 11:20:00, 2011-05-04 12:53:00, 2011-05-04 13:51:00, 2011-05-04 15:06:00, 2011-05-04 16:07:00, 2013-02-22 16:52:00, 2011-07-14 10:30:00, 2011-07-14 11:02:00, 2011-07-14 11:24:00, 2012-03-12 11:40:00, 2012-03-12 12:26:00, 2012-03-12 11:15:00, 2012-07-04 10:35:00, 2012-07-04 10:09:00, 2012-07-04 09:54:00, 2012-08-14 10:29:00, 2012-08-14 10:12:00, 2012-08-14 09:43:00, 2012-08-14 13:09:00, 2012-11-14 12:03:00, 2012-11-14 11:44:00, 2012-11-14 11:27:00, 2013-05-06 10:13:00, 2013-05-06 10:33:00, 2013-05-06 12:40:00, 2011-09-20 10:20:00, 2011-09-20 10:09:00, 2011-09-20 10:48:00, 2011-11-08 12:45:00, 2011-11-08 11:44:00, 2012-05-10 08:41:00, 2012-05-10 09:27:00, 2012-05-24 09:13:00, 2012-05-24 09:56:00, 2012-05-24 08:38:00, 2012-11-19 12:56:00, 2012-11-19 11:31:00, 2012-11-19 12:15:00, 2014-03-11 10:22:00, 2014-03-11 10:58:00, 2014-03-11 11:33:00, 2013-06-12 09:47:00, 2013-06-12 10:55:00, 2013-06-12 10:20:00, 2013-07-10 10:59:00, 2013-07-10 10:45:00, 2013-07-10 09:27:00, 2012-08-28 10:39:00, 2012-08-27 17:17:00, 2012-08-28 06:09:00, 2013-07-05 12:13:00, 2013-07-04 17:12:00, 2013-07-05 06:40:00, 2011-03-23 11:00:00, 2011-04-05 12:00:00, 2011-03-28 11:00:00, 2012-03-13 10:00:00, 2009-08-05 09:30:00, 2008-04-16 07:30:00, 1994-03-21 09:15:00, 1994-03-17 08:45:00, 1994-03-17 08:30:00, 1994-03-16 08:30:00, 2009-09-23 14:00:00, 2009-03-26 18:30:00, 2010-03-14 14:00:00, 2011-04-06 20:00:00, 2011-10-09 17:00:00, 2011-10-09 17:30:00, 1992-05-19 09:31:00, 1990-06-12 09:30:00, 1990-06-26 11:09:00, 1990-06-26 09:30:00, 1991-07-09 09:37:00, 1991-04-16 09:37:00, 1991-05-14 09:37:00, 1991-06-11 09:37:00, 2014-04-01 13:34:00, 2014-04-01 13:43:00, 2014-04-01 14:24:00, 2014-04-01 13:47:00, 2014-04-01 14:40:00, 2014-04-01 13:59:00, 2014-04-01 13:56:00, 2014-04-01 13:53:00, 2014-04-01 14:34:00, 2014-04-01 13:50:00, 2014-04-01 15:04:00, 2014-04-01 15:02:00, 2014-04-01 13:39:00, 2014-04-01 14:57:00, 2014-04-01 14:18:00, 2014-04-01 13:46:00, 2014-04-01 13:33:00, 2014-04-01 13:31:00, 2014-04-01 14:55:00, 2014-04-01 14:54:00, 2014-05-01 08:40:00, 2014-05-01 10:19:00, 2014-05-01 10:59:00, 2014-05-01 10:28:00, 2014-05-01 10:16:00, 2014-05-01 09:41:00, 2014-05-01 10:30:00, 2014-05-01 10:15:00, 2014-05-01 10:12:00, 2014-05-01 10:10:00, 2014-05-01 10:07:00, 2014-05-01 10:00:00, 2014-05-01 10:31:00, 2014-05-01 10:17:00, 2014-05-01 10:08:00, 2014-05-01 10:57:00, 2014-04-03 11:34:00, 2014-04-03 14:03:00, 2014-04-03 10:15:00, 2014-04-03 12:47:00, 2014-04-03 15:34:00, 2014-04-03 11:32:00, 2014-04-03 10:12:00, 2014-04-03 15:32:00, 2014-04-03 11:30:00, 2014-04-03 10:20:00, 2014-04-03 12:45:00, 2014-04-03 10:10:00, 2014-04-03 15:30:00, 2014-04-03 14:00:00, 2014-04-03 11:23:00, 2014-04-03 12:44:00, 2014-04-03 10:09:00, 2014-04-03 13:58:00, 2014-04-03 11:21:00, 2014-04-03 10:24:00, 2014-04-03 15:38:00, 2014-04-03 14:10:00, 2014-04-03 11:37:00, 2014-04-03 12:52:00, 2014-04-03 10:26:00, 2014-04-03 15:40:00, 2014-04-03 14:11:00, 2014-04-03 11:39:00, 2014-04-03 12:54:00, 2014-04-03 15:42:00, 2014-04-03 14:13:00, 2014-04-03 15:46:00, 2014-04-03 11:40:00, 2014-04-03 10:28:00, 2014-04-03 11:35:00, 2014-04-03 12:56:00, 2014-04-03 15:47:00, 2014-04-03 14:15:00, 2014-04-03 12:58:00, 2014-04-03 15:48:00, 2014-04-03 11:42:00, 2014-04-03 14:17:00, 2014-04-03 10:30:00, 2014-04-03 14:05:00, 2014-04-03 12:59:00, 2014-04-03 10:18:00, 2014-04-03 12:48:00, 2014-04-03 15:36:00, 2014-04-03 10:27:00, 2014-04-30 09:05:00, 2014-04-30 11:32:00, 2014-04-30 11:40:00, 2014-04-30 11:37:00, 2014-04-30 13:24:00, 2014-04-30 13:33:00, 2014-04-30 13:31:00, 2014-04-30 13:29:00, 2014-04-30 13:27:00, 2014-04-30 13:35:00, 2014-04-30 13:47:00, 2014-04-30 13:45:00, 2014-04-30 10:48:00, 2014-04-30 11:30:00, 2014-04-30 13:41:00, 2014-04-30 13:39:00, 2014-04-30 14:41:00, 2014-04-30 14:37:00, 2014-04-30 14:33:00, 2014-04-30 14:31:00, 2014-04-30 14:51:00, 2014-04-30 14:50:00, 2014-04-30 14:48:00, 2014-04-30 14:45:00, 2014-04-30 11:29:00, 2014-04-30 14:44:00, 2014-04-30 15:56:00, 2014-04-30 15:54:00, 2014-04-30 15:50:00, 2014-04-30 15:48:00, 2014-04-30 16:05:00, 2014-04-30 16:03:00, 2014-04-30 16:00:00, 2014-04-30 15:58:00, 2014-04-30 17:05:00, 2014-04-30 11:26:00, 2014-04-30 17:02:00, 2014-04-30 17:00:00, 2014-04-30 16:58:00, 2014-04-30 16:56:00, 2014-04-30 17:16:00, 2014-04-30 17:14:00, 2014-04-30 17:12:00, 2014-04-30 17:10:00, 2014-04-30 17:09:00, 2014-04-30 11:22:00, 2014-04-30 11:47:00, 2014-04-30 11:45:00, 2014-04-30 11:44:00, 2014-04-30 11:42:00, 2014-05-01 11:40:00, 2007-04-24 09:01:00, 2007-05-14 11:03:00, 2007-06-11 09:58:00, 2007-07-30 10:00:00, 2007-04-24 09:03:00, 2007-05-14 11:05:00, 2007-06-11 10:00:00, 2007-07-30 10:02:00, 2007-04-24 09:04:00, 2007-05-14 11:07:00, 2007-06-11 10:01:00, 2007-07-30 10:05:00, 2007-04-24 09:06:00, 2007-05-14 11:09:00, 2007-06-11 10:02:00, 2007-07-30 10:06:00, 2008-04-25 10:37:00, 2008-04-25 10:40:00, 2008-04-25 10:43:00, 2008-04-25 10:47:00, 2008-06-09 10:56:00, 2008-07-04 10:59:00, 2008-06-09 11:00:00, 2008-07-04 11:03:00, 2008-06-09 11:06:00, 2008-07-04 11:07:00, 2008-06-09 11:07:00, 2008-08-05 21:01:00, 2009-04-24 11:00:00, 2009-07-20 09:56:00, 2009-04-24 11:07:00, 2009-07-20 10:00:00, 2009-04-24 11:14:00, 2009-07-20 10:07:00, 2009-04-24 11:02:00, 2009-07-20 09:57:00, 2009-04-24 11:16:00, 2009-07-20 10:10:00, 2009-04-24 11:09:00, 2009-07-20 10:02:00, 2009-04-24 11:13:00, 2009-07-20 10:05:00, 2009-04-24 11:12:00, 2009-07-20 10:03:00, 2009-04-24 11:04:00, 2009-07-20 09:59:00, 2008-04-17 10:03:00, 2008-05-07 09:51:00, 2008-05-21 11:01:00, 2008-04-17 10:06:00, 2008-05-07 09:54:00, 2008-05-21 11:04:00, 2008-04-17 10:08:00, 2008-05-07 09:58:00, 2008-05-21 11:08:00, 2008-04-17 10:10:00, 2008-05-07 10:02:00, 2008-05-21 11:09:00, 2008-04-17 10:13:00, 2008-05-07 10:05:00, 2008-05-21 11:11:00, 2008-04-17 10:16:00, 2008-05-07 10:10:00, 2008-05-21 11:13:00, 1997-04-30 10:30:00, 1996-12-05 10:30:00, 2021-08-11 16:15:00, 2021-08-11 16:23:00, 2021-08-11 16:39:00, 2021-08-11 16:47:00, 2021-08-11 16:55:00, 2021-08-11 17:11:00, 2021-08-11 17:19:00, 2021-08-20 10:51:00, 2021-08-20 10:59:00, 2021-08-20 11:15:00, 2021-08-20 11:23:00, 2021-08-20 11:31:00, 2021-08-20 11:47:00, 2021-08-20 02:22:00, 2022-01-05 13:26:00, 2022-01-05 14:38:00, 2022-01-05 14:54:00, 2022-01-05 13:34:00, 2022-01-05 13:50:00, 2022-01-05 13:58:00, 2022-01-05 14:22:00, 2022-01-05 14:30:00, 2021-11-09 09:38:00, 2021-11-09 10:50:00, 2021-11-09 11:06:00, 2021-11-09 09:46:00, 2021-11-09 10:02:00, 2021-11-09 10:10:00, 2021-11-09 10:18:00, 2021-11-09 10:34:00, 2021-11-09 10:42:00, 2021-08-09 18:00:00, 2021-08-20 08:00:00, 2021-11-08 16:30:00, 2022-01-04 15:00:00, 2021-08-20 11:05:00, 2021-08-20 11:07:00, 2021-08-20 11:33:00, 2021-08-20 11:40:00, 2021-11-09 10:20:00, 2020-11-18 13:40:00, 2020-11-18 14:52:00, 2020-11-18 15:08:00, 2020-11-18 13:48:00, 2020-11-18 14:04:00, 2020-11-18 14:12:00, 2020-11-18 14:20:00, 2020-11-18 14:36:00, 2020-11-18 14:44:00, 2020-11-25 13:48:00, 2020-11-25 15:00:00, 2020-11-25 15:16:00, 2020-11-25 13:56:00, 2020-11-25 14:12:00, 2020-11-25 14:20:00, 2020-11-25 14:28:00, 2020-11-25 14:44:00, 2020-11-25 14:52:00, 2020-12-02 13:25:00, 2020-12-02 14:37:00, 2020-12-02 14:53:00, 2020-12-02 13:33:00, 2020-12-02 13:49:00, 2020-12-02 13:57:00, 2020-12-02 14:05:00, 2020-12-02 14:21:00, 2020-12-02 14:29:00, 2020-12-09 13:57:00, 2020-12-09 15:09:00, 2020-12-09 15:25:00, 2020-12-09 14:05:00, 2020-12-09 14:21:00, 2020-12-09 14:29:00, 2020-12-09 14:37:00, 2020-12-09 14:53:00, 2020-12-09 15:01:00, 2019-05-27 10:22:00, 2019-06-04 09:38:00, 2019-06-17 09:28:00, 2019-06-26 09:13:00, 2018-05-15 13:26:00, 2018-05-15 14:38:00, 2018-05-15 14:54:00, 2018-05-15 13:34:00, 2018-05-15 13:50:00, 2018-05-15 13:58:00, 2018-05-15 14:06:00, 2018-05-15 14:22:00, 2018-05-15 14:30:00, 2018-05-22 13:33:00, 2018-05-22 14:45:00, 2018-05-22 15:01:00, 2018-05-22 13:41:00, 2018-05-22 13:57:00, 2018-05-22 14:05:00, 2018-05-22 14:13:00, 2018-05-22 14:29:00, 2018-05-22 14:37:00, 2018-05-29 13:08:00, 2018-05-29 14:20:00, 2018-05-29 14:36:00, 2018-05-29 13:16:00, 2018-05-29 13:32:00, 2018-05-29 13:40:00, 2018-05-29 13:48:00, 2018-05-29 14:04:00, 2018-05-29 14:12:00, 2018-06-22 13:41:00, 2018-06-22 14:53:00, 2018-06-22 15:09:00, 2018-06-22 13:49:00, 2018-06-22 14:05:00, 2018-06-22 14:13:00, 2018-06-22 14:21:00, 2018-06-22 14:37:00, 2018-06-22 14:45:00, 2018-06-29 14:08:00, 2018-06-29 15:20:00, 2018-06-29 15:36:00, 2018-06-29 14:16:00, 2018-06-29 14:32:00, 2018-06-29 14:40:00, 2018-06-29 14:48:00, 2018-06-29 15:04:00, 2018-06-29 15:12:00, 2018-07-05 13:07:00, 2018-07-05 14:19:00, 2018-07-05 14:35:00, 2018-07-05 13:15:00, 2018-07-05 13:31:00, 2018-07-05 13:39:00, 2018-07-05 13:47:00, 2018-07-05 14:03:00, 2018-07-05 14:11:00, 2018-08-15 13:53:00, 2018-08-15 15:05:00, 2018-08-15 15:21:00, 2018-08-15 14:01:00, 2018-08-15 14:17:00, 2018-08-15 14:25:00, 2018-08-15 14:33:00, 2018-08-15 14:49:00, 2018-08-15 14:57:00, 2018-08-22 13:13:00, 2018-08-22 14:25:00, 2018-08-22 14:41:00, 2018-08-22 13:21:00, 2018-08-22 15:21:00, 2018-08-22 13:45:00, 2018-08-22 13:53:00, 2018-08-22 14:09:00, 2018-08-22 14:17:00, 2018-10-03 14:16:00, 2018-10-03 15:28:00, 2018-10-03 15:44:00, 2018-10-03 14:24:00, 2018-10-03 14:40:00, 2018-10-03 14:48:00, 2018-10-03 14:56:00, 2018-10-03 15:12:00, 2018-10-03 15:20:00, 2018-10-10 13:31:00, 2018-10-10 14:43:00, 2018-10-10 14:59:00, 2018-10-10 13:39:00, 2018-10-10 13:55:00, 2018-10-10 14:03:00, 2018-10-10 14:11:00, 2018-10-10 14:27:00, 2018-10-10 14:35:00, 2018-08-29 14:43:00, 2018-08-29 15:55:00, 2018-08-29 16:11:00, 2018-08-29 14:51:00, 2018-08-29 15:07:00, 2018-08-29 15:15:00, 2018-08-29 15:23:00, 2018-08-29 15:39:00, 2018-08-29 15:47:00, 2018-09-05 13:44:00, 2018-09-05 14:56:00, 2018-09-05 15:12:00, 2018-09-05 13:52:00, 2018-09-05 14:08:00, 2018-09-05 14:16:00, 2018-09-05 14:24:00, 2018-09-05 14:40:00, 2018-09-05 14:48:00, 2018-09-12 13:41:00, 2018-09-12 14:53:00, 2018-09-12 15:09:00, 2018-09-12 13:49:00, 2018-09-12 14:05:00, 2018-09-12 14:13:00, 2018-09-12 14:21:00, 2018-09-12 14:37:00, 2018-09-12 14:45:00, 2019-02-25 15:23:00, 2019-02-25 17:11:00, 2019-02-25 17:35:00, 2019-02-25 15:35:00, 2019-02-25 15:59:00, 2019-02-25 16:11:00, 2019-02-25 16:23:00, 2019-02-25 16:47:00, 2019-02-25 16:59:00, 2019-03-07 12:12:00, 2019-03-07 12:24:00, 2019-03-07 12:48:00, 2019-08-22 10:58:00, 2019-08-22 12:10:00, 2019-08-22 12:26:00, 2019-08-22 11:06:00, 2019-08-22 11:22:00, 2019-08-22 11:30:00, 2019-08-22 11:38:00, 2019-08-22 11:54:00, 2019-08-22 12:02:00, 2019-08-29 11:06:00, 2019-08-29 12:18:00, 2019-08-29 12:34:00, 2019-08-29 11:14:00, 2019-08-29 11:30:00, 2019-08-29 11:38:00, 2019-08-29 11:46:00, 2019-08-29 12:02:00, 2019-08-29 12:10:00, 2020-06-03 14:41:00, 2020-06-03 15:53:00, 2020-06-03 16:09:00, 2020-06-03 14:49:00, 2020-06-03 15:05:00, 2020-06-03 15:13:00, 2020-06-03 15:21:00, 2020-06-03 15:37:00, 2020-06-03 15:45:00, 2020-06-09 13:45:00, 2020-06-09 14:57:00, 2020-06-09 15:13:00, 2020-06-09 13:53:00, 2020-06-09 14:09:00, 2020-06-09 14:17:00, 2020-06-09 14:25:00, 2020-06-09 14:41:00, 2020-06-09 14:49:00, 2021-03-16 16:31:00, 2021-03-16 17:43:00, 2021-03-16 18:00:00, 2021-03-16 16:39:00, 2021-03-16 17:04:00, 2021-03-16 17:11:00, 2021-03-16 17:27:00, 2021-03-16 17:35:00, 2019-08-14 17:30:00, 2019-05-21 12:00:00, 2018-04-23 17:00:00, 2019-04-16 16:00:00, 2020-05-28 17:00:00, 2013-06-18 21:00:00, 2017-07-18 11:10:00, 2016-07-28 10:15:00, 2022-10-11 15:24:00, 2022-10-11 16:36:00, 2022-10-11 16:52:00, 2022-10-11 17:00:00, 2022-10-11 17:16:00, 2022-10-11 17:24:00, 2022-10-11 17:32:00, 2022-10-11 15:40:00, 2022-10-11 15:56:00, 2022-10-11 16:04:00, 2022-10-11 16:12:00, 2022-10-11 16:28:00, 2022-11-16 10:50:00, 2022-11-16 12:02:00, 2022-11-16 12:18:00, 2022-11-16 09:30:00, 2022-11-16 11:06:00, 2022-11-16 11:14:00, 2022-11-16 11:22:00, 2022-11-16 11:38:00, 2022-11-16 11:46:00, 2022-11-16 11:54:00, 2022-11-24 13:30:00, 2022-11-24 12:01:00, 2022-11-24 10:30:00, 2022-11-24 12:26:00, 2022-11-24 12:34:00, 2022-11-24 12:17:00, 2022-11-24 12:42:00, 2022-11-24 12:25:00, 2022-11-24 12:50:00, 2022-11-24 12:33:00, 2022-11-24 12:58:00, 2022-11-24 12:41:00, 2022-11-24 13:14:00, 2022-11-24 12:57:00, 2023-04-12 14:45:00, 2023-04-12 15:57:00, 2023-04-12 16:13:00, 2023-04-12 16:21:00, 2023-04-12 16:53:00, 2023-04-12 17:01:00, 2023-04-12 14:53:00, 2023-04-12 15:01:00, 2023-04-12 15:41:00, 2023-04-19 14:20:00, 2023-04-19 15:32:00, 2023-04-19 15:40:00, 2023-04-19 15:56:00, 2023-04-19 16:04:00, 2023-04-19 16:28:00, 2023-04-19 16:36:00, 2023-04-19 14:28:00, 2023-04-19 14:44:00, 2023-04-19 15:00:00, 2023-04-19 15:08:00, 2023-04-19 15:16:00, 2023-05-10 13:51:00, 2023-05-10 15:03:00, 2023-05-10 15:11:00, 2023-05-10 15:27:00, 2023-05-10 15:35:00, 2023-05-10 15:43:00, 2023-05-10 13:59:00, 2023-05-10 14:15:00, 2023-05-10 14:39:00, 2023-05-17 13:27:00, 2023-05-17 14:39:00, 2023-05-17 14:47:00, 2023-05-17 14:55:00, 2023-05-17 15:03:00, 2023-05-17 15:11:00, 2023-05-17 15:19:00, 2023-05-17 15:35:00, 2023-05-17 15:43:00, 2023-05-17 13:35:00, 2023-05-17 13:43:00, 2023-05-17 13:51:00, 2023-05-17 14:07:00, 2023-05-17 14:15:00, 2023-05-17 14:23:00, 2023-05-24 13:51:00, 2023-05-24 15:03:00, 2023-05-24 15:11:00, 2023-05-24 15:19:00, 2023-05-24 15:27:00, 2023-05-24 15:35:00, 2023-05-24 15:43:00, 2023-05-24 15:59:00, 2023-05-24 16:07:00, 2023-05-24 13:59:00, 2023-05-24 14:07:00, 2023-05-24 14:15:00, 2023-05-24 14:31:00, 2023-05-24 14:39:00, 2023-05-24 14:47:00, 2019-05-15 16:48:00, 2019-05-15 18:00:00, 2019-05-15 18:16:00, 2019-05-15 16:56:00, 2019-05-15 17:12:00, 2019-05-15 17:20:00, 2019-05-15 17:28:00, 2019-05-15 17:44:00, 2019-05-15 17:52:00, 2020-04-17 13:04:00, 2020-04-17 14:16:00, 2020-04-17 14:32:00, 2020-04-17 13:12:00, 2020-04-17 13:28:00, 2020-04-17 13:36:00, 2020-04-17 13:44:00, 2020-04-17 14:00:00, 2020-04-17 14:08:00, 2020-04-23 12:40:00, 2020-04-23 13:52:00, 2020-04-23 14:08:00, 2020-04-23 12:48:00, 2020-04-23 13:04:00, 2020-04-23 13:12:00, 2020-04-23 13:20:00, 2020-04-23 13:36:00, 2020-04-23 13:44:00, 2022-06-08 12:56:00, 2022-06-08 14:08:00, 2022-06-08 14:24:00, 2022-06-08 13:04:00, 2022-06-08 13:20:00, 2022-06-08 13:28:00, 2022-06-08 13:36:00, 2022-06-08 13:52:00, 2022-06-08 14:00:00, 2022-06-15 13:05:00, 2022-06-15 12:33:00, 2022-06-15 12:49:00, 2022-06-15 11:30:00, 2022-06-15 11:46:00, 2022-06-15 11:54:00, 2022-06-15 12:10:00, 2022-06-15 12:18:00, 2022-06-15 12:25:00, 2022-06-22 11:58:00, 2022-06-22 13:10:00, 2022-06-22 13:26:00, 2022-06-22 12:06:00, 2022-06-22 12:22:00, 2022-06-22 12:30:00, 2022-06-22 12:46:00, 2022-06-22 12:54:00, 2022-06-22 13:02:00, 2022-06-29 13:57:00, 2022-06-29 13:25:00, 2022-06-29 13:41:00, 2022-06-29 14:05:00, 2022-06-29 14:21:00, 2022-06-29 14:29:00, 2022-06-29 14:37:00, 2022-06-29 13:09:00, 2022-06-29 13:17:00, 2017-03-22 11:30:00, 2017-04-19 12:30:00, 2017-04-19 11:30:00, 2017-04-19 10:40:00, 2017-08-02 11:15:00, 2017-08-02 15:30:00, 2017-08-02 12:00:00, 2018-03-21 11:45:00, 2018-03-21 14:15:00, 2018-03-21 15:30:00, 2018-09-19 11:45:00, 2019-02-19 14:10:00, 2019-02-19 11:15:00, 2019-02-19 16:15:00, 2019-03-12 11:15:00, 2019-03-12 13:10:00, 2023-04-12 16:05:00, 2023-04-12 16:29:00, 2023-04-12 16:37:00, 2023-04-12 15:09:00, 2023-04-12 15:25:00, 2023-04-12 15:33:00, 2023-04-19 15:48:00, 2023-04-19 16:12:00, 2023-04-19 14:36:00, 2023-05-10 15:19:00, 2023-05-10 15:59:00, 2023-05-10 16:07:00, 2023-05-10 14:07:00, 2023-05-10 14:31:00, 2023-05-10 14:47:00, 2019-03-20 11:36:00, 2019-03-20 11:31:00, 2019-03-20 11:27:00, 2019-03-20 11:22:00, 2019-03-20 14:20:00, 2019-03-20 12:37:00, 2019-03-20 14:02:00, 2019-03-20 12:20:00, 2019-03-20 15:37:00, 2019-03-20 15:08:00, 2019-03-20 15:48:00, 2019-03-20 14:56:00, 2019-03-20 17:58:00, 2019-03-20 17:33:00, 2019-03-20 17:50:00, 2019-03-20 17:26:00, 2019-03-20 16:59:00, 2019-03-20 16:38:00, 2019-03-20 16:53:00, 2019-03-20 16:28:00, 2019-05-23 08:58:00, 2019-05-23 09:01:00, 2019-05-23 08:54:00, 2019-05-23 08:53:00, 2019-05-23 09:34:00, 2019-05-23 09:06:00, 2019-05-23 09:28:00, 2019-05-23 09:20:00, 2019-05-23 10:20:00, 2019-05-23 10:12:00, 2019-05-23 09:58:00, 2019-05-23 10:04:00, 2019-05-23 11:12:00, 2019-05-23 11:33:00, 2019-05-23 11:07:00, 2019-05-23 11:02:00, 2019-05-23 13:03:00, 2019-05-23 12:19:00, 2019-05-23 12:02:00, 2019-05-23 11:58:00, 2020-03-16 09:00:00, 2020-03-16 09:13:00, 2020-03-16 09:10:00, 2020-03-16 09:15:00, 2020-03-16 10:58:00, 2020-03-16 11:52:00, 2020-03-16 13:15:00, 2020-03-16 13:37:00, 2020-03-16 13:45:00, 2020-03-16 13:40:00, 2020-03-16 14:20:00, 2020-03-16 14:04:00, 2020-03-16 09:50:00, 2020-03-16 09:56:00, 2020-03-16 10:13:00, 2020-03-16 10:23:00, 2020-03-16 14:50:00, 2020-03-16 14:55:00, 2020-03-16 15:10:00, 2020-03-16 15:16:00, 2020-05-20 07:29:00, 2020-05-20 07:26:00, 2020-05-20 07:23:00, 2020-05-20 07:20:00, 2020-05-20 09:18:00, 2020-05-20 09:43:00, 2020-05-20 09:27:00, 2020-05-20 09:35:00, 2020-05-20 09:55:00, 2020-05-20 10:12:00, 2020-05-20 10:08:00, 2020-05-20 07:35:00, 2020-05-20 07:40:00, 2020-05-20 07:38:00, 2020-05-20 07:55:00, 2020-05-20 08:16:00, 2020-05-20 08:40:00, 2020-05-20 08:25:00, 2020-05-20 08:30:00, 2019-04-08 16:42:00, 2019-04-08 16:45:00, 2019-04-08 16:36:00, 2019-04-08 16:33:00, 2019-04-08 15:40:00, 2019-04-08 15:47:00, 2019-04-08 15:55:00, 2019-04-08 16:00:00, 2019-04-08 17:19:00, 2019-04-08 17:14:00, 2019-04-08 17:26:00, 2019-04-08 17:30:00, 2019-04-08 10:15:00, 2019-04-08 10:23:00, 2019-04-08 10:35:00, 2019-04-08 10:45:00, 2019-04-08 13:44:00, 2019-04-08 12:14:00, 2019-04-08 12:00:00, 2019-04-08 12:06:00, 2019-04-08 16:39:00, 2019-04-08 16:35:00, 2019-04-08 16:47:00, 2019-04-08 16:48:00, 2019-04-08 17:52:00, 2019-04-08 17:58:00, 2019-04-08 18:06:00, 2019-04-08 18:02:00, 2019-04-08 11:20:00, 2019-04-08 11:15:00, 2019-04-08 11:23:00, 2019-04-08 11:45:00, 2019-04-08 14:18:00, 2019-04-08 14:14:00, 2019-04-08 14:45:00, 2019-04-08 14:20:00, 2019-05-14 11:05:00, 2019-05-14 11:12:00, 2019-05-14 11:07:00, 2019-05-14 11:17:00, 2019-05-14 12:02:00, 2019-05-14 12:12:00, 2019-05-14 12:27:00, 2019-05-14 12:37:00, 2019-05-14 13:18:00, 2019-05-14 13:35:00, 2019-05-14 13:47:00, 2019-05-14 14:00:00, 2019-05-14 16:04:00, 2019-05-14 15:54:00, 2019-05-14 16:22:00, 2019-05-14 16:30:00, 2019-05-14 15:37:00, 2019-05-14 14:53:00, 2019-05-14 15:03:00, 2019-05-14 15:25:00, 2019-05-14 09:34:00, 2019-05-14 09:46:00, 2019-05-14 09:53:00, 2019-05-14 10:01:00, 2019-05-14 10:41:00, 2019-05-14 10:47:00, 2019-05-14 11:04:00, 2019-05-14 11:20:00, 2019-05-14 17:02:00, 2019-05-14 16:48:00, 2019-05-14 17:13:00, 2019-05-14 17:22:00, 2019-05-14 14:12:00, 2019-05-14 14:24:00, 2019-05-14 14:33:00, 2019-05-14 14:46:00, 2020-03-19 09:04:00, 2020-03-19 09:02:00, 2020-03-19 09:14:00, 2020-03-19 08:53:00, 2020-03-19 12:58:00, 2020-03-19 13:06:00, 2020-03-19 13:25:00, 2020-03-19 13:20:00, 2020-03-19 14:09:00, 2020-03-19 14:07:00, 2020-03-19 13:54:00, 2020-03-19 13:58:00, 2020-03-19 10:30:00, 2020-03-19 10:25:00, 2020-03-19 10:40:00, 2020-03-19 10:47:00, 2020-03-19 11:19:00, 2020-03-19 11:09:00, 2020-03-19 10:58:00, 2020-03-19 11:03:00, 2020-03-19 12:25:00, 2020-03-19 12:10:00, 2020-03-19 11:57:00, 2020-03-19 12:00:00, 2020-03-19 14:47:00, 2020-03-19 14:50:00, 2020-03-19 14:36:00, 2020-03-19 14:40:00, 2020-03-19 10:07:00, 2020-03-19 10:18:00, 2020-03-19 09:55:00, 2020-03-19 10:00:00, 2020-03-19 09:17:00, 2020-03-19 09:11:00, 2020-03-19 08:57:00, 2020-04-21 08:51:00, 2020-04-21 08:53:00, 2020-04-21 09:02:00, 2020-04-21 09:08:00, 2020-04-21 14:44:00, 2020-04-21 14:39:00, 2020-04-21 15:07:00, 2020-04-21 15:02:00, 2020-04-21 15:34:00, 2020-04-21 15:40:00, 2020-04-21 16:16:00, 2020-04-21 15:14:00, 2020-04-21 10:55:00, 2020-04-21 10:45:00, 2020-04-21 11:04:00, 2020-04-21 11:09:00, 2020-04-21 11:43:00, 2020-04-21 11:38:00, 2020-04-21 11:24:00, 2020-04-21 11:27:00, 2020-04-21 14:27:00, 2020-04-21 14:30:00, 2020-04-21 14:04:00, 2020-04-21 14:11:00, 2020-04-21 09:40:00, 2020-04-21 09:42:00, 2020-04-21 09:20:00, 2020-04-21 09:28:00, 2020-04-21 10:30:00, 2020-04-21 10:35:00, 2020-04-21 10:18:00, 2020-04-21 10:10:00, 2020-04-21 13:14:00, 2020-04-21 13:18:00, 2020-04-21 12:59:00, 2024-02-19 15:41:00, 2024-02-19 17:09:00, 2024-02-19 17:17:00, 2024-02-19 17:25:00, 2024-02-19 17:33:00, 2024-02-19 17:49:00, 2024-02-19 15:25:00, 2024-02-19 18:05:00, 2024-02-19 15:49:00, 2024-02-19 15:57:00, 2024-02-19 16:05:00, 2024-02-19 16:21:00, 2024-02-19 16:29:00, 2024-02-19 16:37:00, 2024-02-19 17:01:00, 2024-03-06 16:25:00, 2024-03-06 17:53:00, 2024-03-06 18:01:00, 2024-03-06 18:09:00, 2024-03-06 18:17:00, 2024-03-06 18:33:00, 2024-03-06 18:41:00, 2024-03-06 18:49:00, 2024-03-06 16:33:00, 2024-03-06 16:41:00, 2024-03-06 16:49:00, 2024-03-06 17:05:00, 2024-03-06 17:13:00, 2024-03-06 17:21:00, 2024-03-06 17:37:00, 2024-03-06 17:45:00, 2024-03-13 16:51:00, 2024-03-13 18:19:00, 2024-03-13 18:27:00, 2024-03-13 18:35:00, 2024-03-13 18:43:00, 2024-03-13 18:59:00, 2024-03-13 19:07:00, 2024-03-13 19:15:00, 2024-03-13 16:59:00, 2024-03-13 17:07:00, 2024-03-13 17:15:00, 2024-03-13 17:31:00, 2024-03-13 17:39:00, 2024-03-13 17:47:00, 2024-03-13 18:03:00, 2024-03-13 18:11:00, 2024-03-19 14:51:00, 2024-03-19 16:19:00, 2024-03-19 16:27:00, 2024-03-19 16:35:00, 2024-03-19 16:43:00, 2024-03-19 17:07:00, 2024-03-19 17:15:00, 2024-03-19 14:59:00, 2024-03-19 15:15:00, 2024-03-19 15:31:00, 2024-03-19 15:39:00, 2024-03-19 15:47:00, 2024-03-19 16:03:00, 2024-03-19 16:11:00, 2024-04-03 15:51:00, 2024-04-03 17:18:00, 2024-04-03 17:26:00, 2024-04-03 17:34:00, 2024-04-03 17:42:00, 2024-04-03 17:58:00, 2024-04-03 18:06:00, 2024-04-03 15:59:00, 2024-04-03 16:07:00, 2024-04-03 16:15:00, 2024-04-03 16:31:00, 2024-04-03 16:39:00, 2024-04-03 16:47:00, 2024-04-03 17:02:00, 2024-04-03 17:10:00, 2024-04-10 12:31:00, 2024-04-10 13:59:00, 2024-04-10 14:07:00, 2024-04-10 14:15:00, 2024-04-10 14:23:00, 2024-04-10 14:47:00, 2024-04-10 14:55:00, 2024-04-10 12:39:00, 2024-04-10 12:47:00, 2024-04-10 12:55:00, 2024-04-10 13:11:00, 2024-04-10 13:19:00, 2024-04-10 13:27:00, 2024-04-10 13:43:00, 2024-04-10 13:51:00, 2024-04-17 13:29:00, 2024-04-17 14:57:00, 2024-04-17 15:05:00, 2024-04-17 15:13:00, 2024-04-17 15:21:00, 2024-04-17 15:45:00, 2024-04-17 15:53:00, 2024-04-17 13:37:00, 2024-04-17 13:45:00, 2024-04-17 13:53:00, 2024-04-17 14:09:00, 2024-04-17 14:17:00, 2024-04-17 14:25:00, 2024-04-17 14:41:00, 2024-04-17 14:49:00, 2024-04-24 15:30:00, 2024-04-24 16:58:00, 2024-04-24 17:06:00, 2024-04-24 17:14:00, 2024-04-24 17:22:00, 2024-04-24 17:38:00, 2024-04-24 17:46:00, 2024-04-24 17:54:00, 2024-04-24 15:38:00, 2024-04-24 15:46:00, 2024-04-24 15:54:00, 2024-04-24 16:10:00, 2024-04-24 16:18:00, 2024-04-24 16:26:00, 2024-04-24 16:42:00, 2024-04-24 16:50:00, 2024-05-01 16:24:00, 2024-05-01 17:52:00, 2024-05-01 18:00:00, 2024-05-01 18:08:00, 2024-05-01 18:16:00, 2024-05-01 18:32:00, 2024-05-01 18:40:00, 2024-05-01 18:48:00, 2024-05-01 16:32:00, 2024-05-01 16:40:00, 2024-05-01 16:48:00, 2024-05-01 17:04:00, 2024-05-01 17:12:00, 2024-05-01 17:20:00, 2024-05-01 17:36:00, 2024-05-08 15:31:00, 2024-05-08 16:59:00, 2024-05-08 17:07:00, 2024-05-08 17:15:00, 2024-05-08 17:23:00, 2024-05-08 17:39:00, 2024-05-08 17:47:00, 2024-05-08 17:55:00, 2024-05-08 15:39:00, 2024-05-08 15:47:00, 2024-05-08 15:55:00, 2024-05-08 16:11:00, 2024-05-08 16:19:00, 2024-05-08 16:27:00, 2024-05-08 16:43:00, 2024-05-08 16:51:00, 2024-05-15 15:52:00, 2024-05-15 17:20:00, 2024-05-15 17:28:00, 2024-05-15 17:36:00, 2024-05-15 17:44:00, 2024-05-15 18:00:00, 2024-05-15 18:08:00, 2024-05-15 16:00:00, 2024-05-15 16:08:00, 2024-05-15 16:16:00, 2024-05-15 16:32:00, 2024-05-15 16:40:00, 2024-05-15 16:48:00, 2024-05-15 17:04:00, 2024-05-15 17:12:00, 2024-05-23 13:38:00, 2024-05-23 15:06:00, 2024-05-23 15:14:00, 2024-05-23 15:22:00, 2024-05-23 15:30:00, 2024-05-23 15:46:00, 2024-05-23 15:54:00, 2024-05-23 16:02:00, 2024-05-23 13:46:00, 2024-05-23 13:54:00, 2024-05-23 14:02:00, 2024-05-23 14:18:00, 2024-05-23 14:26:00, 2024-05-23 14:34:00, 2024-05-23 14:50:00, 2024-05-23 14:58:00, 2024-06-03 10:50:00, 2024-06-03 12:18:00, 2024-06-03 12:26:00, 2024-06-03 12:34:00, 2024-06-03 12:42:00, 2024-06-03 12:58:00, 2024-06-03 13:06:00, 2024-06-03 13:14:00, 2024-06-03 10:58:00, 2024-06-03 11:06:00, 2024-06-03 11:14:00, 2024-06-03 11:30:00, 2024-06-03 11:38:00, 2024-06-03 11:46:00, 2024-06-03 12:02:00, 2024-06-03 12:10:00, 2024-06-25 13:44:00, 2024-06-25 15:12:00, 2024-06-25 15:20:00, 2024-06-25 15:28:00, 2024-06-25 15:36:00, 2024-06-25 15:52:00, 2024-06-25 16:00:00, 2024-06-25 16:08:00, 2024-06-25 13:52:00, 2024-06-25 14:00:00, 2024-06-25 14:08:00, 2024-06-25 14:24:00, 2024-06-25 14:32:00, 2024-06-25 14:40:00, 2024-06-25 14:56:00, 2024-06-25 15:04:00, 2024-07-01 15:16:00, 2024-07-01 16:44:00, 2024-07-01 16:52:00, 2024-07-01 17:00:00, 2024-07-01 17:08:00, 2024-07-01 17:24:00, 2024-07-01 17:32:00, 2024-07-01 17:40:00, 2024-07-01 15:24:00, 2024-07-01 15:32:00, 2024-07-01 15:40:00, 2024-07-01 15:56:00, 2024-07-01 16:04:00, 2024-07-01 16:12:00, 2024-07-01 16:28:00, 2024-07-01 16:36:00, 2024-09-18 12:39:00, 2024-09-18 13:51:00, 2024-09-18 13:59:00, 2024-09-18 14:07:00, 2024-09-18 14:15:00, 2024-09-18 14:23:00, 2024-09-18 14:31:00, 2024-09-18 14:47:00, 2024-09-18 14:55:00, 2024-09-18 15:03:00, 2024-09-18 12:47:00, 2024-09-18 12:30:00, 2024-09-18 12:55:00, 2024-09-18 13:03:00, 2024-09-18 13:19:00, 2024-09-18 13:27:00, 2024-09-18 13:35:00, 2025-04-02 15:50:49.319, 2025-04-02 15:58:48.088, 2025-04-02 16:06:48.365, 2025-04-02 16:14:47.766, 2025-04-02 16:30:46.869, 2025-04-02 16:46:46.283, 2025-04-02 17:02:46.448, 2025-04-02 14:46:50.338, 2025-04-02 14:54:50.118, 2025-04-02 15:02:50.068, 2025-04-02 15:18:49.959, 2025-04-29 14:58:17.299, 2025-04-29 15:06:17.092, 2025-04-29 15:14:16.894, 2025-04-29 15:22:17.94, 2025-04-29 15:38:15.608, 2025-04-29 15:54:16.016, 2025-04-29 16:10:15.904, 2025-04-29 13:54:19.367, 2025-04-29 14:02:18.992, 2025-04-29 14:10:19.075, 2025-04-29 14:26:17.934, 2022-04-05 14:17:00, 2022-04-05 15:28:00, 2022-04-05 15:44:00, 2022-04-05 14:25:00, 2022-04-05 14:41:00, 2022-04-05 14:49:00, 2022-04-05 15:05:00, 2022-04-05 15:13:00, 2022-04-05 15:20:00, 2022-04-19 15:20:00, 2022-04-19 16:32:00, 2022-04-19 16:48:00, 2022-04-19 15:28:00, 2022-04-19 15:44:00, 2022-04-19 15:52:00, 2022-04-19 16:08:00, 2022-04-19 16:16:00, 2022-04-19 16:24:00, 2022-09-14 14:48:00, 2022-09-14 16:00:00, 2022-09-14 14:56:00, 2022-09-14 15:12:00, 2022-09-14 15:20:00, 2022-09-14 15:28:00, 2022-09-14 15:44:00, 2022-09-14 15:52:00, 2022-04-12 15:08:00, 2022-04-12 16:20:00, 2022-04-12 16:36:00, 2022-04-12 15:16:00, 2022-04-12 15:32:00, 2022-04-12 15:40:00, 2022-04-12 15:56:00, 2022-04-12 16:04:00, 2022-04-12 16:12:00, 2022-04-26 16:05:00, 2022-04-26 17:17:00, 2022-04-26 17:33:00, 2022-04-26 16:13:00, 2022-04-26 16:29:00, 2022-04-26 16:37:00, 2022-04-26 16:53:00, 2022-04-26 17:01:00, 2022-04-26 17:09:00, 2022-10-19 15:38:00, 2022-10-19 15:54:00, 2022-10-19 16:02:00, 2022-10-19 16:10:00, 2022-10-19 16:26:00, 2022-10-19 14:58:00, 2022-10-19 15:06:00, 2022-10-19 15:22:00, 2022-10-19 15:30:00, 2022-09-28 14:43:00, 2022-09-28 15:55:00, 2022-09-28 14:59:00, 2022-09-28 15:23:00, 2022-09-28 15:39:00, 2022-09-28 15:47:00, 2022-09-21 13:39:00, 2022-09-21 14:51:00, 2022-09-21 15:07:00, 2022-09-21 13:47:00, 2022-09-21 14:03:00, 2022-09-21 14:11:00, 2022-09-21 14:19:00, 2022-09-21 14:35:00, 2022-09-21 14:43:00, 2022-10-25 13:23:00, 2022-10-25 13:39:00, 2022-10-25 13:47:00, 2022-10-25 13:55:00, 2022-10-25 14:11:00, 2022-10-25 12:43:00, 2022-10-25 12:51:00, 2022-10-25 13:07:00, 2022-10-25 13:15:00, 2025-05-13 10:52:00, 2025-05-13 12:04:00, 2025-05-13 12:12:00, 2025-05-13 12:20:00, 2025-05-13 12:28:00, 2025-05-13 12:36:00, 2025-05-13 12:44:00, 2025-05-13 13:00:00, 2025-05-13 13:08:00, 2025-05-13 13:16:00, 2025-05-13 11:00:00, 2025-05-13 11:08:00, 2025-05-13 11:16:00, 2025-05-13 11:32:00, 2025-05-13 11:40:00, 2025-05-13 11:48:00, 2025-07-29 11:02:00, 2025-07-29 12:14:00, 2025-07-29 12:22:00, 2025-07-29 12:30:00, 2025-07-29 12:38:00, 2025-07-29 12:54:00, 2025-07-29 13:02:00, 2025-07-29 13:10:00, 2025-07-29 13:18:00, 2025-07-29 13:26:00, 2025-07-29 11:10:00, 2025-07-29 11:18:00, 2025-07-29 11:26:00, 2025-07-29 11:42:00, 2025-07-29 11:50:00, 2025-07-29 11:58:00, 2026-05-19 10:36:00, 2026-05-19 11:39:00, 2026-05-19 11:47:00, 2026-05-19 11:55:00, 2026-05-19 12:03:00, 2026-05-19 12:19:00, 2026-05-19 12:27:00, 2026-05-19 12:35:00, 2026-05-19 12:43:00, 2026-05-19 10:44:00, 2026-05-19 10:52:00, 2026-05-19 11:07:00, 2026-05-19 11:15:00, 2026-05-19 11:22:00, 2026-05-19 13:47:00, 2026-08-11 13:34:00, 2026-08-11 14:44:00, 2026-08-11 14:52:00, 2026-08-11 15:00:00, 2026-08-11 15:08:00, 2026-08-11 15:16:00, 2026-08-11 15:24:00, 2026-08-11 15:40:00, 2026-08-11 15:48:00, 2026-08-11 15:56:00, 2026-08-11 13:42:00, 2026-08-11 13:50:00, 2026-08-11 14:04:00, 2026-08-11 14:12:00, 2026-08-11 13:25:00, 2026-08-11 14:28:00 
## 
##  t.end.p 
## Class: POSIXct 
##  Class: POSIXt 
## Length: 3268 
## Missing values: 656 
## Unique values: 1998-09-11, 1998-10-16, 1999-02-04, 1999-04-04, 1997-08-08, 1997-10-17, 1997-12-12, 1998-03-13, 1997-05-07 13:20:00, 1997-05-07 13:15:00, 1997-05-07 13:10:00, 1997-05-05 12:56:00, 1997-05-05 13:00:00, 1997-05-05 13:09:00, 1997-05-05 13:16:00, 1997-05-05 13:20:00, 1997-05-05 13:31:00, 1994-07-18 16:40:00, 1995-07-14 11:30:00, 1994-05-13 13:50:00, 1995-05-07 11:20:00, 1995-05-07 12:15:00, 1994-03-05 12:00:00, 1994-05-19 15:00:00, 1994-07-04 11:45:00, 1994-11-19 12:15:00, 1995-03-10 12:15:00, 1995-05-30 11:15:00, 1996-05-30 12:00:00, 1996-05-30 11:20:00, 1996-05-30 11:15:00, 1996-05-30 11:42:00, 1996-05-30 11:45:00, 1996-05-30 11:47:00, 1998-07-18 11:30:00, 1998-07-18 10:50:00, 1998-07-18 11:45:00, 1998-07-18 11:56:00, 1998-07-18 12:00:00, 1998-07-18 12:04:00, 1994-08-04 11:20:00, 1994-08-04 12:15:00, 1995-07-22 11:30:00, 1995-09-29 11:30:00, NA, 1995-10-20 11:30:00, 1997-06-18 17:31:00, 1997-06-18 17:32:00, 1997-06-18 17:36:00, 1997-06-18 17:38:00, 1997-06-18 17:39:00, 1997-06-18 17:40:00, 1998-05-23 08:50:00, 1998-05-23 08:55:00, 1998-05-23 09:10:00, 1998-05-23 09:15:00, 1998-09-19 12:40:00, 1999-06-18 16:56:00, 1999-06-18 17:00:00, 1999-06-18 17:08:00, 1998-09-14 12:35:00, 1998-11-02 11:00:00, 1999-03-29 13:00:00, 1999-04-10 09:32:00, 1999-09-18 12:00:00, 1990-07-12 04:00:00, 1991-05-08 04:15:00, 1991-07-10 03:15:00, 1991-09-14 06:00:00, 1991-11-10 06:45:00, 1991-11-22 06:45:00, 1991-12-10 06:30:00, 1996-05-08 08:00:00, 1993-04-26 07:59:00, 1994-05-23 08:32:00, 1994-06-06 09:59:00, 1994-06-06 10:10:00, 1995-05-09 10:41:00, 1995-05-09 09:30:00, 1995-05-22 10:45:00, 1995-05-22 09:00:00, 1995-06-13 09:45:00, 1995-06-13 08:43:00, 1993-04-26 10:15:00, 1993-05-17 08:03:00, 1993-05-17 09:00:00, 1993-06-21 07:54:00, 1993-06-21 07:51:00, 1994-05-09 15:43:00, 1994-05-09 16:10:00, 1994-05-23 09:42:00, 1997-03-26 08:00:00, 1997-04-15 09:00:00, 1997-05-05 08:15:00, 1997-05-05 08:30:00, 1997-05-19 07:40:00, 1997-05-19 07:50:00, 1997-06-16 09:45:00, 1997-06-16 10:05:00, 1997-07-07 09:15:00, 1997-07-07 09:20:00, 1998-08-28 08:59:00, 1999-08-20 10:13:00, 1997-08-02 10:03:00, 1997-10-03 13:15:00, 1997-12-05 14:13:00, 1998-03-14 15:12:00, 1998-08-07 10:07:00, 1998-11-13 11:22:00, 1999-01-22 11:41:00, 1999-05-22 11:12:00, 1997-08-29 08:47:00, 1997-10-31 09:02:00, 1997-10-31 09:16:00, 1998-02-06 09:10:00, 1998-04-09 15:20:00, 1998-08-19 09:28:00, 1998-11-22 10:50:00, 1999-02-03 13:57:00, 1999-03-09 09:08:00, 1998-05-15 13:50:00, 1999-08-27 10:18:00, 1998-06-19 13:40:00, 1999-07-23 11:40:00, 1998-06-05 09:14:00, 1997-09-19 09:26:00, 1998-10-03 14:15:00, 1997-09-26 09:17:00, 1997-09-26 09:13:00, 1998-10-08 14:56:00, 1998-10-08 14:58:00, 1998-10-15 11:24:00, 1998-10-15 11:20:00, 1999-04-12 12:32:00, 1999-04-12 12:28:00, 1999-04-12 12:25:00, 1999-06-14 15:50:00, 1999-06-21 09:05:00, 1999-07-26 09:20:00, 1999-07-26 09:15:00, 1999-07-26 09:08:00, 1999-08-16 11:35:00, 1997-10-03 11:13:00, 1997-10-03 11:15:00, 1997-11-14 11:34:00, 1997-11-14 11:30:00, 1998-02-21 08:51:00, 1998-02-21 08:45:00, 1998-05-08 11:24:00, 1998-05-08 11:23:00, 1998-06-11 09:24:00, 1998-06-11 09:25:00, 1998-06-26 10:21:00, 1998-08-26 11:49:00, 1998-08-26 11:47:00, 1992-03-31 20:18:00, 1992-03-31 19:58:00, 1992-03-31 20:02:00, 1993-08-14 16:51:00, 1993-08-14 16:45:00, 1993-08-14 16:37:00, 1993-08-21 19:24:00, 1993-08-21 19:25:00, 1993-08-21 19:21:00, 1993-10-07 16:55:00, 1993-10-07 16:52:00, 1993-10-07 16:50:00, 1993-11-12 15:32:00, 1993-11-12 15:34:00, 1993-11-12 15:30:00, 1993-11-26 15:55:00, 1993-11-26 15:52:00, 1993-11-26 15:58:00, 1994-02-20 17:14:00, 1994-02-20 17:09:00, 1994-02-20 17:19:00, 1994-03-11 16:22:00, 1994-03-11 16:18:00, 1994-03-11 16:24:00, 1994-05-01 17:01:00, 1994-05-01 16:58:00, 1994-05-01 17:04:00, 1994-06-17 17:13:00, 1994-06-17 17:16:00, 1994-06-17 17:10:00, 1994-07-15 17:59:00, 1994-07-15 18:02:00, 1994-07-15 18:04:00, 1992-08-14 13:00:00, 1992-08-14 13:03:00, 1992-08-14 12:53:00, 1992-10-16 17:03:00, 1992-10-16 17:07:00, 1993-03-21 18:11:00, 1993-03-21 18:16:00, 1993-03-21 18:19:00, 1993-05-13 15:44:00, 1993-05-13 15:46:00, 1993-05-13 15:42:00, 1993-06-10 17:24:00, 1993-06-10 17:26:00, 1993-06-10 17:28:00, 1993-06-28 16:58:00, 1993-06-26 18:42:00, 1993-06-26 18:49:00, 1993-07-09 17:08:00, 1993-07-09 17:05:00, 1993-07-09 17:02:00, 1993-07-30 18:40:00, 1993-07-30 18:42:00, 1993-09-16 16:30:00, 1993-09-16 16:32:00, 1993-09-16 16:33:00, 1993-09-16 16:35:00, 1993-09-16 16:36:00, 1993-09-16 16:37:00, 1993-09-16 16:38:00, 1995-08-18 17:35:00, 1995-08-18 17:36:00, 1995-08-18 17:37:00, 1995-08-18 17:38:00, 1995-08-18 17:39:00, 1995-08-18 17:40:00, 1995-08-18 17:41:00, 1993-10-29 17:03:00, 1993-10-29 17:02:00, 1993-10-29 17:01:00, 1993-10-29 17:00:00, 1993-10-29 16:59:00, 1993-10-29 16:58:00, 1993-11-05 17:05:00, 1993-11-05 17:04:00, 1993-11-05 17:03:00, 1993-11-05 17:02:00, 1993-11-05 17:00:00, 1993-11-05 16:59:00, 1993-11-05 16:57:00, 1994-03-25 16:32:00, 1994-03-25 16:34:00, 1994-03-25 16:36:00, 1994-03-25 16:37:00, 1994-03-25 16:38:00, 1994-03-25 16:40:00, 1994-03-25 16:41:00, 1994-06-03 17:01:00, 1994-06-03 17:02:00, 1994-06-03 17:03:00, 1994-06-03 17:04:00, 1994-06-03 17:05:00, 1994-06-03 17:06:00, 1994-06-10 17:03:00, 1994-06-10 17:04:00, 1994-06-10 17:05:00, 1994-06-10 17:06:00, 1994-06-10 17:07:00, 1994-06-10 17:09:00, 1994-06-10 17:11:00, 1994-06-24 17:06:00, 1994-06-24 17:08:00, 1994-06-24 17:10:00, 1994-06-24 17:12:00, 1994-06-24 17:14:00, 1994-06-24 17:16:00, 1994-07-28 16:44:00, 1994-07-28 16:45:00, 1994-07-28 16:46:00, 1994-07-28 16:47:00, 1994-07-28 16:48:00, 1994-07-28 16:49:00, 1994-10-13 17:15:00, 1994-10-13 17:16:00, 1994-10-13 17:17:00, 1994-10-13 17:18:00, 1994-10-13 17:19:00, 1994-10-13 17:20:00, 1993-05-06 17:00:00, 1993-05-06 22:00:00, 1993-05-06 20:00:00, 1993-05-06 18:00:00, 1993-05-06 16:00:00, 1993-06-18 19:00:00, 1993-06-19 05:00:00, 1993-06-18 18:00:00, 1993-06-18 22:00:00, 1993-06-18 17:00:00, 1993-06-18 15:00:00, 1994-06-22 02:00:00, 1994-06-22 05:00:00, 1994-06-22, 1994-06-22 08:00:00, 1994-06-22 06:00:00, 1994-06-21 18:00:00, 1994-06-21 20:00:00, 1994-06-22 15:00:00, 1994-06-22 01:00:00, 1994-06-21 22:00:00, 1993-04-30 05:00:00, 1993-04-30 02:00:00, 1993-04-30 02:30:00, 1993-04-30 07:00:00, 1993-04-30 04:00:00, 1993-06-13 06:00:00, 1993-06-13 03:00:00, 1993-06-12 18:00:00, 1993-06-12 15:00:00, 1993-06-12 09:00:00, 1993-06-12 14:00:00, 1993-06-12 19:00:00, 1993-06-12 21:00:00, 1994-05-08 05:00:00, 1994-05-07 19:00:00, 1994-05-07 21:00:00, 1994-05-07 20:00:00, 1994-05-07 23:00:00, 1994-05-07 22:00:00, 1994-05-08, 1994-05-08 07:00:00, 1994-05-08 04:00:00, 1994-05-08 01:00:00, 1994-05-08 02:00:00, 1994-06-23 04:00:00, 1994-06-23 09:00:00, 1994-06-22 16:00:00, 1994-05-06 18:00:00, 1994-05-04 09:00:00, 1994-04-23 10:00:00, 1994-04-23, 1994-04-23 02:00:00, 1994-04-22 16:00:00, 1994-04-23 12:00:00, 1994-04-23 06:00:00, 1994-04-23 16:00:00, 1994-04-22 21:00:00, 1994-04-22 20:00:00, 1994-04-23 01:00:00, 1994-04-22 18:00:00, 1994-09-15 15:00:00, 1994-09-16 05:00:00, 1994-09-15 21:00:00, 1994-09-16 07:00:00, 1994-09-16 15:00:00, 1994-09-16 10:00:00, 1994-09-16 14:00:00, 1994-09-16 12:00:00, 2000-07-08 11:02:00, 2001-06-26 06:08:00, 2001-06-29 12:07:00, 2002-07-03 10:20:00, 2002-06-27 06:24:00, 2003-06-27 10:52:00, 2003-07-02 13:38:00, 2001-05-31 11:00:00, 2001-06-01 10:19:00, 2002-05-17 09:15:00, 2002-05-18 06:31:00, 2003-05-25 16:55:00, 2003-05-30 08:29:00, 2004-05-20 07:38:00, 2005-05-20 06:13:00, 2005-09-16 09:13:00, 2009-08-31 10:10:00, 2011-02-14 12:30:00, 2010-08-24 11:35:00, 2010-03-17 14:45:00, 2010-05-11 15:05:00, 2010-09-28 13:48:00, 2011-02-14 12:35:00, 2010-03-17 14:40:00, 2009-08-31 10:05:00, 2010-08-24 11:50:00, 2010-05-11 12:20:00, 2010-03-17 14:50:00, 2010-03-17 14:35:00, 2010-09-28 13:51:00, 2011-02-14 12:37:00, 2010-08-24 11:45:00, 2010-05-11 15:10:00, 2009-08-31 10:00:00, 2010-09-28 13:55:00, 2010-09-28 13:44:00, 2010-05-11 12:35:00, 2010-09-28 14:08:00, 2009-08-31 09:55:00, 2010-08-24 11:59:00, 2010-03-17 14:20:00, 2011-02-14 12:46:00, 2010-08-24 12:03:00, 2010-05-11 15:15:00, 2010-09-28 14:03:00, 2010-08-24 11:40:00, 2009-08-31 10:15:00, 2009-08-31 09:50:00, 2011-02-14 12:43:00, 2010-03-17 14:27:00, 2011-02-14 12:25:00, 2010-05-11 12:00:00, 2011-03-21 16:05:00, 2010-09-13 12:25:00, 2010-04-19 13:55:00, 2011-04-18 12:35:00, 2011-03-21 15:55:00, 2010-04-19 14:00:00, 2011-04-18 12:27:00, 2011-03-21 15:40:00, 2010-09-13 12:30:00, 2010-04-19 13:50:00, 2011-04-18 12:36:00, 2010-09-13 12:15:00, 2010-04-19 13:35:00, 2011-03-21 15:35:00, 2010-07-12 12:20:00, 2011-07-11 11:30:00, 2010-04-19 13:40:00, 2011-03-21 15:50:00, 2010-04-19 13:45:00, 2011-03-21 16:00:00, 2010-09-13 12:20:00, 2010-09-13 12:05:00, 2010-09-13 12:10:00, 2010-07-12 12:00:00, 2011-07-11 11:25:00, 2010-07-12 11:15:00, 2011-07-11 11:15:00, 2010-10-20 09:44:00, 2009-05-13 14:35:00, 2010-06-22 11:25:00, 2011-06-29 11:25:00, 2008-10-07 09:30:00, 2010-10-20 09:27:00, 2009-06-29 11:53:00, 2010-06-23 11:24:00, 2011-06-28 11:16:00, 2009-05-12 14:29:00, 2011-02-09 11:15:00, 2010-06-23 11:21:00, 2011-02-09 11:25:00, 2010-06-23 11:35:00, 2009-05-13 14:22:00, 2010-03-24 09:38:00, 2010-10-19 09:25:00, 2009-05-13 14:28:00, 2010-03-24 09:45:00, 2011-06-29 11:35:00, 2009-05-12 14:21:00, 2011-02-09 11:35:00, 2010-06-22 11:17:00, 2008-10-08 09:32:00, 2011-02-10 11:32:00, 2009-06-30 11:16:00, 2010-06-22 11:35:00, 2008-10-07 09:40:00, 2010-10-19 09:43:00, 2010-03-23 11:35:00, 2009-06-29 11:26:00, 2011-06-28 11:25:00, 2008-10-07 09:35:00, 2010-03-23 11:25:00, 2011-02-10 11:22:00, 2009-06-29 11:39:00, 2008-10-08 09:40:00, 2010-10-20 09:36:00, 2010-03-23 11:40:00, 2009-06-30 11:31:00, 2011-06-28 11:31:00, 2008-10-08 09:37:00, 2010-10-19 09:35:00, 2010-03-24 09:28:00, 2009-06-30 11:25:00, 2011-06-29 11:16:00, 2005-11-03 08:33:00, 2005-11-03 08:37:00, 2005-11-03 08:40:00, 2005-11-03 08:44:00, 2005-11-03 08:48:00, 2005-11-03 08:52:00, 2005-11-03 08:56:00, 2005-11-03 09:00:00, 2005-05-26 09:06:00, 2005-05-26 09:13:00, 2005-05-26 09:31:00, 2005-05-26 09:19:00, 2005-05-26 09:25:00, 2005-08-09 08:46:00, 2005-08-09 08:54:00, 2005-08-09 08:58:00, 2005-08-09 09:03:00, 2005-08-09 09:07:00, 2005-08-09 09:12:00, 2005-08-09 09:16:00, 2005-08-09 09:22:00, 2006-11-07 10:07:00, 2006-11-07 10:12:00, 2006-11-07 10:16:00, 2006-11-07 10:19:00, 2006-11-07 10:13:00, 2006-11-07 10:20:00, 2006-11-07 10:27:00, 2006-06-13 08:46:00, 2006-06-13 08:55:00, 2006-06-13 09:05:00, 2006-06-13 09:15:00, 2006-06-13 09:27:00, 2006-06-13 09:38:00, 2006-06-13 09:48:00, 2006-06-13 09:57:00, 2006-07-25 08:50:00, 2006-07-25 08:55:00, 2006-07-25 08:59:00, 2006-07-25 09:04:00, 2006-07-25 09:09:00, 2006-07-25 09:14:00, 2006-07-25 09:19:00, 2006-07-25 09:25:00, 2001-05-23 10:00:00, 2001-05-23 11:30:00, 2001-05-23 12:00:00, 2001-05-23 09:30:00, 2001-05-23 10:30:00, 2001-05-23 13:30:00, 2000-05-30 12:00:00, 2000-05-30 14:30:00, 2000-05-30 11:30:00, 2000-05-30 14:00:00, 2000-05-30 13:30:00, 2000-08-16 11:30:00, 2000-08-16 12:00:00, 2000-08-16 13:00:00, 2000-08-16 11:00:00, 2000-08-16 14:00:00, 2001-08-23 10:30:00, 2001-08-23 11:30:00, 2001-08-23 14:00:00, 2001-08-23 09:30:00, 2001-08-23 11:00:00, 2001-08-23 13:30:00, 2000-03-03 08:45:00, 2000-02-28 08:36:00, 2000-03-03 08:40:00, 2004-04-27 09:40:00, 2000-06-13 11:20:00, 2000-06-13 11:32:00, 2000-06-13 11:25:00, 2000-06-13 11:30:00, 2000-06-13 11:27:00, 1999-06-07 11:35:00, 1999-06-07 11:20:00, 1999-06-05 17:50:00, 1999-06-07 10:50:00, 1999-06-07 10:30:00, 2001-05-22 17:42:00, 2001-05-22 17:45:00, 2002-05-14 08:31:00, 2002-05-14 08:35:00, 2002-05-14 08:45:00, 1999-11-08 09:33:00, 2007-05-26 08:00:00, 2008-04-20 09:18:00, 2008-04-20 08:12:00, 2008-04-20 07:06:00, 2009-09-14 09:51:00, 2009-09-14 10:12:00, 2009-09-14 09:57:00, 2010-04-28 09:27:00, 2010-04-28 09:35:00, 2010-04-28 09:31:00, 2010-04-28 09:38:00, 2010-05-10 13:26:00, 2010-05-10 13:38:00, 2010-05-10 13:32:00, 2010-05-10 13:45:00, 2010-05-10 13:50:00, 2010-05-25 09:17:00, 2010-05-25 09:23:00, 2010-05-25 09:20:00, 2010-05-25 09:26:00, 2010-06-09 10:27:00, 2010-06-09 10:32:00, 2010-06-09 10:25:00, 2010-06-09 10:34:00, 2010-06-09 10:30:00, 2010-06-21 10:18:00, 2010-06-21 10:15:00, 2010-06-21 10:20:00, 2010-06-21 10:14:00, 2010-06-21 10:17:00, 2011-05-17 08:52:00, 2011-05-10 09:26:00, 2011-05-10 09:29:00, 2011-05-10 09:23:00, 2011-05-10 09:35:00, 2011-05-10 09:32:00, 2013-02-28 14:21:00, 2011-07-15 13:59:00, 2011-07-15 14:07:00, 2011-07-15 14:19:00, 2012-03-13 12:23:00, 2012-03-13 12:34:00, 2012-03-13 12:08:00, 2012-07-05 11:55:00, 2012-07-05 11:59:00, 2012-07-05 12:05:00, 2012-08-16 11:59:00, 2012-08-16 12:12:00, 2012-08-16 12:23:00, 2012-11-16 19:23:00, 2012-11-16 19:29:00, 2012-11-16 19:46:00, 2013-05-08 12:28:00, 2013-05-08 12:33:00, 2013-05-08 12:42:00, 2011-09-22 14:04:00, 2011-09-22 13:52:00, 2011-09-22 14:12:00, 2011-11-10 13:27:00, 2011-11-10 13:07:00, 2012-05-11 14:41:00, 2012-05-11 15:02:00, 2012-05-26 15:33:00, 2012-05-26 15:28:00, 2012-05-26 14:24:00, 2012-11-20 22:18:00, 2012-11-21 11:18:00, 2012-11-21 11:52:00, 2014-03-13 07:22:00, 2014-03-13 07:38:00, 2014-03-13 07:58:00, 2013-06-14 08:46:00, 2013-06-14 09:55:00, 2013-06-14 09:20:00, 2013-07-15 11:02:00, 2013-07-15 10:52:00, 2013-07-15 10:39:00, 2012-08-29 13:32:00, 2012-08-29 12:47:00, 2012-08-29 12:57:00, 2013-07-08 08:32:00, 2013-07-08 02:55:00, 2013-07-08 08:24:00, 2011-04-12 16:00:00, 2011-04-26 16:00:00, 2011-04-11 13:00:00, 2012-03-20 00:30:00, 2009-08-11 14:00:00, 2008-04-18 12:00:00, 1994-03-29 00:15:00, 1994-03-21 09:15:00, 1994-03-31, 1994-03-17 08:30:00, 2009-10-01 07:00:00, 2009-03-31 09:30:00, 2010-03-29 11:00:00, 2011-04-13 09:30:00, 2011-10-17 11:00:00, 1992-05-28 14:49:00, 1992-05-28 14:33:00, 1990-06-16 07:31:00, 1990-06-16 07:17:00, 1990-06-30 08:15:00, 1990-06-30 08:13:00, 1991-07-19 08:12:00, 1991-07-19 07:56:00, 1991-04-26 07:42:00, 1991-04-26 07:56:00, 1991-05-24 07:42:00, 1991-06-21 07:26:00, 1991-06-21 07:42:00, 2014-04-03 13:29:00, 2014-04-03 13:07:00, 2014-04-03 13:09:00, 2014-04-03 13:11:00, 2014-04-03 13:12:00, 2014-04-03 13:20:00, 2014-04-03 13:18:00, 2014-04-03 13:17:00, 2014-04-03 13:15:00, 2014-04-03 13:14:00, 2014-04-03 13:28:00, 2014-04-03 13:31:00, 2014-04-03 08:02:00, 2014-04-03 12:58:00, 2014-04-03 12:45:00, 2014-04-03 13:33:00, 2014-05-01 09:41:00, 2014-05-03 15:13:00, 2014-05-03 15:12:00, 2014-05-03 15:11:00, 2014-05-03 15:06:00, 2014-05-01 11:14:00, 2014-05-03 15:10:00, 2014-05-03 15:07:00, 2014-05-03 15:08:00, 2014-05-03 15:09:00, 2014-05-03 15:14:00, 2014-05-03 11:16:00, 2014-05-03 12:04:00, 2014-04-06 15:38:00, 2014-04-06 15:44:00, 2014-04-06 15:45:00, 2014-04-06 15:46:00, 2014-04-06 15:47:00, 2014-04-06 15:49:00, 2014-04-06 16:02:00, 2014-04-06 16:01:00, 2014-04-06 15:26:00, 2014-04-06 15:59:00, 2014-04-06 16:09:00, 2014-04-06 16:05:00, 2014-04-06 16:06:00, 2014-04-06 16:08:00, 2014-04-06 16:22:00, 2014-04-06 16:20:00, 2014-04-06 16:19:00, 2014-04-06 15:29:00, 2014-04-06 15:30:00, 2014-04-06 15:31:00, 2014-04-06 15:37:00, 2014-04-06 15:36:00, 2014-04-06 15:35:00, 2014-04-06 15:33:00, 2014-04-06 15:32:00, 2014-04-06 15:50:00, 2014-04-06 15:51:00, 2014-04-06 15:52:00, 2014-04-06 15:53:00, 2014-04-06 15:58:00, 2014-04-06 15:57:00, 2014-04-06 15:55:00, 2014-04-06 15:28:00, 2014-04-06 15:54:00, 2014-04-06 16:10:00, 2014-04-06 16:11:00, 2014-04-06 16:12:00, 2014-04-06 16:17:00, 2014-04-06 16:16:00, 2014-04-06 16:15:00, 2014-04-06 16:14:00, 2014-04-06 15:43:00, 2014-04-06 16:13:00, 2014-04-06 15:42:00, 2014-04-06 15:41:00, 2014-04-06 15:39:00, 2014-04-06 16:35:00, 2014-04-06 16:44:00, 2014-04-30 10:48:00, 2014-05-03 14:24:00, 2014-05-03 14:53:00, 2014-05-03 14:54:00, 2014-05-03 14:32:00, 2014-05-03 14:31:00, 2014-05-03 14:30:00, 2014-05-03 14:23:00, 2014-05-03 14:22:00, 2014-05-03 14:37:00, 2014-04-30 12:59:00, 2014-05-03 14:48:00, 2014-05-03 14:47:00, 2014-05-03 14:18:00, 2014-05-03 14:19:00, 2014-05-03 14:27:00, 2014-05-03 14:43:00, 2014-05-03 14:44:00, 2014-05-03 14:45:00, 2014-05-03 14:39:00, 2014-05-03 14:25:00, 2014-05-03 14:26:00, 2014-05-03 14:20:00, 2014-05-03 14:21:00, 2014-05-03 14:51:00, 2014-05-03 14:52:00, 2014-05-03 14:41:00, 2014-05-03 14:40:00, 2014-05-03 14:28:00, 2014-05-03 14:34:00, 2014-05-03 14:35:00, 2014-05-03 14:36:00, 2014-05-03 14:42:00, 2014-05-03 14:46:00, 2014-05-03 14:50:00, 2014-05-03 14:49:00, 2014-05-03 09:08:00, 2014-05-03 09:21:00, 2007-05-01 08:56:00, 2007-05-21 10:59:00, 2007-06-18 09:57:00, 2007-08-06 09:56:00, 2007-05-01 08:58:00, 2007-05-21 11:01:00, 2007-08-06 09:58:00, 2007-05-01 09:03:00, 2007-05-21 11:05:00, 2007-06-18 09:59:00, 2007-08-06 10:03:00, 2007-05-01 09:04:00, 2007-05-21 11:22:00, 2007-06-18 10:09:00, 2007-08-06 10:19:00, 2008-05-02 10:40:00, 2008-05-02 10:43:00, 2008-05-02 10:49:00, 2008-05-02 10:53:00, 2008-06-16 10:53:00, 2008-07-11 10:58:00, 2008-06-16 11:00:00, 2008-07-11 11:04:00, 2008-06-16 11:04:00, 2008-07-11 11:09:00, 2008-06-16 11:03:00, 2008-07-11 11:05:00, 2008-08-06 21:04:00, 2008-08-06 21:00:00, 2008-08-06 21:01:00, 2009-05-01 11:58:00, 2009-07-27 09:59:00, 2009-05-01 13:08:00, 2009-07-27 09:50:00, 2009-05-01 13:11:00, 2009-07-27 10:11:00, 2009-05-01 12:02:00, 2009-07-27 10:05:00, 2009-05-01 11:16:00, 2009-07-27 10:17:00, 2009-05-01 11:15:00, 2009-07-27 10:14:00, 2009-07-27 10:15:00, 2009-05-01 12:11:00, 2009-07-27 10:13:00, 2009-05-01 12:04:00, 2009-07-27 09:58:00, 2008-04-24 10:00:00, 2008-05-14 09:51:00, 2008-05-28 11:01:00, 2008-04-24 10:02:00, 2008-05-14 10:04:00, 2008-05-28 11:14:00, 2008-04-24 10:06:00, 2008-05-14 10:03:00, 2008-05-28 11:13:00, 2008-04-24 10:10:00, 2008-05-14 10:17:00, 2008-05-28 11:24:00, 2008-04-24 10:09:00, 2008-05-14 10:19:00, 2008-05-28 11:25:00, 2008-04-24 10:15:00, 2008-05-28 11:20:00, 1997-05-08 10:06:00, 1996-12-11 16:15:00, 2021-08-19 08:10:00, 2021-08-19 08:18:00, 2021-08-19 08:34:00, 2021-08-19 08:42:00, 2021-08-19 08:50:00, 2021-08-19 09:06:00, 2021-08-19 09:14:00, 2021-08-27 22:46:00, 2021-08-27 22:54:00, 2021-08-27 23:10:00, 2021-08-27 23:18:00, 2021-08-27 23:26:00, 2021-08-27 23:42:00, 2021-08-27 23:50:00, 2022-01-14 07:03:00, 2022-01-14 08:15:00, 2022-01-14 08:31:00, 2022-01-14 07:11:00, 2022-01-14 07:27:00, 2022-01-14 07:35:00, 2022-01-14 07:59:00, 2022-01-14 08:07:00, 2021-11-16 12:36:00, 2021-11-16 12:04:00, 2021-11-16 12:20:00, 2021-11-16 12:44:00, 2021-11-16 13:00:00, 2021-11-16 13:08:00, 2021-11-16 11:32:00, 2021-11-16 11:48:00, 2021-11-16 11:56:00, 2021-08-19 10:00:00, 2021-08-30 09:30:00, 2022-01-14 08:30:00, 2021-08-29 08:15:00, 2021-08-29 08:13:00, 2021-08-29 07:58:00, 2021-08-29 08:03:00, 2021-08-28 13:53:00, 2021-11-12 08:55:00, 2020-11-25 06:12:00, 2020-11-25 07:24:00, 2020-11-25 07:40:00, 2020-11-25 06:20:00, 2020-11-25 06:36:00, 2020-11-25 06:44:00, 2020-11-25 06:52:00, 2020-11-25 07:08:00, 2020-11-25 07:16:00, 2020-12-02 08:45:00, 2020-12-02 08:13:00, 2020-12-02 08:29:00, 2020-12-02 08:53:00, 2020-12-02 09:09:00, 2020-12-02 09:17:00, 2020-12-02 09:25:00, 2020-12-02 09:41:00, 2020-12-02 09:49:00, 2020-12-09 06:37:00, 2020-12-09 07:49:00, 2020-12-09 08:05:00, 2020-12-09 06:45:00, 2020-12-09 07:01:00, 2020-12-09 07:09:00, 2020-12-09 07:17:00, 2020-12-09 07:33:00, 2020-12-09 07:41:00, 2020-12-17 05:41:00, 2020-12-17 06:53:00, 2020-12-17 05:25:00, 2020-12-17 05:49:00, 2020-12-17 06:05:00, 2020-12-17 06:13:00, 2020-12-17 06:21:00, 2020-12-17 06:37:00, 2020-12-17 06:45:00, 2019-05-30 14:38:00, 2019-06-07 14:41:00, 2019-06-20 14:44:00, 2019-06-28 14:39:00, 2018-05-19 04:39:00, 2018-05-19 05:51:00, 2018-05-19 06:07:00, 2018-05-19 04:47:00, 2018-05-19 05:03:00, 2018-05-19 05:11:00, 2018-05-19 05:19:00, 2018-05-19 05:35:00, 2018-05-19 05:43:00, 2018-05-29 05:03:00, 2018-05-29 06:15:00, 2018-05-29 06:31:00, 2018-05-29 05:11:00, 2018-05-29 05:27:00, 2018-05-29 05:35:00, 2018-05-29 05:43:00, 2018-05-29 05:59:00, 2018-05-29 06:07:00, 2018-06-02 22:54:00, 2018-06-03 00:06:00, 2018-06-03 00:22:00, 2018-06-02 23:02:00, 2018-06-02 23:18:00, 2018-06-02 21:41:00, 2018-06-02 23:34:00, 2018-06-02 23:50:00, 2018-06-02 23:58:00, 2018-06-27 07:24:00, 2018-06-27 06:52:00, 2018-06-27 07:08:00, 2018-06-27 07:32:00, 2018-06-27 07:48:00, 2018-06-27 07:56:00, 2018-06-27 08:04:00, 2018-06-27 08:20:00, 2018-06-27 08:28:00, 2018-07-03 08:06:00, 2018-07-03 07:34:00, 2018-07-03 07:50:00, 2018-07-03 08:14:00, 2018-07-03 06:46:00, 2018-07-03 06:54:00, 2018-07-03 07:02:00, 2018-07-03 07:18:00, 2018-07-03 07:26:00, 2018-07-11 06:05:00, 2018-07-11 07:17:00, 2018-07-11 07:33:00, 2018-07-11 06:13:00, 2018-07-11 06:29:00, 2018-07-11 06:37:00, 2018-07-11 06:45:00, 2018-07-11 07:01:00, 2018-07-11 07:09:00, 2018-08-22 04:35:00, 2018-08-22 05:47:00, 2018-08-22 06:03:00, 2018-08-22 04:43:00, 2018-08-22 04:59:00, 2018-08-22 05:07:00, 2018-08-22 05:15:00, 2018-08-22 05:31:00, 2018-08-22 05:39:00, 2018-08-29 05:13:00, 2018-08-29 06:25:00, 2018-08-29 06:41:00, 2018-08-29 05:21:00, 2018-08-29 07:21:00, 2018-08-29 05:45:00, 2018-08-29 05:53:00, 2018-08-29 06:09:00, 2018-08-29 06:17:00, 2018-10-07 08:25:00, 2018-10-07 09:37:00, 2018-10-07 08:09:00, 2018-10-07 08:33:00, 2018-10-07 08:49:00, 2018-10-07 08:57:00, 2018-10-07 09:05:00, 2018-10-07 09:21:00, 2018-10-07 09:29:00, 2018-10-17 04:52:00, 2018-10-17 04:20:00, 2018-10-17 04:36:00, 2018-10-17 05:00:00, 2018-10-17 05:16:00, 2018-10-17 03:40:00, 2018-10-17 03:48:00, 2018-10-17 04:04:00, 2018-10-17 04:12:00, 2018-09-05 06:12:00, 2018-09-05 07:24:00, 2018-09-05 07:40:00, 2018-09-05 06:20:00, 2018-09-05 06:36:00, 2018-09-05 06:44:00, 2018-09-05 06:52:00, 2018-09-05 07:08:00, 2018-09-05 07:16:00, 2018-09-12 06:58:00, 2018-09-12 08:10:00, 2018-09-12 08:26:00, 2018-09-12 07:06:00, 2018-09-12 07:22:00, 2018-09-12 07:30:00, 2018-09-12 07:38:00, 2018-09-12 07:54:00, 2018-09-12 08:02:00, 2018-09-20 07:10:00, 2018-09-20 08:22:00, 2018-09-20 08:38:00, 2018-09-20 07:18:00, 2018-09-20 07:34:00, 2018-09-20 07:42:00, 2018-09-20 07:50:00, 2018-09-20 08:06:00, 2018-09-20 08:14:00, 2019-03-01 20:48:00, 2019-03-01 22:36:00, 2019-03-01 23:00:00, 2019-03-01 21:00:00, 2019-03-01 21:24:00, 2019-03-01 21:36:00, 2019-03-01 21:48:00, 2019-03-01 22:12:00, 2019-03-01 22:24:00, 2019-03-11 06:12:00, 2019-03-11 06:24:00, 2019-03-11 06:48:00, 2019-08-26 06:49:00, 2019-08-26 08:01:00, 2019-08-26 08:17:00, 2019-08-26 06:57:00, 2019-08-26 07:13:00, 2019-08-26 07:21:00, 2019-08-26 07:29:00, 2019-08-26 07:45:00, 2019-08-26 07:53:00, 2019-09-02 10:26:00, 2019-09-02 09:54:00, 2019-09-02 10:10:00, 2019-09-02 10:34:00, 2019-09-02 10:50:00, 2019-09-02 10:58:00, 2019-09-02 11:06:00, 2019-09-02 11:22:00, 2019-09-02 09:46:00, 2020-06-08 05:29:00, 2020-06-08 06:41:00, 2020-06-08 06:57:00, 2020-06-08 05:37:00, 2020-06-08 05:53:00, 2020-06-08 06:01:00, 2020-06-08 06:09:00, 2020-06-08 06:25:00, 2020-06-08 06:33:00, 2020-06-15 04:49:00, 2020-06-15 04:17:00, 2020-06-15 04:33:00, 2020-06-15 04:57:00, 2020-06-15 05:13:00, 2020-06-15 05:21:00, 2020-06-15 05:29:00, 2020-06-15 04:01:00, 2020-06-15 04:09:00, 2021-03-21 20:19:00, 2021-03-21 19:47:00, 2021-03-21 21:47:00, 2021-03-21 20:27:00, 2021-03-21 20:51:00, 2021-03-21 20:59:00, 2021-03-21 21:15:00, 2021-03-21 21:23:00, 2019-08-21 09:30:00, 2019-05-27 12:00:00, 2018-04-26 18:00:00, 2019-04-19 20:00:00, 2020-05-31 20:00:00, 2013-06-24 18:30:00, 2017-07-22 13:35:00, 2016-07-31 12:30:00, 2016-07-31 13:10:00, 2021-11-15 08:47:00, 2022-10-14 03:22:00, 2022-10-14 04:34:00, 2022-10-14 04:50:00, 2022-10-13 21:46:00, 2022-10-13 22:02:00, 2022-10-14 02:58:00, 2022-10-14 03:06:00, 2022-10-14 03:38:00, 2022-10-14 03:54:00, 2022-10-14 04:02:00, 2022-10-14 04:10:00, 2022-10-14 04:26:00, 2022-11-23 07:25:00, 2022-11-23 06:53:00, 2022-11-23 07:09:00, 2022-11-23 09:30:00, 2022-11-23 07:41:00, 2022-11-23 07:49:00, 2022-11-23 07:57:00, 2022-11-23 06:29:00, 2022-11-23 06:37:00, 2022-11-23 06:45:00, 2022-12-02 21:24:00, 2022-12-02 21:15:00, 2022-12-01 10:30:00, 2022-12-02 21:40:00, 2022-12-02 21:48:00, 2022-12-02 21:31:00, 2022-12-02 21:56:00, 2022-12-02 21:39:00, 2022-12-02 22:04:00, 2022-12-02 21:47:00, 2022-12-02 20:52:00, 2022-12-02 21:55:00, 2022-12-02 21:08:00, 2022-12-02 20:51:00, 2023-04-19 06:57:00, 2023-04-19 08:09:00, 2023-04-19 08:25:00, 2023-04-19 08:33:00, 2023-04-19 09:05:00, 2023-04-19 06:41:00, 2023-04-19 07:05:00, 2023-04-19 07:13:00, 2023-04-19 07:53:00, 2023-04-26 18:30:00, 2023-04-26 19:42:00, 2023-04-26 19:50:00, 2023-04-26 20:06:00, 2023-04-26 20:14:00, 2023-04-26 20:38:00, 2023-04-26 20:46:00, 2023-04-26 18:38:00, 2023-04-26 18:54:00, 2023-04-26 19:10:00, 2023-04-26 19:18:00, 2023-04-26 19:26:00, 2023-05-17 05:22:00, 2023-05-17 06:34:00, 2023-05-17 06:42:00, 2023-05-17 06:58:00, 2023-05-17 07:06:00, 2023-05-17 07:14:00, 2023-05-17 05:30:00, 2023-05-17 05:46:00, 2023-05-17 06:10:00, 2023-05-24 06:12:00, 2023-05-24 04:52:00, 2023-05-24 05:00:00, 2023-05-24 05:08:00, 2023-05-24 05:16:00, 2023-05-24 05:24:00, 2023-05-24 05:32:00, 2023-05-24 05:48:00, 2023-05-24 05:56:00, 2023-05-24 06:20:00, 2023-05-24 06:28:00, 2023-05-24 06:36:00, 2023-05-24 06:52:00, 2023-05-24 07:00:00, 2023-05-24 07:08:00, 2023-05-31 02:50:00, 2023-05-31 04:02:00, 2023-05-31 04:10:00, 2023-05-31 04:18:00, 2023-05-31 04:26:00, 2023-05-31 04:34:00, 2023-05-31 04:42:00, 2023-05-31 02:26:00, 2023-05-31 02:34:00, 2023-05-31 02:58:00, 2023-05-31 03:06:00, 2023-05-31 03:14:00, 2023-05-31 03:30:00, 2023-05-31 03:38:00, 2023-05-31 03:46:00, 2019-05-20 07:44:00, 2019-05-20 08:56:00, 2019-05-20 07:28:00, 2019-05-20 07:52:00, 2019-05-20 08:08:00, 2019-05-20 08:16:00, 2019-05-20 08:24:00, 2019-05-20 08:40:00, 2019-05-20 08:48:00, 2020-04-22 09:11:00, 2020-04-22 08:39:00, 2020-04-22 08:55:00, 2020-04-22 09:19:00, 2020-04-22 09:35:00, 2020-04-22 09:43:00, 2020-04-22 09:51:00, 2020-04-22 08:23:00, 2020-04-22 08:31:00, 2020-04-28 08:55:00, 2020-04-28 08:23:00, 2020-04-28 08:39:00, 2020-04-28 09:03:00, 2020-04-28 09:19:00, 2020-04-28 09:27:00, 2020-04-28 09:35:00, 2020-04-28 08:07:00, 2020-04-28 08:15:00, 2022-06-15 06:03:00, 2022-06-15 05:31:00, 2022-06-15 05:47:00, 2022-06-15 06:11:00, 2022-06-15 06:27:00, 2022-06-15 06:35:00, 2022-06-15 06:43:00, 2022-06-15 05:15:00, 2022-06-15 05:23:00, 2022-06-22 06:12:00, 2022-06-22 05:40:00, 2022-06-22 05:56:00, 2022-06-22 06:20:00, 2022-06-22 06:36:00, 2022-06-22 06:44:00, 2022-06-22 07:00:00, 2022-06-22 07:08:00, 2022-06-22 07:16:00, 2022-06-29 08:33:00, 2022-06-29 09:45:00, 2022-06-29 10:01:00, 2022-06-29 08:41:00, 2022-06-29 08:57:00, 2022-06-29 09:05:00, 2022-06-29 09:21:00, 2022-06-29 09:29:00, 2022-06-29 09:37:00, 2022-07-06 05:01:00, 2022-07-06 04:29:00, 2022-07-06 04:45:00, 2022-07-06 05:09:00, 2022-07-06 05:25:00, 2022-07-06 03:49:00, 2022-07-06 03:57:00, 2022-07-06 04:13:00, 2022-07-06 04:21:00, 2017-04-11 09:30:00, 2017-05-02 10:00:00, 2017-08-04 14:00:00, 2018-04-03 11:30:00, 2018-09-22 10:15:00, 2019-02-22 10:30:00, 2019-03-15 10:15:00, 2023-04-19 08:17:00, 2023-04-19 08:41:00, 2023-04-19 08:49:00, 2023-04-19 07:21:00, 2023-04-19 07:37:00, 2023-04-19 07:45:00, 2023-04-26 19:58:00, 2023-04-26 20:22:00, 2023-04-26 18:46:00, 2023-05-17 06:50:00, 2023-05-17 07:30:00, 2023-05-17 07:38:00, 2023-05-17 05:38:00, 2023-05-17 06:02:00, 2023-05-17 06:18:00, 2019-03-26 15:22:00, 2019-03-26 14:49:00, 2019-03-26 15:06:00, 2019-03-26 15:01:00, 2019-03-26 15:14:00, 2019-03-26 14:48:00, 2019-03-26 15:09:00, 2019-03-26 14:55:00, 2019-03-26 15:18:00, 2019-03-26 14:51:00, 2019-03-26 15:05:00, 2019-03-26 15:02:00, 2019-03-26 15:17:00, 2019-03-26 14:52:00, 2019-03-26 15:11:00, 2019-03-26 15:03:00, 2019-03-26 15:15:00, 2019-03-26 14:54:00, 2019-03-26 15:12:00, 2019-03-26 14:57:00, 2019-05-26 13:13:00, 2019-05-26 13:10:00, 2019-05-26 13:01:00, 2019-05-26 13:05:00, 2019-05-26 13:17:00, 2019-05-26 13:11:00, 2019-05-26 13:00:00, 2019-05-26 13:07:00, 2019-05-26 13:15:00, 2019-05-26 13:02:00, 2019-05-26 13:04:00, 2019-05-26 13:16:00, 2019-05-26 13:09:00, 2019-05-26 12:59:00, 2019-05-26 13:03:00, 2019-05-26 13:08:00, 2019-05-26 12:58:00, 2019-05-26 13:06:00, 2020-03-22 11:48:00, 2020-03-22 12:07:00, 2020-03-22 11:54:00, 2020-03-22 12:01:00, 2020-03-22 11:45:00, 2020-03-22 12:02:00, 2020-03-22 11:51:00, 2020-03-22 11:57:00, 2020-03-22 11:46:00, 2020-03-22 12:06:00, 2020-03-22 11:55:00, 2020-03-22 12:00:00, 2020-03-22 11:47:00, 2020-03-22 12:03:00, 2020-03-22 11:50:00, 2020-03-22 11:59:00, 2020-03-22 11:44:00, 2020-03-22 12:04:00, 2020-03-22 11:53:00, 2020-03-22 11:56:00, 2020-05-25 17:31:00, 2020-05-25 17:35:00, 2020-05-25 17:47:00, 2020-05-25 17:41:00, 2020-05-25 17:34:00, 2020-05-25 17:40:00, 2020-05-25 17:50:00, 2020-05-25 17:44:00, 2020-05-25 17:33:00, 2020-05-25 17:36:00, 2020-05-25 17:46:00, 2020-05-25 17:42:00, 2020-05-25 17:32:00, 2020-05-25 17:39:00, 2020-05-25 17:43:00, 2020-05-25 17:38:00, 2020-05-25 17:48:00, 2020-05-25 17:45:00, 2019-04-13 10:15:00, 2019-04-13 10:22:00, 2019-04-13 10:38:00, 2019-04-13 10:55:00, 2019-04-13 10:14:00, 2019-04-13 10:30:00, 2019-04-13 10:43:00, 2019-04-13 10:53:00, 2019-04-13 10:17:00, 2019-04-13 10:28:00, 2019-04-13 10:42:00, 2019-04-13 10:51:00, 2019-04-13 10:16:00, 2019-04-13 10:31:00, 2019-04-13 10:44:00, 2019-04-13 10:49:00, 2019-04-13 10:20:00, 2019-04-13 10:26:00, 2019-04-13 10:47:00, 2019-04-13 10:50:00, 2019-04-13 10:21:00, 2019-04-13 10:27:00, 2019-04-13 10:45:00, 2019-04-13 10:56:00, 2019-04-13 10:12:00, 2019-04-13 10:24:00, 2019-04-13 10:40:00, 2019-04-13 10:52:00, 2019-04-13 10:18:00, 2019-04-13 10:29:00, 2019-04-13 10:46:00, 2019-04-13 10:48:00, 2019-04-13 10:19:00, 2019-04-13 10:25:00, 2019-04-13 10:39:00, 2019-04-13 10:54:00, 2019-05-18 13:41:00, 2019-05-18 13:50:00, 2019-05-18 14:15:00, 2019-05-18 14:36:00, 2019-05-18 13:40:00, 2019-05-18 13:59:00, 2019-05-18 14:19:00, 2019-05-18 14:33:00, 2019-05-18 13:44:00, 2019-05-18 13:57:00, 2019-05-18 14:18:00, 2019-05-18 14:31:00, 2019-05-18 13:42:00, 2019-05-18 14:00:00, 2019-05-18 14:20:00, 2019-05-18 14:29:00, 2019-05-18 13:47:00, 2019-05-18 13:54:00, 2019-05-18 14:27:00, 2019-05-18 14:30:00, 2019-05-18 13:48:00, 2019-05-18 13:56:00, 2019-05-18 14:21:00, 2019-05-18 14:38:00, 2019-05-18 13:38:00, 2019-05-18 13:52:00, 2019-05-18 14:16:00, 2019-05-18 14:32:00, 2019-05-18 13:45:00, 2019-05-18 13:58:00, 2019-05-18 14:26:00, 2019-05-18 14:28:00, 2019-05-18 13:46:00, 2019-05-18 13:53:00, 2019-05-18 14:34:00, 2020-03-24 13:32:00, 2020-03-24 13:44:00, 2020-03-24 13:56:00, 2020-03-24 14:04:00, 2020-03-24 13:37:00, 2020-03-24 13:43:00, 2020-03-24 13:58:00, 2020-03-24 14:06:00, 2020-03-24 13:36:00, 2020-03-24 13:45:00, 2020-03-24 14:12:00, 2020-03-24 13:59:00, 2020-03-24 13:38:00, 2020-03-24 13:41:00, 2020-03-24 13:53:00, 2020-03-24 14:00:00, 2020-03-24 13:34:00, 2020-03-24 13:48:00, 2020-03-24 13:54:00, 2020-03-24 14:07:00, 2020-03-24 13:33:00, 2020-03-24 13:42:00, 2020-03-24 14:10:00, 2020-03-24 14:01:00, 2020-03-24 13:49:00, 2020-03-24 13:39:00, 2020-03-24 13:55:00, 2020-03-24 14:08:00, 2020-03-24 13:30:00, 2020-03-24 13:40:00, 2020-03-24 14:11:00, 2020-03-24 14:05:00, 2020-03-24 13:35:00, 2020-03-24 13:46:00, 2020-03-24 13:57:00, 2020-03-24 14:03:00, 2020-04-28 13:59:00, 2020-04-28 14:11:00, 2020-04-28 14:00:00, 2020-04-28 14:08:00, 2020-04-28 14:04:00, 2020-04-28 14:10:00, 2020-04-28 14:02:00, 2020-04-28 14:03:00, 2020-04-28 14:12:00, 2020-04-28 14:16:00, 2020-04-28 14:05:00, 2020-04-28 13:56:00, 2020-04-28 14:01:00, 2020-04-28 14:15:00, 2020-04-28 13:58:00, 2020-04-28 14:09:00, 2020-04-28 14:14:00, 2020-04-28 14:06:00, 2020-04-28 14:07:00, 2020-04-28 14:13:00, 2024-03-06 08:57:00, 2024-03-06 07:53:00, 2024-03-06 08:01:00, 2024-03-06 08:09:00, 2024-03-06 08:17:00, 2024-03-06 08:33:00, 2024-03-06 08:41:00, 2024-03-06 08:49:00, 2024-03-06 09:05:00, 2024-03-06 09:13:00, 2024-03-06 09:21:00, 2024-03-06 07:05:00, 2024-03-06 07:13:00, 2024-03-06 07:21:00, 2024-03-06 07:45:00, 2024-03-13 05:24:00, 2024-03-13 04:20:00, 2024-03-13 04:28:00, 2024-03-13 04:36:00, 2024-03-13 04:44:00, 2024-03-13 05:00:00, 2024-03-13 05:08:00, 2024-03-13 05:16:00, 2024-03-13 05:32:00, 2024-03-13 05:40:00, 2024-03-13 05:48:00, 2024-03-13 06:04:00, 2024-03-13 06:12:00, 2024-03-13 06:20:00, 2024-03-13 04:04:00, 2024-03-13 04:12:00, 2024-03-19 04:31:00, 2024-03-19 05:59:00, 2024-03-19 06:07:00, 2024-03-19 06:15:00, 2024-03-19 06:23:00, 2024-03-19 04:07:00, 2024-03-19 04:15:00, 2024-03-19 04:23:00, 2024-03-19 04:39:00, 2024-03-19 04:47:00, 2024-03-19 04:55:00, 2024-03-19 05:11:00, 2024-03-19 05:19:00, 2024-03-19 05:27:00, 2024-03-19 05:43:00, 2024-03-19 05:51:00, 2024-03-26 21:33:00, 2024-03-26 20:29:00, 2024-03-26 20:37:00, 2024-03-26 20:45:00, 2024-03-26 20:53:00, 2024-03-26 21:17:00, 2024-03-26 21:25:00, 2024-03-26 21:41:00, 2024-03-26 21:57:00, 2024-03-26 22:13:00, 2024-03-26 22:21:00, 2024-03-26 19:57:00, 2024-03-26 20:13:00, 2024-03-26 20:21:00, 2024-04-10 04:50:00, 2024-04-10 06:18:00, 2024-04-10 06:26:00, 2024-04-10 06:34:00, 2024-04-10 06:42:00, 2024-04-10 06:58:00, 2024-04-10 07:06:00, 2024-04-10 04:58:00, 2024-04-10 05:06:00, 2024-04-10 05:14:00, 2024-04-10 05:30:00, 2024-04-10 05:38:00, 2024-04-10 05:46:00, 2024-04-10 06:02:00, 2024-04-10 06:10:00, 2024-04-17 06:34:00, 2024-04-17 08:02:00, 2024-04-17 05:38:00, 2024-04-17 05:46:00, 2024-04-17 05:54:00, 2024-04-17 06:18:00, 2024-04-17 06:26:00, 2024-04-17 06:42:00, 2024-04-17 06:50:00, 2024-04-17 06:58:00, 2024-04-17 07:14:00, 2024-04-17 07:22:00, 2024-04-17 07:30:00, 2024-04-17 07:46:00, 2024-04-17 07:54:00, 2024-04-24 07:32:00, 2024-04-24 09:00:00, 2024-04-24 09:08:00, 2024-04-24 09:16:00, 2024-04-24 09:24:00, 2024-04-24 09:48:00, 2024-04-24 09:56:00, 2024-04-24 07:40:00, 2024-04-24 07:48:00, 2024-04-24 07:56:00, 2024-04-24 08:12:00, 2024-04-24 08:20:00, 2024-04-24 08:28:00, 2024-04-24 08:44:00, 2024-04-24 08:52:00, 2024-05-01 04:29:00, 2024-05-01 03:25:00, 2024-05-01 03:33:00, 2024-05-01 03:41:00, 2024-05-01 03:49:00, 2024-05-01 04:05:00, 2024-05-01 04:13:00, 2024-05-01 04:21:00, 2024-05-01 04:37:00, 2024-05-01 04:45:00, 2024-05-01 04:53:00, 2024-05-01 05:09:00, 2024-05-01 05:17:00, 2024-05-01 05:25:00, 2024-05-01 03:09:00, 2024-05-01 03:17:00, 2024-05-08 05:23:00, 2024-05-08 04:19:00, 2024-05-08 04:27:00, 2024-05-08 04:35:00, 2024-05-08 04:43:00, 2024-05-08 04:59:00, 2024-05-08 05:07:00, 2024-05-08 05:15:00, 2024-05-08 05:31:00, 2024-05-08 05:39:00, 2024-05-08 05:47:00, 2024-05-08 06:03:00, 2024-05-08 03:39:00, 2024-05-08 03:47:00, 2024-05-08 04:03:00, 2024-05-15 04:30:00, 2024-05-15 03:26:00, 2024-05-15 03:34:00, 2024-05-15 03:42:00, 2024-05-15 03:50:00, 2024-05-15 04:06:00, 2024-05-15 04:14:00, 2024-05-15 04:22:00, 2024-05-15 04:38:00, 2024-05-15 04:46:00, 2024-05-15 04:54:00, 2024-05-15 05:10:00, 2024-05-15 05:18:00, 2024-05-15 05:26:00, 2024-05-15 03:10:00, 2024-05-15 03:18:00, 2024-05-22 04:51:00, 2024-05-22 03:47:00, 2024-05-22 03:55:00, 2024-05-22 04:03:00, 2024-05-22 04:11:00, 2024-05-22 04:27:00, 2024-05-22 04:35:00, 2024-05-22 04:59:00, 2024-05-22 05:07:00, 2024-05-22 05:15:00, 2024-05-22 05:31:00, 2024-05-22 05:39:00, 2024-05-22 05:47:00, 2024-05-22 06:03:00, 2024-05-22 03:39:00, 2024-05-31 03:56:00, 2024-05-31 05:24:00, 2024-05-31 05:32:00, 2024-05-31 05:40:00, 2024-05-31 03:17:00, 2024-05-31 03:32:00, 2024-05-31 03:40:00, 2024-05-31 03:48:00, 2024-05-31 04:04:00, 2024-05-31 04:12:00, 2024-05-31 04:20:00, 2024-05-31 04:36:00, 2024-05-31 04:44:00, 2024-05-31 04:52:00, 2024-05-31 05:08:00, 2024-05-31 05:16:00, 2024-06-10 04:53:00, 2024-06-10 03:49:00, 2024-06-10 03:57:00, 2024-06-10 04:05:00, 2024-06-10 04:13:00, 2024-06-10 04:29:00, 2024-06-10 04:37:00, 2024-06-10 04:45:00, 2024-06-10 05:01:00, 2024-06-10 05:09:00, 2024-06-10 05:17:00, 2024-06-10 03:01:00, 2024-06-10 03:09:00, 2024-06-10 03:17:00, 2024-06-10 03:33:00, 2024-06-10 03:41:00, 2024-07-01 03:56:00, 2024-07-01 02:52:00, 2024-07-01 03:00:00, 2024-07-01 03:08:00, 2024-07-01 03:16:00, 2024-07-01 03:32:00, 2024-07-01 03:40:00, 2024-07-01 03:48:00, 2024-07-01 04:04:00, 2024-07-01 04:12:00, 2024-07-01 04:20:00, 2024-07-01 04:36:00, 2024-07-01 04:44:00, 2024-07-01 04:52:00, 2024-07-01 02:36:00, 2024-07-01 02:44:00, 2024-07-05 05:22:00, 2024-07-05 04:18:00, 2024-07-05 04:26:00, 2024-07-05 04:34:00, 2024-07-05 04:42:00, 2024-07-05 04:58:00, 2024-07-05 05:06:00, 2024-07-05 05:14:00, 2024-07-05 05:30:00, 2024-07-05 05:37:00, 2024-07-05 05:45:00, 2024-07-05 06:01:00, 2024-07-05 06:09:00, 2024-07-05 06:17:00, 2024-07-05 06:33:00, 2024-07-05 06:41:00, 2024-09-24 02:51:00, 2024-09-24 01:31:00, 2024-09-24 01:39:00, 2024-09-24 01:47:00, 2024-09-24 01:55:00, 2024-09-24 02:03:00, 2024-09-24 02:11:00, 2024-09-24 02:27:00, 2024-09-24 02:35:00, 2024-09-24 02:43:00, 2024-09-24 02:59:00, 2024-09-23 12:00:00, 2024-09-24 03:07:00, 2024-09-24 03:15:00, 2024-09-24 00:59:00, 2024-09-24 01:07:00, 2024-09-24 01:15:00, 2025-04-07 04:42:46.933, 2025-04-07 04:50:46.793, 2025-04-07 04:58:45.875, 2025-04-07 02:34:50.986, 2025-04-07 02:50:50.476, 2025-04-07 03:06:50.322, 2025-04-07 03:22:50.223, 2025-04-07 03:38:49.556, 2025-04-07 03:46:48.734, 2025-04-07 03:54:48.484, 2025-04-07 04:10:47.424, 2025-05-05 05:10:15.869, 2025-05-05 05:18:16.539, 2025-05-05 05:26:15.447, 2025-05-05 05:34:15.273, 2025-05-05 05:50:14.101, 2025-05-05 06:06:14.469, 2025-05-05 06:22:14.118, 2025-05-05 06:38:13.003, 2025-05-05 06:46:12.78, 2025-05-05 06:54:13.269, 2025-05-05 07:10:12.789, 2022-04-11 08:28:00, 2022-04-11 09:40:00, 2022-04-11 09:56:00, 2022-04-11 08:36:00, 2022-04-11 08:52:00, 2022-04-11 09:00:00, 2022-04-11 09:16:00, 2022-04-11 09:24:00, 2022-04-11 09:32:00, 2022-04-25 08:12:00, 2022-04-25 09:24:00, 2022-04-25 09:40:00, 2022-04-25 08:20:00, 2022-04-25 08:36:00, 2022-04-25 08:44:00, 2022-04-25 09:00:00, 2022-04-25 09:08:00, 2022-04-25 09:16:00, 2022-09-20 06:52:00, 2022-09-20 07:56:00, 2022-09-20 07:00:00, 2022-09-20 07:08:00, 2022-09-20 07:16:00, 2022-09-20 07:24:00, 2022-09-20 07:40:00, 2022-09-20 07:48:00, 2022-04-18 07:47:00, 2022-04-18 08:59:00, 2022-04-18 09:15:00, 2022-04-18 07:55:00, 2022-04-18 08:11:00, 2022-04-18 08:19:00, 2022-04-18 08:35:00, 2022-04-18 08:43:00, 2022-04-18 08:51:00, 2022-05-02 08:06:00, 2022-05-02 09:18:00, 2022-05-02 09:34:00, 2022-05-02 08:14:00, 2022-05-02 08:30:00, 2022-05-02 08:38:00, 2022-05-02 08:54:00, 2022-05-02 09:02:00, 2022-05-02 09:10:00, 2022-10-25 05:57:00, 2022-10-25 06:13:00, 2022-10-25 06:21:00, 2022-10-25 06:29:00, 2022-10-25 06:45:00, 2022-10-25 05:17:00, 2022-10-25 05:25:00, 2022-10-25 05:41:00, 2022-10-25 05:49:00, 2022-10-04 07:35:00, 2022-10-04 08:47:00, 2022-10-04 07:51:00, 2022-10-04 08:15:00, 2022-10-04 08:31:00, 2022-10-04 08:39:00, 2022-09-27 06:31:00, 2022-09-27 07:43:00, 2022-09-27 07:59:00, 2022-09-27 06:39:00, 2022-09-27 06:55:00, 2022-09-27 07:03:00, 2022-09-27 07:11:00, 2022-09-27 07:27:00, 2022-09-27 07:35:00, 2022-10-31 05:19:00, 2022-10-31 05:35:00, 2022-10-31 05:43:00, 2022-10-31 05:51:00, 2022-10-31 06:07:00, 2022-10-31 04:39:00, 2022-10-31 04:47:00, 2022-10-31 05:03:00, 2022-10-31 05:11:00, 2025-05-21 04:16:00, 2025-05-21 02:56:00, 2025-05-21 03:04:00, 2025-05-21 03:12:00, 2025-05-21 03:20:00, 2025-05-21 03:28:00, 2025-05-21 03:36:00, 2025-05-21 03:52:00, 2025-05-21 04:00:00, 2025-05-21 04:08:00, 2025-05-21 04:24:00, 2025-05-21 04:32:00, 2025-05-21 04:40:00, 2025-05-21 04:56:00, 2025-05-21 05:04:00, 2025-05-21 05:12:00, 2025-08-06 03:52:00, 2025-08-06 05:04:00, 2025-08-06 05:12:00, 2025-08-06 05:20:00, 2025-08-06 05:28:00, 2025-08-06 03:12:00, 2025-08-06 03:20:00, 2025-08-06 03:28:00, 2025-08-06 03:36:00, 2025-08-06 03:44:00, 2025-08-06 04:00:00, 2025-08-06 04:08:00, 2025-08-06 04:16:00, 2025-08-06 04:32:00, 2025-08-06 04:40:00, 2025-08-06 04:48:00, 2026-05-26 03:10:00, 2026-05-26 04:22:00, 2026-05-26 04:30:00, 2026-05-26 04:38:00, 2026-05-26 04:46:00, 2026-05-26 05:02:00, 2026-05-26 05:10:00, 2026-05-26 05:18:00, 2026-05-26 05:26:00, 2026-05-26 03:18:00, 2026-05-26 03:26:00, 2026-05-26 03:34:00, 2026-05-26 03:50:00, 2026-05-26 03:58:00, 2026-05-26 04:06:00, 2026-08-18 20:15:00, 2026-08-18 21:27:00, 2026-08-18 21:35:00, 2026-08-18 21:43:00, 2026-08-18 21:51:00, 2026-08-18 21:59:00, 2026-08-18 22:07:00, 2026-08-18 22:23:00, 2026-08-18 19:59:00, 2026-08-18 20:07:00, 2026-08-18 20:23:00, 2026-08-18 20:31:00, 2026-08-18 20:39:00, 2026-08-18 20:55:00, 2026-08-18 18:31:00, 2026-08-18 21:11:00 
## 
##  dt1 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: -0.26667 
## Maximum: 145 
## Mean: 4.15178012239902 
## Median: 1.8167 
## Quantiles
##        0%       25%       50%       75%      100% 
##  -0.26667   1.00000   1.81670   2.53330 145.00000 
## 
##  dt.min 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: -0.26667 
## Maximum: 145 
## Mean: 4.00388466952264 
## Median: 1.73 
## Quantiles
##        0%       25%       50%       75%      100% 
##  -0.26667   1.00000   1.73000   2.51670 145.00000 
## 
##  dt.max 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 0.25 
## Maximum: 192.5 
## Mean: 25.5771595165239 
## Median: 23.1335 
## Quantiles
##       0%      25%      50%      75%     100% 
##   0.2500   6.0000  23.1335  25.6800 192.5000 
## 
##  ct.min 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 0.15 
## Maximum: 145 
## Mean: 4.15199432068543 
## Median: 1.8167 
## Quantiles
##       0%      25%      50%      75%     100% 
##   0.1500   1.0000   1.8167   2.5333 145.0000 
## 
##  ct.max 
## Class: numeric 
## Length: 3268 
## Missing values: 0 
## Minimum: 1.0167 
## Maximum: 650.5 
## Mean: 131.644667288862 
## Median: 119.52 
## Quantiles
##        0%       25%       50%       75%      100% 
##   1.01670  82.57525 119.52000 163.82500 650.50000 
## 
##  meas.tech 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: wt, micro met, chamber, ihf, zinst, cps, bls, agm, fides, ec, Wind tunnel, bLS, DTM, IHF, AGM, EC, Dynamic chamber, Inversion Dispersion small plots, CPS, Dynamic flux chamber 
## 
##  meas.tech2 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: wt, micro met, chamber, cps 
## 
##  meas.tech.orig 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: Wind tunnel, Micro met, Dynamic chamber, IHF, ZINST, cps, ZINST/bls, open path FTIR, bLS: WindTrax, AGM, FIDES, bLS, Eddy Covariance, DTM, EC, Inversion Dispersion small plots, CPS, Dynamic flux chamber 
## 
##  meas.tech.det 
## Class: character 
## Length: 3268 
## Missing values: 2582 
## Unique values: NA, Alpha samplers, CRDS avg., Acid traps, CRDS_1m, CRDS_2m, MD, ALPHA passive samplers plus Windtrax dispersion model, 150 cm height, 30, 70, 150 cm height, see notes, IHF, transfer coefficient derived from parallel DTM measurements, transfer coefficient derived from parallel DTM measurements in TH:CS treatment 
## 
##  j.NH31 
## Class: numeric 
## Length: 3268 
## Missing values: 3 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## -1.45300  0.36346  1.04530  2.60800 53.32300 
## 
##  j.rel1 
## Class: numeric 
## Length: 3268 
## Missing values: 133 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
## -0.0131690  0.0069200  0.0171130  0.0416565  1.1931000 
## 
##  e.1 
## Class: numeric 
## Length: 3268 
## Missing values: 2449 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
## -1.453000  0.605255  1.610800  4.188100 35.626000 
## 
##  e.4 
## Class: numeric 
## Length: 3268 
## Missing values: 420 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
##  -0.440000   1.674825   4.074600   8.643275 182.990000 
## 
##  e.6 
## Class: numeric 
## Length: 3268 
## Missing values: 269 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  -0.40226   2.23645   5.29550  10.61650 235.14000 
## 
##  e.12 
## Class: numeric 
## Length: 3268 
## Missing values: 241 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  -1.18960   3.19135   7.26070  13.75550 266.77000 
## 
##  e.24 
## Class: numeric 
## Length: 3268 
## Missing values: 215 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  -1.0116   4.4750   9.6400  18.1780 328.3500 
## 
##  e.48 
## Class: numeric 
## Length: 3268 
## Missing values: 404 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
##  -2.710400   6.112075  12.513000  22.791750 556.750000 
## 
##  e.72 
## Class: numeric 
## Length: 3268 
## Missing values: 771 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  -3.5044   7.3178  14.6460  25.5360 651.0000 
## 
##  e.96 
## Class: numeric 
## Length: 3268 
## Missing values: 1456 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
##  -4.572300   7.670375  14.632000  25.690750 231.380000 
## 
##  e.168 
## Class: numeric 
## Length: 3268 
## Missing values: 3080 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## -5.80340 10.68775 17.77350 32.53125 90.64400 
## 
##  e.final 
## Class: numeric 
## Length: 3268 
## Missing values: 129 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
## -12.18000   7.69485  15.48800  27.56300 654.87000 
## 
##  e.cum.1 
## Class: numeric 
## Length: 3268 
## Missing values: 2905 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
## -0.0091828  0.4853400  1.4104000  5.2607000 30.3180000 
## 
##  e.cum.4 
## Class: numeric 
## Length: 3268 
## Missing values: 1670 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
## -0.304790  1.177275  3.171150  6.619750 86.584000 
## 
##  e.cum.6 
## Class: numeric 
## Length: 3268 
## Missing values: 1649 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## -0.45190  1.66155  4.25410  8.83370 99.53700 
## 
##  e.cum.12 
## Class: numeric 
## Length: 3268 
## Missing values: 1651 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  -0.86122   2.58180   6.58270  12.52700 107.41000 
## 
##  e.cum.24 
## Class: numeric 
## Length: 3268 
## Missing values: 1655 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  -1.5056   3.7031   9.1715  17.5840 109.8600 
## 
##  e.cum.48 
## Class: numeric 
## Length: 3268 
## Missing values: 1696 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  -2.7104   5.1267  11.8910  22.4385 116.8500 
## 
##  e.cum.72 
## Class: numeric 
## Length: 3268 
## Missing values: 1762 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  -3.50440   6.16510  13.75100  24.73675 120.89000 
## 
##  e.cum.96 
## Class: numeric 
## Length: 3268 
## Missing values: 2098 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  -4.57230   6.62585  14.18350  25.67800 122.15000 
## 
##  e.cum.168 
## Class: numeric 
## Length: 3268 
## Missing values: 3028 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## -5.80340 11.13700 19.14400 32.83925 90.64400 
## 
##  e.cum.final 
## Class: numeric 
## Length: 3268 
## Missing values: 1635 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  -8.0466   7.4228  16.5040  27.4750 181.7900 
## 
##  e.rel.1 
## Class: numeric 
## Length: 3268 
## Missing values: 2462 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##          0%         25%         50%         75%        100% 
## -0.01316900  0.00990730  0.02182300  0.05579875  0.60820000 
## 
##  e.rel.4 
## Class: numeric 
## Length: 3268 
## Missing values: 441 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
## -0.0059949  0.0277355  0.0660640  0.1366900  3.2046000 
## 
##  e.rel.6 
## Class: numeric 
## Length: 3268 
## Missing values: 306 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##          0%         25%         50%         75%        100% 
## -0.00753170  0.03706675  0.08457650  0.17378500  3.93450000 
## 
##  e.rel.12 
## Class: numeric 
## Length: 3268 
## Missing values: 280 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
## -0.0143540  0.0525175  0.1133200  0.2279050  4.3729000 
## 
##  e.rel.24 
## Class: numeric 
## Length: 3268 
## Missing values: 254 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
## -0.0250930  0.0733595  0.1533550  0.2963725  5.1649000 
## 
##  e.rel.48 
## Class: numeric 
## Length: 3268 
## Missing values: 439 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## -0.06400  0.10352  0.20108  0.36719  5.65640 
## 
##  e.rel.72 
## Class: numeric 
## Length: 3268 
## Missing values: 798 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
## -0.082750  0.119600  0.232700  0.394335  5.861700 
## 
##  e.rel.96 
## Class: numeric 
## Length: 3268 
## Missing values: 1471 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## -0.10796  0.12303  0.23597  0.38792  5.87260 
## 
##  e.rel.168 
## Class: numeric 
## Length: 3268 
## Missing values: 3052 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
## -0.1370300  0.1728675  0.3320950  0.5190300  1.3342000 
## 
##  e.rel.final 
## Class: numeric 
## Length: 3268 
## Missing values: 172 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##         0%        25%        50%        75%       100% 
## -0.1900000  0.1308125  0.2614800  0.4491775  6.8612000 
## 
##  clay 
## Class: numeric 
## Length: 3268 
## Missing values: 828 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  2.4  9.0 12.4 22.7 61.5 
## 
##  silt 
## Class: numeric 
## Length: 3268 
## Missing values: 969 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  1.8 16.0 24.0 40.0 71.3 
## 
##  sand 
## Class: numeric 
## Length: 3268 
## Missing values: 951 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  1.9 27.1 65.0 70.0 92.3 
## 
##  oc 
## Class: numeric 
## Length: 3268 
## Missing values: 1652 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
##  0.90  1.99  2.58  4.20 13.70 
## 
##  soil.type 
## Class: character 
## Length: 3268 
## Missing values: 871 
## Unique values: clay, sand, loam, silty.clay.loam, organic, sandy.clay.loam, clay.loam, sandy.loam, sandy loam, silty clay loam, silt loam, loamy.sand, silt.loam, silty.clay, NA, Loam, Sand, peat, Calcaric Regosol, Haplic Luvisol 
## 
##  soil.type2 
## Class: character 
## Length: 3268 
## Missing values: 1633 
## Unique values: clay, sand, loam, organic, NA 
## 
##  soil.water 
## Class: numeric 
## Length: 3268 
## Missing values: 1604 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
## 0.005 0.170 0.220 0.290 1.000 
## 
##  soil.water.v 
## Class: numeric 
## Length: 3268 
## Missing values: 3042 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##  9.000 20.025 26.000 34.000 67.000 
## 
##  soil.moist 
## Class: character 
## Length: 3268 
## Missing values: 2040 
## Unique values: NA, dry, wet, wet frozen, Dry, Wet 
## 
##  soil.ph 
## Class: numeric 
## Length: 3268 
## Missing values: 832 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
## 4.40 5.60 6.10 6.60 8.21 
## 
##  soil.dens 
## Class: numeric 
## Length: 3268 
## Missing values: 1236 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
## 0.80 1.12 1.24 1.35 1.70 
## 
##  crop.res 
## Class: character 
## Length: 3268 
## Missing values: 1358 
## Unique values: NA, No, Yes, , no 
## 
##  till 
## Class: character 
## Length: 3268 
## Missing values: 393 
## Unique values: No, Yes, no, yes, NA 
## 
##  air.temp.1 
## Class: numeric 
## Length: 3268 
## Missing values: 2910 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
##  2.40 10.51 14.80 18.40 28.66 
## 
##  air.temp.4 
## Class: numeric 
## Length: 3268 
## Missing values: 1693 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  1.0000 10.6000 15.3500 18.7285 32.6200 
## 
##  air.temp.6 
## Class: numeric 
## Length: 3268 
## Missing values: 355 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## -2.9688 10.3500 14.9480 19.2000 35.0000 
## 
##  air.temp.12 
## Class: numeric 
## Length: 3268 
## Missing values: 317 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## -2.8371 10.1300 14.3000 18.8225 35.5050 
## 
##  air.temp.24 
## Class: numeric 
## Length: 3268 
## Missing values: 285 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## -4.1838  8.7259 12.6560 16.3200 29.2000 
## 
##  air.temp.48 
## Class: numeric 
## Length: 3268 
## Missing values: 282 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
## -3.969600  8.846525 12.487000 16.175500 29.125000 
## 
##  air.temp.72 
## Class: numeric 
## Length: 3268 
## Missing values: 237 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## -3.5854  8.8695 12.3920 16.1740 29.7500 
## 
##  air.temp.96 
## Class: numeric 
## Length: 3268 
## Missing values: 1658 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  0.672850  8.218425 12.386500 15.741750 28.158000 
## 
##  air.temp.168 
## Class: numeric 
## Length: 3268 
## Missing values: 1658 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.07560  8.26345 12.76100 15.80075 28.15800 
## 
##  air.temp.mn 
## Class: numeric 
## Length: 3268 
## Missing values: 245 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## -3.5964  8.5795 12.5000 16.1725 49.5560 
## 
##  air.temp.z 
## Class: numeric 
## Length: 3268 
## Missing values: 346 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  1.0  1.5  2.0 10.0 
## 
##  soil.temp.1 
## Class: numeric 
## Length: 3268 
## Missing values: 3227 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##  1.000 10.200 13.800 14.675 17.800 
## 
##  soil.temp.4 
## Class: numeric 
## Length: 3268 
## Missing values: 2539 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  1.0000  8.3962 12.2000 15.8880 25.9900 
## 
##  soil.temp.6 
## Class: numeric 
## Length: 3268 
## Missing values: 1588 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  1.0000  9.1333 12.9410 17.5865 34.9530 
## 
##  soil.temp.12 
## Class: numeric 
## Length: 3268 
## Missing values: 1574 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.00000  9.23540 13.08600 17.42075 30.88400 
## 
##  soil.temp.24 
## Class: numeric 
## Length: 3268 
## Missing values: 1578 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.00000  8.69020 12.43350 16.37225 26.81500 
## 
##  soil.temp.48 
## Class: numeric 
## Length: 3268 
## Missing values: 1586 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.00000  8.69695 12.26100 16.05200 25.89700 
## 
##  soil.temp.72 
## Class: numeric 
## Length: 3268 
## Missing values: 1541 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##  1.000  8.874 12.507 15.984 26.062 
## 
##  soil.temp.96 
## Class: numeric 
## Length: 3268 
## Missing values: 2529 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.00000  8.33785 12.07500 15.27900 19.26100 
## 
##  soil.temp.168 
## Class: numeric 
## Length: 3268 
## Missing values: 2529 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.00000  8.30145 12.30200 15.12650 19.26100 
## 
##  soil.temp.mn 
## Class: numeric 
## Length: 3268 
## Missing values: 1549 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  0.28063  8.77480 12.60300 16.14500 27.40400 
## 
##  soil.temp.surf.1 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##  1.000  2.625 14.900 16.700 19.175 
## 
##  soil.temp.surf.4 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  1.0000  1.7188 14.2620 15.2500 16.6190 
## 
##  soil.temp.surf.6 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  1.0000  1.3667 13.4080 15.4670 16.1750 
## 
##  soil.temp.surf.12 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  1.0000  1.1292 12.8170 14.6420 16.5150 
## 
##  soil.temp.surf.24 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  1.0000  1.3427 12.5230 14.4000 15.2170 
## 
##  soil.temp.surf.48 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## -0.58073  1.00000 11.66000 15.16900 15.30600 
## 
##  soil.temp.surf.72 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
## -0.081597  1.000000 11.714000 15.424000 15.765000 
## 
##  soil.temp.surf.96 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  0.13099  1.00000 11.64600 15.25100 16.14700 
## 
##  soil.temp.surf.168 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  0.45268  0.97619 11.23700 14.91700 15.56700 
## 
##  soil.temp.surf.mn 
## Class: numeric 
## Length: 3268 
## Missing values: 3255 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  0.78869  2.59200 11.23700 14.91700 21.09500 
## 
##  soil.temp.z 
## Class: character 
## Length: 3268 
## Missing values: 1501 
## Unique values: NA, 0.01, 0.05, 0.15, 0.1, 0.03, 0, 0.02, 0.075, 0.025, FALSE 
## 
##  rad.1 
## Class: numeric 
## Length: 3268 
## Missing values: 3021 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##   0.00 169.34 352.78 520.00 867.62 
## 
##  rad.4 
## Class: numeric 
## Length: 3268 
## Missing values: 2922 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##    0.0000  233.0300  484.7250  832.9125 1382.8000 
## 
##  rad.6 
## Class: numeric 
## Length: 3268 
## Missing values: 1886 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##    0.000  178.670  395.420  666.075 1389.700 
## 
##  rad.12 
## Class: numeric 
## Length: 3268 
## Missing values: 1864 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##    0.000  176.880  362.905  568.350 1538.300 
## 
##  rad.24 
## Class: numeric 
## Length: 3268 
## Missing values: 1855 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##    0.00  117.63  206.53  318.60 1502.40 
## 
##  rad.48 
## Class: numeric 
## Length: 3268 
## Missing values: 1855 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##   0.00 107.84 185.99 275.99 990.92 
## 
##  rad.72 
## Class: numeric 
## Length: 3268 
## Missing values: 1855 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##   0.00 117.96 183.61 268.66 971.37 
## 
##  rad.96 
## Class: numeric 
## Length: 3268 
## Missing values: 2899 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##   0.35417 159.90000 348.24000 558.23000 990.52000 
## 
##  rad.168 
## Class: numeric 
## Length: 3268 
## Missing values: 2899 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##   0.33929 159.71000 359.30000 561.78000 990.52000 
## 
##  rad.mn 
## Class: numeric 
## Length: 3268 
## Missing values: 1857 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##   0.000 134.560 193.200 278.395 990.520 
## 
##  wind.1 
## Class: numeric 
## Length: 3268 
## Missing values: 2912 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## 0.06115 2.10000 2.90000 4.18545 8.00000 
## 
##  wind.4 
## Class: numeric 
## Length: 3268 
## Missing values: 2142 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  0.1000  0.3300  1.4853  3.0798 11.1580 
## 
##  wind.6 
## Class: numeric 
## Length: 3268 
## Missing values: 682 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  0.10000  1.03000  2.14085  3.61240 16.02200 
## 
##  wind.12 
## Class: numeric 
## Length: 3268 
## Missing values: 645 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  0.10000  1.04145  2.21000  3.68440 16.02200 
## 
##  wind.24 
## Class: numeric 
## Length: 3268 
## Missing values: 613 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
## 0.10 1.00 1.70 3.24 9.50 
## 
##  wind.48 
## Class: numeric 
## Length: 3268 
## Missing values: 609 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  0.1000  1.0000  1.7200  3.1519 10.9910 
## 
##  wind.72 
## Class: numeric 
## Length: 3268 
## Missing values: 558 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  0.100000  1.028225  1.806100  3.321750 10.991000 
## 
##  wind.96 
## Class: numeric 
## Length: 3268 
## Missing values: 2107 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
## 0.1000 0.4924 1.3308 2.6185 7.5838 
## 
##  wind.168 
## Class: numeric 
## Length: 3268 
## Missing values: 2107 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## 0.10000 0.56123 1.29500 2.66000 7.58380 
## 
##  wind.mn 
## Class: numeric 
## Length: 3268 
## Missing values: 530 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  0.107940  1.087000  1.968500  3.440225 19.939000 
## 
##  wind.z 
## Class: numeric 
## Length: 3268 
## Missing values: 568 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##  0.125  0.250  2.000  2.000 10.000 
## 
##  wind.2m.1 
## Class: numeric 
## Length: 3268 
## Missing values: 2915 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## 0.06497 2.10860 2.90730 4.20000 8.00000 
## 
##  wind.2m.4 
## Class: numeric 
## Length: 3268 
## Missing values: 2516 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  0.100000  1.365075  2.497650  3.715500 11.158000 
## 
##  wind.2m.6 
## Class: numeric 
## Length: 3268 
## Missing values: 1058 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  0.1000  1.8859  2.7000  4.3495 16.3470 
## 
##  wind.2m.12 
## Class: numeric 
## Length: 3268 
## Missing values: 1023 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##  0.1000  1.8663  2.6823  4.3317 16.3470 
## 
##  wind.2m.24 
## Class: numeric 
## Length: 3268 
## Missing values: 993 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
## 0.1000 1.5631 2.2654 4.0935 9.6927 
## 
##  wind.2m.48 
## Class: numeric 
## Length: 3268 
## Missing values: 993 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  0.10000  1.56370  2.27890  3.77155 11.21400 
## 
##  wind.2m.72 
## Class: numeric 
## Length: 3268 
## Missing values: 942 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  0.100000  1.559525  2.323950  3.812500 11.214000 
## 
##  wind.2m.96 
## Class: numeric 
## Length: 3268 
## Missing values: 2486 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## 0.10000 1.29830 2.11845 3.28860 7.58380 
## 
##  wind.2m.168 
## Class: numeric 
## Length: 3268 
## Missing values: 2486 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
## 0.100000 1.286525 2.113200 3.264475 7.583800 
## 
##  wind.2m.mn 
## Class: numeric 
## Length: 3268 
## Missing values: 914 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##  0.107940  1.663600  2.546100  3.836225 20.343000 
## 
##  wind.loc 
## Class: character 
## Length: 3268 
## Missing values: 2054 
## Unique values: NA, Plot, Field, Nearest station, on site, , plot 
## 
##  rain.1 
## Class: numeric 
## Length: 3268 
## Missing values: 2506 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.0  3.5 
## 
##  rain.4 
## Class: numeric 
## Length: 3268 
## Missing values: 1670 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.0  7.8 
## 
##  rain.6 
## Class: numeric 
## Length: 3268 
## Missing values: 597 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    0    0    0    0   15 
## 
##  rain.12 
## Class: numeric 
## Length: 3268 
## Missing values: 569 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    0    0    0    0   15 
## 
##  rain.24 
## Class: numeric 
## Length: 3268 
## Missing values: 555 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.0 36.1 
## 
##  rain.48 
## Class: numeric 
## Length: 3268 
## Missing values: 585 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.0 55.9 
## 
##  rain.72 
## Class: numeric 
## Length: 3268 
## Missing values: 596 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.0 55.9 
## 
##  rain.96 
## Class: numeric 
## Length: 3268 
## Missing values: 2098 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.0 28.6 
## 
##  rain.168 
## Class: numeric 
## Length: 3268 
## Missing values: 3028 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.0 24.6 
## 
##  rain.tot 
## Class: numeric 
## Length: 3268 
## Missing values: 528 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
##   0.0   0.0   0.0   0.0 113.2 
## 
##  rain.rate.1 
## Class: numeric 
## Length: 3268 
## Missing values: 2506 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.0  3.5 
## 
##  rain.rate.4 
## Class: numeric 
## Length: 3268 
## Missing values: 1670 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
## 0.00 0.00 0.00 0.00 1.95 
## 
##  rain.rate.6 
## Class: numeric 
## Length: 3268 
## Missing values: 597 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
## 0.000 0.000 0.000 0.000 2.719 
## 
##  rain.rate.12 
## Class: numeric 
## Length: 3268 
## Missing values: 559 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
## 0.000 0.000 0.000 0.000 2.719 
## 
##  rain.rate.24 
## Class: numeric 
## Length: 3268 
## Missing values: 535 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
## 0.0000 0.0000 0.0000 0.0000 1.7499 
## 
##  rain.rate.48 
## Class: numeric 
## Length: 3268 
## Missing values: 524 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
## 0.000 0.000 0.000 0.000 1.231 
## 
##  rain.rate.72 
## Class: numeric 
## Length: 3268 
## Missing values: 469 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## 0.00000 0.00000 0.00000 0.00000 0.80734 
## 
##  rain.rate.96 
## Class: numeric 
## Length: 3268 
## Missing values: 1635 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## 0.00000 0.00000 0.00000 0.00000 0.33407 
## 
##  rain.rate.168 
## Class: numeric 
## Length: 3268 
## Missing values: 1635 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## 0.00000 0.00000 0.00000 0.00000 0.22679 
## 
##  rain.rate.mn 
## Class: numeric 
## Length: 3268 
## Missing values: 441 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
## 0.00000 0.00000 0.00000 0.00000 0.77801 
## 
##  rh.1 
## Class: numeric 
## Length: 3268 
## Missing values: 3250 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.00000 59.80000 69.45000 79.63125 91.90000 
## 
##  rh.4 
## Class: numeric 
## Length: 3268 
## Missing values: 3167 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##  1.000 55.200 62.850 78.301 92.700 
## 
##  rh.6 
## Class: numeric 
## Length: 3268 
## Missing values: 2434 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##   1.0000  54.0000  64.5855  77.2235 100.5000 
## 
##  rh.12 
## Class: numeric 
## Length: 3268 
## Missing values: 2405 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##      0%     25%     50%     75%    100% 
##   1.000  55.931  65.123  78.886 100.000 
## 
##  rh.24 
## Class: numeric 
## Length: 3268 
## Missing values: 2382 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##   1.0000  64.0290  73.5400  81.7505 100.0000 
## 
##  rh.48 
## Class: numeric 
## Length: 3268 
## Missing values: 2372 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##   1.0000  65.1115  75.4085  82.1580 100.0000 
## 
##  rh.72 
## Class: numeric 
## Length: 3268 
## Missing values: 2372 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##   1.00000  66.01200  75.52350  83.09325 100.00000 
## 
##  rh.96 
## Class: numeric 
## Length: 3268 
## Missing values: 3144 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.00000 68.04700 80.63250 88.49975 97.90400 
## 
##  rh.168 
## Class: numeric 
## Length: 3268 
## Missing values: 3144 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##       0%      25%      50%      75%     100% 
##  1.00000 69.67325 80.68000 86.43875 92.86000 
## 
##  rh.mn 
## Class: numeric 
## Length: 3268 
## Missing values: 2372 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##        0%       25%       50%       75%      100% 
##   1.00300  69.35200  76.63800  81.97025 354.02000 
## 
##  far.loc 
## Class: character 
## Length: 3268 
## Missing values: 2824 
## Unique values: NA, 50, 200, 400, 11000, 500, 300, 150, 250, 800, 10000, 0, Field, 15780, 19000, 5000, 310 
## 
##  man.source 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: pig, cat, poultry, sludge, mix, other, conc, none, mink, urea, digestate 
## 
##  man.source.orig 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: Pig, Cattle, Poultry, Sewage sludge, Mixed, silage maize + cattle slurry, silage maize, pig slurry, cattle slurry, cattle slurry + silage maize, Fattening Pig, Breeding Pig, Concentrate, None, Mixed manure, Mink, Mix, Urea 46%, pig, mineralconcentrate, dairy, Biogas digestate 
## 
##  man.source.det 
## Class: character 
## Length: 3268 
## Missing values: 2745 
## Unique values: NA, Primarily cattle slurry, but also some pig slurry and silage, Dairy, buffalo, mix of slurry co-digested with other agricultural residues, see ""experiments"", Slurry digested with other organic materials, mainly cattle slurry, mainly distillate from ethanol production, mainly slaughterhouse wastes, mainly pig slurry, mixture of manure, deep litter, meadow grass, grass, grass silage, straw, cereal, and corn silage, finisher pigs, piglets or a mixture of the two 
## 
##  man.bed 
## Class: character 
## Length: 3268 
## Missing values: 2110 
## Unique values: None, Sawdust, Straw, NA,  
## 
##  man.con 
## Class: character 
## Length: 3268 
## Missing values: 982 
## Unique values: slurry, solid, liquid, NA 
## 
##  man.trt1 
## Class: character 
## Length: 3268 
## Missing values: 27 
## Unique values: None, Mechanical separation, Anaerobic digestion, none, In-house separation, Gravity separation, Filtration, Floculation, Surface, Barn acidification, Field acidification, , anaerobic digestion, Acidification, Low DM, Low protein diet, Dilution, NA, Diluted, Acidified, Irrigated, Nitrification inhibitor 
## 
##  man.trt2 
## Class: character 
## Length: 3268 
## Missing values: 1263 
## Unique values: none, , Floculation, Mechanical separation, None, Anaerobic digestion, NA, Ammonia stripping, Disruption, Acidification, Plasma, Biochar addition 
## 
##  man.trt3 
## Class: character 
## Length: 3268 
## Missing values: 3140 
## Unique values: NA, None, Acidification, Plasma, Mechanical separation, Biochar addition 
## 
##  man.stor 
## Class: numeric 
## Length: 3268 
## Missing values: 3003 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    0   60   90   90  182 
## 
##  man.dm 
## Class: numeric 
## Length: 3268 
## Missing values: 69 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##   0.55   3.42   5.31   7.30 100.00 
## 
##  man.vs 
## Class: numeric 
## Length: 3268 
## Missing values: 2897 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##  1.100  2.585  4.370 59.810 92.800 
## 
##  man.tkn 
## Class: numeric 
## Length: 3268 
## Missing values: 595 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
##  0.18  2.23  2.94  4.06 31.90 
## 
##  man.tan 
## Class: numeric 
## Length: 3268 
## Missing values: 66 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##   0.07   1.28   1.82   2.60 460.00 
## 
##  man.vfa 
## Class: numeric 
## Length: 3268 
## Missing values: 2978 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
##  0.15  1.51  7.50 12.50 20.37 
## 
##  man.tic 
## Class: numeric 
## Length: 3268 
## Missing values: 3158 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
## 0.31 0.71 1.62 2.35 3.81 
## 
##  man.ua 
## Class: numeric 
## Length: 3268 
## Missing values: 3222 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    0    0    0    0    0 
## 
##  man.ph 
## Class: numeric 
## Length: 3268 
## Missing values: 344 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
## 3.29 7.07 7.49 7.86 9.96 
## 
##  acid 
## Class: logical 
## Length: 3268 
## Missing values: 0 
## Unique values: FALSE, TRUE 
## 
##  date.start 
## Class: Date 
## Length: 3268 
## Missing values: 656 
## Unique values: 1998-09-07, 1998-10-12, 1999-02-01, 1999-03-31, 1997-08-04, 1997-10-13, 1997-12-08, 1998-03-09, 1997-04-30, 1997-04-28, 1994-07-15, 1995-07-11, 1994-05-10, 1995-05-04, 1994-03-02, 1994-05-16, 1994-07-01, 1994-11-16, 1995-03-07, 1995-05-29, 1996-05-27, 1998-07-15, 1994-08-01, 1995-07-19, 1995-09-26, NA, 1995-10-17, 1997-06-17, 1998-05-20, 1998-09-16, 1999-06-17, 1998-09-10, 1998-10-30, 1999-03-25, 1999-04-07, 1999-09-14, 1990-07-05, 1991-05-01, 1991-07-03, 1991-09-07, 1991-11-03, 1991-11-15, 1991-12-03, 1996-05-01, 1993-04-19, 1994-05-30, 1995-05-02, 1995-05-15, 1995-06-06, 1993-05-10, 1993-06-14, 1994-05-02, 1997-03-17, 1997-04-08, 1997-05-12, 1997-06-09, 1997-06-30, 1998-08-24, 1999-08-16, 1997-07-29, 1997-09-29, 1997-12-01, 1998-03-10, 1998-08-03, 1998-11-09, 1999-01-18, 1999-05-18, 1997-08-18, 1997-10-21, 1998-01-27, 1998-03-31, 1998-08-10, 1998-11-16, 1999-03-01, 1998-05-11, 1999-08-23, 1998-06-15, 1999-07-19, 1998-05-26, 1997-09-15, 1998-09-29, 1997-09-22, 1998-10-06, 1998-10-13, 1999-04-06, 1999-06-09, 1999-06-16, 1999-07-21, 1999-08-10, 1997-09-30, 1997-11-10, 1998-02-18, 1998-05-06, 1998-06-09, 1998-06-23, 1998-08-25, 1992-03-30, 1993-08-11, 1993-08-19, 1993-10-05, 1993-11-09, 1993-11-23, 1994-02-17, 1994-03-09, 1994-04-28, 1994-06-15, 1994-07-13, 1992-08-12, 1992-10-13, 1993-03-18, 1993-05-11, 1993-06-08, 1993-06-24, 1993-07-07, 1993-07-29, 1993-09-15, 1995-08-15, 1993-10-28, 1993-11-04, 1994-03-23, 1994-06-01, 1994-06-08, 1994-06-22, 1994-07-26, 1994-10-11, 1993-05-04, 1993-06-15, 1994-06-16, 1993-04-27, 1993-06-10, 1994-05-05, 1994-06-20, 1994-05-03, 1994-04-19, 1994-09-13, 2000-06-19, 2001-06-19, 2001-06-18, 2002-06-25, 2002-06-19, 2003-06-17, 2003-06-23, 2001-05-23, 2001-05-22, 2002-05-08, 2002-05-13, 2003-05-15, 2003-05-20, 2004-05-11, 2005-05-09, 2005-09-06, 2009-08-25, 2011-02-08, 2010-08-18, 2010-03-11, 2010-05-05, 2010-09-22, 2011-03-15, 2010-09-07, 2010-04-13, 2011-04-12, 2010-07-06, 2011-07-05, 2010-10-13, 2009-05-06, 2010-06-15, 2011-06-22, 2008-09-30, 2009-06-22, 2010-06-16, 2011-06-21, 2009-05-05, 2011-02-02, 2010-03-17, 2010-10-12, 2008-10-01, 2011-02-03, 2009-06-23, 2010-03-16, 2005-10-20, 2005-05-12, 2005-07-26, 2006-10-24, 2006-05-30, 2006-07-11, 2001-05-09, 2000-05-16, 2000-08-02, 2001-08-09, 2000-02-22, 2004-04-22, 2000-05-30, 1999-06-01, 2001-05-15, 2002-05-07, 1999-11-02, 2007-05-22, 2008-04-15, 2009-09-08, 2010-04-22, 2010-05-04, 2010-05-18, 2010-06-02, 2011-05-11, 2011-05-04, 2013-02-22, 2011-07-14, 2012-03-12, 2012-07-04, 2012-08-14, 2012-11-14, 2013-05-06, 2011-09-20, 2011-11-08, 2012-05-10, 2012-05-24, 2012-11-19, 2014-03-11, 2013-06-12, 2013-07-10, 2012-08-28, 2012-08-27, 2013-07-05, 2013-07-04, 2011-03-23, 2011-04-05, 2011-03-28, 2012-03-13, 2009-08-05, 2008-04-16, 1994-03-21, 1994-03-17, 1994-03-16, 2009-09-23, 2009-03-26, 2010-03-14, 2011-04-06, 2011-10-09, 1992-05-19, 1990-06-12, 1990-06-26, 1991-07-09, 1991-04-16, 1991-05-14, 1991-06-11, 2014-04-01, 2014-05-01, 2014-04-03, 2014-04-30, 2007-04-24, 2007-05-14, 2007-06-11, 2007-07-30, 2008-04-25, 2008-06-09, 2008-07-04, 2008-08-05, 2009-04-24, 2009-07-20, 2008-04-17, 2008-05-07, 2008-05-21, 1996-12-05, 2021-08-11, 2021-08-20, 2022-01-05, 2021-11-09, 2021-08-09, 2021-11-08, 2022-01-04, 2020-11-18, 2020-11-25, 2020-12-02, 2020-12-09, 2019-05-27, 2019-06-04, 2019-06-17, 2019-06-26, 2018-05-15, 2018-05-22, 2018-05-29, 2018-06-22, 2018-06-29, 2018-07-05, 2018-08-15, 2018-08-22, 2018-10-03, 2018-10-10, 2018-08-29, 2018-09-05, 2018-09-12, 2019-02-25, 2019-03-07, 2019-08-22, 2019-08-29, 2020-06-03, 2020-06-09, 2021-03-16, 2019-08-14, 2019-05-21, 2018-04-23, 2019-04-16, 2020-05-28, 2013-06-18, 2017-07-18, 2016-07-28, 2022-10-11, 2022-11-16, 2022-11-24, 2023-04-12, 2023-04-19, 2023-05-10, 2023-05-17, 2023-05-24, 2019-05-15, 2020-04-17, 2020-04-23, 2022-06-08, 2022-06-15, 2022-06-22, 2022-06-29, 2017-03-22, 2017-04-19, 2017-08-02, 2018-03-21, 2018-09-19, 2019-02-19, 2019-03-12, 2019-03-20, 2019-05-23, 2020-03-16, 2020-05-20, 2019-04-08, 2019-05-14, 2020-03-19, 2020-04-21, 2024-02-19, 2024-03-06, 2024-03-13, 2024-03-19, 2024-04-03, 2024-04-10, 2024-04-17, 2024-04-24, 2024-05-01, 2024-05-08, 2024-05-15, 2024-05-23, 2024-06-03, 2024-06-25, 2024-07-01, 2024-09-18, 2025-04-02, 2025-04-29, 2022-04-05, 2022-04-19, 2022-09-14, 2022-04-12, 2022-04-26, 2022-10-19, 2022-09-28, 2022-09-21, 2022-10-25, 2025-05-13, 2025-07-29, 2026-05-19, 2026-08-11 
## 
##  app.start 
## Class: POSIXct 
##  Class: POSIXt 
## Length: 3268 
## Missing values: 1227 
## Unique values: NA, 2000-06-19 09:00:00, 2001-06-19 11:48:00, 2001-06-18 09:32:00, 2002-06-25 08:57:00, 2002-06-19 09:33:00, 2003-06-17 09:16:00, 2003-06-23 09:22:00, 2001-05-23 09:34:00, 2001-05-22 10:37:00, 2002-05-08 09:01:00, 2002-05-13 09:07:00, 2003-05-15 08:45:00, 2003-05-20 08:47:00, 2004-05-11 10:30:00, 2005-05-09 10:00:00, 2005-09-06 11:00:00, 2009-08-25 14:30:00, 2011-02-08 12:10:00, 2010-08-18 12:10:00, 2010-03-11 12:10:00, 2010-05-05 13:40:00, 2010-09-22 11:10:00, 2011-02-08 12:20:00, 2010-03-11 14:05:00, 2009-08-25 14:20:00, 2010-08-18 12:20:00, 2010-05-05 12:35:00, 2010-03-11 11:55:00, 2010-09-22 11:20:00, 2011-02-08 13:45:00, 2010-05-05 13:15:00, 2009-08-25 12:00:00, 2010-09-22 13:05:00, 2010-09-22 12:55:00, 2010-05-05 12:45:00, 2010-09-22 11:25:00, 2009-08-25 14:05:00, 2010-08-18 12:35:00, 2010-03-11 12:40:00, 2011-02-08 13:55:00, 2010-05-05 13:20:00, 2010-09-22 13:15:00, 2009-08-25 12:12:00, 2009-08-25 11:55:00, 2011-02-08 12:30:00, 2010-03-11 14:40:00, 2011-02-08 13:40:00, 2010-05-05 12:20:00, 2011-03-15 12:45:00, 2010-09-07 11:15:00, 2010-04-13 12:40:00, 2011-04-12 11:05:00, 2011-03-15 11:20:00, 2010-04-13 11:55:00, 2011-04-12 10:30:00, 2011-03-15 12:00:00, 2010-09-07 11:50:00, 2010-04-13 13:00:00, 2011-04-12 11:10:00, 2010-09-07 10:50:00, 2010-04-13 11:05:00, 2011-03-15 12:10:00, 2010-07-06 13:00:00, 2011-07-05 11:15:00, 2011-03-15 11:25:00, 2010-04-13 11:15:00, 2011-03-15 12:35:00, 2010-09-07 11:45:00, 2010-09-07 11:20:00, 2010-07-06 12:25:00, 2011-07-05 10:49:00, 2010-07-06 11:15:00, 2011-07-05 10:35:00, 2010-10-13 12:00:00, 2009-05-06 11:33:00, 2010-06-15 12:38:00, 2011-06-22 09:45:00, 2008-09-30 10:35:00, 2010-10-13 09:10:00, 2009-06-22 15:41:00, 2010-06-16 12:16:00, 2011-06-21 09:34:00, 2009-05-05 09:54:00, 2011-02-02 09:42:00, 2010-06-16 11:34:00, 2011-02-02 11:30:00, 2010-06-16 09:20:00, 2009-05-06 16:10:00, 2010-03-17 12:30:00, 2010-10-12 10:07:00, 2009-05-06 14:14:00, 2010-03-17 15:00:00, 2011-06-22 11:10:00, 2009-05-05 12:31:00, 2011-02-02 12:50:00, 2010-06-15 15:19:00, 2008-10-01 10:35:00, 2011-02-03 09:42:00, 2009-06-23 15:01:00, 2010-06-15 09:50:00, 2008-09-30 16:10:00, 2010-10-12 14:20:00, 2010-03-16 14:32:00, 2009-06-22 12:25:00, 2011-06-21 10:16:00, 2008-09-30 13:30:00, 2010-03-16 10:45:00, 2011-02-03 12:15:00, 2009-06-22 10:20:00, 2008-10-01 15:55:00, 2010-10-13 09:49:00, 2010-03-16 16:55:00, 2009-06-23 11:13:00, 2011-06-21 11:53:00, 2008-10-01 12:41:00, 2010-10-12 12:12:00, 2010-03-17 10:25:00, 2009-06-23 12:36:00, 2011-06-22 09:25:00, 2005-10-20 11:26:00, 2005-10-20 11:35:00, 2005-10-20 11:42:00, 2005-10-20 11:51:00, 2005-10-20 12:20:00, 2005-10-20 12:27:00, 2005-10-20 12:34:00, 2005-10-20 12:45:00, 2005-10-20 14:18:00, 2005-10-20 14:24:00, 2005-10-20 14:30:00, 2005-10-20 14:38:00, 2005-10-20 15:06:00, 2005-10-20 15:13:00, 2005-10-20 15:20:00, 2005-10-20 15:27:00, 2005-05-12 11:22:00, 2005-05-12 11:34:00, 2005-05-12 11:43:00, 2005-05-12 11:51:00, 2005-05-12 15:27:00, 2005-05-12 13:32:00, 2005-05-12 13:40:00, 2005-05-12 13:49:00, 2005-05-12 13:56:00, 2005-05-12 15:32:00, 2005-05-12 15:40:00, 2005-05-12 14:40:00, 2005-05-12 14:46:00, 2005-05-12 14:52:00, 2005-05-12 14:59:00, 2005-05-12 15:38:00, 2005-07-26 10:38:00, 2005-07-26 10:50:00, 2005-07-26 11:02:00, 2005-07-26 11:09:00, 2005-07-26 11:39:00, 2005-07-26 11:46:00, 2005-07-26 11:54:00, 2005-07-26 12:02:00, 2005-07-26 13:22:00, 2005-07-26 13:28:00, 2005-07-26 13:39:00, 2005-07-26 13:48:00, 2005-07-26 14:07:00, 2005-07-26 14:13:00, 2005-07-26 14:21:00, 2005-07-26 14:30:00, 2006-10-24 10:22:00, 2006-10-24 10:28:00, 2006-10-24 10:36:00, 2006-10-24 10:40:00, 2006-10-24 10:44:00, 2006-10-24 10:47:00, 2006-10-24 10:53:00, 2006-10-24 11:00:00, 2006-10-24 11:55:00, 2006-10-24 12:00:00, 2006-10-24 12:04:00, 2006-10-24 12:07:00, 2006-10-24 12:10:00, 2006-10-24 12:14:00, 2006-10-24 12:20:00, 2006-10-24 12:23:00, 2006-05-30 14:31:00, 2006-05-30 14:41:00, 2006-05-30 14:50:00, 2006-05-30 15:02:00, 2006-05-30 15:13:00, 2006-05-30 15:22:00, 2006-05-30 15:31:00, 2006-05-30 15:41:00, 2006-05-30 16:44:00, 2006-05-30 16:51:00, 2006-05-30 16:58:00, 2006-05-30 17:07:00, 2006-05-30 17:15:00, 2006-05-30 17:24:00, 2006-05-30 17:30:00, 2006-05-30 17:36:00, 2006-07-11 10:40:00, 2006-07-11 10:46:00, 2006-07-11 10:53:00, 2006-07-11 10:59:00, 2006-07-11 11:04:00, 2006-07-11 11:09:00, 2006-07-11 11:14:00, 2006-07-11 11:20:00, 2006-07-11 14:05:00, 2006-07-11 14:11:00, 2006-07-11 14:16:00, 2006-07-11 14:22:00, 2006-07-11 14:27:00, 2006-07-11 14:32:00, 2006-07-11 14:37:00, 2006-07-11 14:42:00, 2001-05-09 10:30:00, 2001-05-09 11:00:00, 2001-05-09 09:30:00, 2001-05-09 13:30:00, 2000-05-16 10:00:00, 2000-05-16 15:00:00, 2000-05-16 11:30:00, 2000-05-16 10:30:00, 2000-05-16 14:30:00, 2000-05-16 12:00:00, 2000-08-02 10:00:00, 2000-08-02 11:30:00, 2000-08-02 14:00:00, 2000-08-02 09:30:00, 2000-08-02 11:00:00, 2000-08-02 13:30:00, 2001-08-09 10:00:00, 2001-08-09 12:30:00, 2001-08-09 14:30:00, 2001-08-09 12:00:00, 2001-08-09 15:00:00, 2000-02-22 10:20:00, 2000-02-22 09:10:00, 2004-04-22 08:09:00, 2004-04-22 08:41:00, 2004-04-22 09:15:00, 2004-04-22 09:44:00, 2000-05-30 09:10:00, 2000-05-30 10:33:00, 2000-05-30 09:11:00, 2000-05-30 09:12:00, 2000-05-30 09:36:00, 1999-06-01 10:00:00, 1999-06-01 09:20:00, 1999-06-01 08:55:00, 1999-06-01 08:40:00, 2001-05-15 09:26:00, 2001-05-15 09:57:00, 2001-05-15 10:49:00, 2001-05-15 11:24:00, 2001-05-15 12:27:00, 2002-05-07 09:01:00, 2002-05-07 09:49:00, 2002-05-07 10:29:00, 1999-11-02 10:32:00, 2007-05-22 10:00:00, 2008-04-15 11:00:00, 2009-09-08 12:34:00, 2009-09-08 13:21:00, 2009-09-08 15:27:00, 2010-04-22 12:02:00, 2010-04-22 12:35:00, 2010-04-22 10:29:00, 2010-04-22 10:53:00, 2010-05-04 13:13:00, 2010-05-04 12:50:00, 2010-05-04 10:39:00, 2010-05-04 11:06:00, 2010-05-04 11:53:00, 2010-05-18 10:45:00, 2010-05-18 12:44:00, 2010-05-18 11:33:00, 2010-05-18 12:25:00, 2010-06-02 11:17:00, 2010-06-02 10:45:00, 2010-06-02 12:40:00, 2010-06-02 13:35:00, 2010-06-02 11:32:00, 2010-06-15 12:06:00, 2010-06-15 10:55:00, 2010-06-15 13:16:00, 2010-06-15 11:17:00, 2010-06-15 16:14:00, 2011-05-11 11:37:00, 2011-05-11 10:39:00, 2011-05-11 13:31:00, 2011-05-11 14:30:00, 2011-05-11 12:45:00, 2011-05-04 11:20:00, 2011-05-04 12:53:00, 2011-05-04 13:51:00, 2011-05-04 15:06:00, 2011-05-04 16:07:00, 2007-03-18 13:00:00, 2007-03-18 13:10:00, 2007-03-18 13:20:00, 2007-03-18 17:00:00, 2007-03-18 17:20:00, 2007-03-18 17:30:00, 2008-03-17 13:49:00, 2008-03-19 09:30:00, 2008-03-19 09:40:00, 2008-03-19 10:10:00, 2008-03-19 10:30:00, 2008-03-19 15:40:00, 2008-03-19 15:50:00, 2008-03-19 13:00:00, 2008-03-19 13:10:00, 2008-03-19 13:20:00, 2008-04-08 15:35:00, 2008-04-10 14:30:00, 2008-04-10 15:10:00, 2008-04-10 11:10:00, 2008-04-10 11:30:00, 2008-04-10 11:20:00, 2008-04-10 11:40:00, 2008-04-10 14:00:00, 2008-04-10 15:00:00, 2008-04-10 14:20:00, 2008-04-10 15:40:00, 2008-04-10 15:50:00, 2008-04-10 15:30:00, 2008-05-21 09:10:00, 2008-05-21 09:30:00, 2008-05-21 10:40:00, 2008-05-21 10:50:00, 2008-05-21 12:40:00, 2008-05-21 12:50:00, 2008-05-21 13:00:00, 2008-05-21 13:10:00, 2008-05-21 14:00:00, 2008-05-21 14:10:00, 2008-05-30 08:30:00, 2008-05-30 08:40:00, 2008-05-30 09:00:00, 2008-05-30 09:20:00, 2008-05-30 13:00:00, 2008-05-30 13:10:00, 2008-05-30 13:20:00, 2008-05-30 10:50:00, 2008-05-30 11:30:00, 2008-05-30 12:00:00, 2008-05-30 09:50:00, 2008-05-30 14:00:00, 2008-05-30 14:10:00, 2008-05-30 14:20:00, 2008-05-30 14:30:00, 2008-06-06 08:30:00, 2008-06-06 08:50:00, 2008-06-06 09:10:00, 2008-06-06 09:20:00, 2008-06-06 11:30:00, 2008-06-06 11:50:00, 2008-06-06 09:30:00, 2008-06-06 12:20:00, 2008-06-06 08:00:00, 2008-06-06 08:20:00, 2008-06-06 10:40:00, 2008-06-06 10:30:00, 2008-06-06 10:20:00, 2008-07-03 14:30:00, 2008-07-05 09:40:00, 2008-07-05 09:50:00, 2008-07-05 10:00:00, 2008-07-05 11:00:00, 2008-07-05 10:40:00, 2008-07-05 10:50:00, 2008-07-05 11:10:00, 2008-07-05 08:50:00, 2008-07-05 09:00:00, 2008-07-05 12:50:00, 2008-07-05 13:00:00, 2008-07-05 13:10:00, 2008-07-05 11:40:00, 2008-07-05 11:50:00, 2007-03-27 11:30:00, 2007-03-29 11:10:00, 2007-03-29 10:50:00, 2007-03-29 10:40:00, 2007-03-29 08:40:00, 2007-03-29 08:10:00, 2007-03-29 08:30:00, 2007-03-29 12:30:00, 2007-03-29 12:00:00, 2007-04-11 09:00:00, 2007-04-12 09:00:00, 2007-04-12 09:10:00, 2007-04-12 09:20:00, 2007-04-12 10:00:00, 2007-04-12 10:10:00, 2007-04-12 10:30:00, 2007-04-12 10:40:00, 2007-04-12 15:40:00, 2007-04-12 15:50:00, 2007-05-24 12:20:00, 2007-05-24 12:30:00, 2007-05-24 12:50:00, 2007-05-24 13:10:00, 2007-05-24 14:30:00, 2007-05-24 14:50:00, 2007-05-24 18:50:00, 2007-05-24 09:00:00, 2007-05-24 09:30:00, 2007-05-24 10:00:00, 2007-05-24 10:30:00, 2007-05-24 17:50:00, 2007-05-22 14:15:00, 2007-05-24 12:10:00, 2007-05-24 12:40:00, 2007-05-24 13:00:00, 2007-05-24 14:10:00, 2007-05-24 09:40:00, 2007-05-24 10:10:00, 2007-05-24 17:40:00, 2007-05-26 13:05:00, 2007-05-27 10:20:00, 2007-05-27 10:40:00, 2007-05-27 10:50:00, 2007-05-27 11:10:00, 2007-05-27 11:20:00, 2007-05-27 11:50:00, 2007-05-27 12:00:00, 2007-06-09 08:00:00, 2007-06-09 08:10:00, 2007-06-09 11:10:00, 2007-06-09 11:30:00, 2007-06-09 12:00:00, 2007-06-09 09:30:00, 2007-06-09 09:50:00, 2007-06-09 10:20:00, 2007-07-12 14:40:00, 2007-07-14 14:20:00, 2007-07-14 15:40:00, 2007-07-14 16:20:00, 2007-07-14 16:30:00, 2007-07-14 09:30:00, 2007-07-14 09:40:00, 2007-07-14 09:50:00, 2007-07-14 13:30:00, 2007-07-14 13:40:00, 2007-07-14 13:50:00, 2007-07-14 15:50:00, 2007-07-14 16:10:00, 2007-07-14 11:30:00, 2007-07-14 11:40:00, 2013-02-22 16:52:00, 2011-07-14 10:28:00, 2011-07-14 10:57:00, 2011-07-14 11:20:00, 2012-03-12 11:33:00, 2012-03-12 12:25:00, 2012-03-12 11:14:00, 2012-07-04 10:34:00, 2012-07-04 10:08:00, 2012-07-04 09:53:00, 2012-08-14 10:28:00, 2012-08-14 10:11:00, 2012-08-14 09:41:00, 2012-08-14 13:05:00, 2012-11-14 11:59:00, 2012-11-14 11:41:00, 2012-11-14 11:25:00, 2013-05-06 10:11:00, 2013-05-06 10:31:00, 2013-05-06 12:37:00, 2011-09-20 10:18:00, 2011-09-20 10:08:00, 2011-09-20 11:02:00, 2011-11-08 12:41:00, 2011-11-08 11:44:00, 2012-05-10 08:40:00, 2012-05-10 09:30:00, 2012-05-24 09:13:00, 2012-05-24 09:56:00, 2012-05-24 08:37:00, 2012-11-19 12:55:00, 2012-11-19 11:31:00, 2012-11-19 12:15:00, 2014-03-11 10:21:00, 2014-03-11 10:57:00, 2014-03-11 11:31:00, 2013-06-12 09:47:00, 2013-06-12 10:54:00, 2013-06-12 10:20:00, 2013-07-10 10:58:00, 2013-07-10 10:48:00, 2013-07-10 09:26:00, 2012-08-28 10:36:00, 2012-08-27 17:16:00, 2012-08-28 06:07:00, 2013-07-05 12:16:00, 2013-07-04 17:12:00, 2013-07-05 06:40:00, 2011-03-23 11:00:00, 2011-04-05 12:00:00, 2011-03-28 11:00:00, 2012-03-13 09:33:00, 2009-08-05 09:30:00, 2008-04-16 07:30:00, 1994-03-17 08:45:00, 1994-03-16 08:30:00, 2009-09-24 08:00:00, 2009-03-27 08:00:00, 2010-03-17 08:00:00, 2011-04-07 08:30:00, 2011-10-10 09:00:00, 1992-05-19 09:30:00, 1990-06-12 09:30:00, 1990-06-26 09:30:00, 1991-06-11 09:30:00, 1991-04-16 09:30:00, 1991-05-14 09:30:00, 2014-04-01 13:34:00, 2014-04-01 13:43:00, 2014-04-01 14:24:00, 2014-04-01 13:47:00, 2014-04-01 14:40:00, 2014-04-01 13:59:00, 2014-04-01 13:56:00, 2014-04-01 13:53:00, 2014-04-01 14:34:00, 2014-04-01 13:50:00, 2014-04-01 15:04:00, 2014-04-01 15:02:00, 2014-04-01 13:39:00, 2014-04-01 14:57:00, 2014-04-01 14:18:00, 2014-04-01 13:46:00, 2014-04-01 13:31:00, 2014-04-01 14:54:00, 2014-05-01 08:40:00, 2014-05-01 10:19:00, 2014-05-01 10:59:00, 2014-05-01 10:28:00, 2014-05-01 10:16:00, 2014-05-01 09:41:00, 2014-05-01 10:30:00, 2014-05-01 10:15:00, 2014-05-01 10:12:00, 2014-05-01 10:10:00, 2014-05-01 10:07:00, 2014-05-01 10:00:00, 2014-05-01 10:31:00, 2014-05-01 10:17:00, 2014-04-03 11:34:00, 2014-04-03 14:03:00, 2014-04-03 10:15:00, 2014-04-03 12:47:00, 2014-04-03 15:34:00, 2014-04-03 11:32:00, 2014-04-03 10:12:00, 2014-04-03 15:32:00, 2014-04-03 11:30:00, 2014-04-03 10:20:00, 2014-04-03 12:45:00, 2014-04-03 10:10:00, 2014-04-03 15:30:00, 2014-04-03 14:00:00, 2014-04-03 11:23:00, 2014-04-03 12:44:00, 2014-04-03 10:09:00, 2014-04-03 13:58:00, 2014-04-03 11:21:00, 2014-04-03 10:24:00, 2014-04-03 15:38:00, 2014-04-03 14:10:00, 2014-04-03 11:37:00, 2014-04-03 12:52:00, 2014-04-03 10:26:00, 2014-04-03 15:40:00, 2014-04-03 14:11:00, 2014-04-03 11:39:00, 2014-04-03 12:54:00, 2014-04-03 15:42:00, 2014-04-03 14:13:00, 2014-04-03 15:46:00, 2014-04-03 11:40:00, 2014-04-03 10:28:00, 2014-04-03 11:35:00, 2014-04-03 12:56:00, 2014-04-03 15:47:00, 2014-04-03 14:15:00, 2014-04-03 12:58:00, 2014-04-03 15:48:00, 2014-04-03 11:42:00, 2014-04-03 14:17:00, 2014-04-03 10:30:00, 2014-04-03 14:05:00, 2014-04-03 12:59:00, 2014-04-03 10:18:00, 2014-04-03 12:48:00, 2014-04-03 15:36:00, 2014-04-30 09:05:00, 2014-04-30 11:32:00, 2014-04-30 11:40:00, 2014-04-30 11:37:00, 2014-04-30 13:24:00, 2014-04-30 13:33:00, 2014-04-30 13:31:00, 2014-04-30 13:29:00, 2014-04-30 13:27:00, 2014-04-30 13:35:00, 2014-04-30 13:47:00, 2014-04-30 13:45:00, 2014-04-30 11:30:00, 2014-04-30 13:41:00, 2014-04-30 13:39:00, 2014-04-30 14:41:00, 2014-04-30 14:37:00, 2014-04-30 14:33:00, 2014-04-30 14:31:00, 2014-04-30 14:51:00, 2014-04-30 14:50:00, 2014-04-30 14:48:00, 2014-04-30 14:45:00, 2014-04-30 11:29:00, 2014-04-30 14:44:00, 2014-04-30 15:56:00, 2014-04-30 15:54:00, 2014-04-30 15:50:00, 2014-04-30 15:48:00, 2014-04-30 16:05:00, 2014-04-30 16:03:00, 2014-04-30 16:00:00, 2014-04-30 15:58:00, 2014-04-30 17:05:00, 2014-04-30 11:26:00, 2014-04-30 17:02:00, 2014-04-30 17:00:00, 2014-04-30 16:58:00, 2014-04-30 16:56:00, 2014-04-30 17:16:00, 2014-04-30 17:14:00, 2014-04-30 17:12:00, 2014-04-30 17:10:00, 2014-04-30 17:09:00, 2014-04-30 11:22:00, 2014-04-30 11:47:00, 2014-04-30 11:45:00, 2014-04-30 11:44:00, 2014-04-30 11:42:00, 1997-04-30 10:30:00, 1996-12-05 10:30:00, 2021-08-11 16:15:00, 2021-08-11 16:23:00, 2021-08-11 16:39:00, 2021-08-11 16:47:00, 2021-08-11 16:55:00, 2021-08-11 17:11:00, 2021-08-11 17:19:00, 2021-08-20 10:51:00, 2021-08-20 10:59:00, 2021-08-20 11:15:00, 2021-08-20 11:23:00, 2021-08-20 11:31:00, 2021-08-20 11:47:00, 2021-08-20 11:55:00, 2022-01-05 13:26:00, 2022-01-05 14:38:00, 2022-01-05 14:54:00, 2022-01-05 13:34:00, 2022-01-05 13:50:00, 2022-01-05 13:58:00, 2022-01-05 14:22:00, 2022-01-05 14:30:00, 2021-11-09 09:38:00, 2021-11-09 10:50:00, 2021-11-09 11:06:00, 2021-11-09 09:46:00, 2021-11-09 10:02:00, 2021-11-09 10:10:00, 2021-11-09 10:18:00, 2021-11-09 10:34:00, 2021-11-09 10:42:00, 2021-08-11 16:20:00, 2021-08-20 10:58:00, 2021-11-09 10:15:00, 2022-01-05 14:23:00, 2020-11-18 13:40:00, 2020-11-18 14:52:00, 2020-11-18 15:08:00, 2020-11-18 13:48:00, 2020-11-18 14:04:00, 2020-11-18 14:12:00, 2020-11-18 14:20:00, 2020-11-18 14:36:00, 2020-11-18 14:44:00, 2020-11-25 13:48:00, 2020-11-25 15:00:00, 2020-11-25 15:15:00, 2020-11-25 13:56:00, 2020-11-25 14:12:00, 2020-11-25 14:20:00, 2020-11-25 14:28:00, 2020-11-25 14:44:00, 2020-11-25 14:52:00, 2020-02-12 13:25:00, 2020-02-12 14:37:00, 2020-02-12 14:53:00, 2020-02-12 13:33:00, 2020-02-12 13:49:00, 2020-02-12 13:57:00, 2020-02-12 14:05:00, 2020-02-12 14:21:00, 2020-02-12 14:29:00, 2020-09-12 13:57:00, 2020-12-09 15:09:00, 2020-12-09 15:25:00, 2020-09-12 14:05:00, 2020-09-12 14:21:00, 2020-12-09 14:29:00, 2020-12-09 14:37:00, 2020-12-09 14:53:00, 2020-12-09 15:01:00, 2019-05-27 10:22:00, 2019-06-04 09:38:00, 2019-06-17 09:28:00, 2019-06-26 09:13:00, 2018-05-15 13:18:00, 2018-05-15 14:40:00, 2018-05-15 14:46:00, 2018-05-15 13:26:00, 2018-05-15 13:42:00, 2018-05-15 13:50:00, 2018-05-15 13:58:00, 2018-05-15 14:14:00, 2018-05-15 14:22:00, 2018-05-22 13:25:00, 2018-05-22 14:37:00, 2018-05-22 14:53:00, 2018-05-22 13:33:00, 2018-05-22 13:49:00, 2018-05-22 13:57:00, 2018-05-22 14:05:00, 2018-05-22 14:21:00, 2018-05-22 14:29:00, 2018-05-29 13:00:00, 2018-05-29 14:12:00, 2018-05-29 14:28:00, 2018-05-29 13:08:00, 2018-05-29 13:24:00, 2018-05-29 13:32:00, 2018-05-29 13:40:00, 2018-05-29 13:56:00, 2018-05-29 14:04:00, 2018-06-22 13:41:00, 2018-06-22 14:53:00, 2018-06-22 15:09:00, 2018-06-22 13:49:00, 2018-06-22 14:05:00, 2018-06-22 14:13:00, 2018-06-22 14:21:00, 2018-06-22 14:37:00, 2018-06-22 14:45:00, 2018-06-29 14:08:00, 2018-06-29 15:20:00, 2018-06-29 15:36:00, 2018-06-29 14:16:00, 2018-06-29 14:32:00, 2018-06-29 14:40:00, 2018-06-29 14:48:00, 2018-06-29 15:04:00, 2018-06-29 15:12:00, 2018-07-05 13:07:00, 2018-07-05 14:19:00, 2018-07-05 14:35:00, 2018-07-05 13:15:00, 2018-07-05 13:31:00, 2018-07-05 13:39:00, 2018-07-05 13:47:00, 2018-07-05 14:03:00, 2018-07-05 14:11:00, 2018-08-15 13:53:00, 2018-08-15 15:05:00, 2018-08-15 15:21:00, 2018-08-15 14:01:00, 2018-08-15 14:17:00, 2018-08-15 14:25:00, 2018-08-15 14:33:00, 2018-08-15 14:49:00, 2018-08-15 14:57:00, 2018-08-22 13:13:00, 2018-08-22 14:25:00, 2018-08-22 14:41:00, 2018-08-22 13:21:00, 2018-08-22 15:21:00, 2018-08-22 13:45:00, 2018-08-22 13:53:00, 2018-08-22 14:09:00, 2018-08-22 14:17:00, 2018-10-03 14:16:00, 2018-10-03 15:28:00, 2018-10-03 15:44:00, 2018-10-03 14:24:00, 2018-10-03 14:40:00, 2018-10-03 14:48:00, 2018-10-03 14:56:00, 2018-10-03 15:12:00, 2018-10-03 15:20:00, 2018-10-10 13:31:00, 2018-10-10 14:43:00, 2018-10-10 14:59:00, 2018-10-10 13:39:00, 2018-10-10 13:55:00, 2018-10-10 14:03:00, 2018-10-10 14:11:00, 2018-10-10 14:27:00, 2018-10-10 14:35:00, 2018-08-29 14:43:00, 2018-08-29 15:55:00, 2018-08-29 16:11:00, 2018-08-29 14:51:00, 2018-08-29 15:07:00, 2018-08-29 15:15:00, 2018-08-29 15:23:00, 2018-08-29 15:39:00, 2018-08-29 15:47:00, 2018-09-05 13:44:00, 2018-09-05 14:56:00, 2018-09-05 15:12:00, 2018-09-05 13:52:00, 2018-09-05 14:08:00, 2018-09-05 14:16:00, 2018-09-05 14:24:00, 2018-09-05 14:40:00, 2018-09-05 14:48:00, 2018-09-12 13:41:00, 2018-09-12 14:53:00, 2018-09-12 15:09:00, 2018-09-12 13:49:00, 2018-09-12 14:05:00, 2018-09-12 14:13:00, 2018-09-12 14:21:00, 2018-09-12 14:37:00, 2018-09-12 14:45:00, 2019-02-25 15:23:00, 2019-02-25 17:11:00, 2019-02-25 17:35:00, 2019-02-25 15:35:00, 2019-02-25 15:59:00, 2019-02-25 16:11:00, 2019-02-25 16:23:00, 2019-02-25 16:47:00, 2019-02-25 16:59:00, 2019-03-07 12:12:00, 2019-03-07 12:24:00, 2019-03-07 12:48:00, 2019-08-22 10:58:00, 2019-08-22 12:10:00, 2019-08-22 12:26:00, 2019-08-22 11:06:00, 2019-08-22 11:22:00, 2019-08-22 11:30:00, 2019-08-22 11:38:00, 2019-08-22 11:54:00, 2019-08-22 12:02:00, 2019-08-29 11:06:00, 2019-08-29 12:18:00, 2019-08-29 12:34:00, 2019-08-29 11:14:00, 2019-08-29 11:30:00, 2019-08-29 11:38:00, 2019-08-29 11:46:00, 2019-08-29 12:02:00, 2019-08-29 12:10:00, 2020-03-06 14:41:00, 2020-03-06 15:53:00, 2020-03-06 16:09:00, 2020-03-06 14:49:00, 2020-03-06 15:05:00, 2020-03-06 15:13:00, 2020-03-06 15:21:00, 2020-03-06 15:37:00, 2020-03-06 15:45:00, 2020-09-06 13:45:00, 2020-09-06 14:57:00, 2020-09-06 15:13:00, 2020-09-06 15:53:00, 2020-09-06 14:09:00, 2020-09-06 14:17:00, 2020-09-06 14:25:00, 2020-09-06 14:41:00, 2020-09-06 14:49:00, 2021-03-16 16:24:00, 2021-03-16 17:36:00, 2021-03-16 17:52:00, 2021-03-16 16:31:00, 2021-03-16 16:56:00, 2021-03-16 17:04:00, 2021-03-16 17:20:00, 2021-03-16 17:28:00, 2019-08-14 06:00:00, 2019-05-21 06:00:00, 2018-04-23 11:00:00, 2019-04-16 11:00:00, 2020-05-28 11:00:00, 2013-06-19 09:10:00, 2013-06-19 15:05:00, 2017-07-18 10:22:00, 2017-07-18 10:44:00, 2017-07-18 10:49:00, 2017-07-18 10:53:00, 2016-07-28 08:07:00, 2016-07-28 09:20:00, 2016-07-28 09:28:00, 2022-10-11 15:24:00, 2022-10-11 16:36:00, 2022-10-11 16:52:00, 2022-10-11 17:00:00, 2022-10-11 17:16:00, 2022-10-11 17:24:00, 2022-10-11 17:32:00, 2022-10-11 15:40:00, 2022-10-11 15:56:00, 2022-10-11 16:04:00, 2022-10-11 16:12:00, 2022-10-11 16:28:00, 2022-11-16 10:50:00, 2022-11-16 12:02:00, 2022-11-16 12:18:00, 2022-11-16 09:42:00, 2022-11-16 11:06:00, 2022-11-16 11:14:00, 2022-11-16 11:22:00, 2022-11-16 11:38:00, 2022-11-16 11:46:00, 2022-11-16 11:54:00, 2022-11-24 13:30:00, 2022-11-24 12:01:00, 2022-11-24 11:42:00, 2022-11-24 11:18:00, 2022-11-24 12:26:00, 2022-11-24 12:34:00, 2022-11-24 12:17:00, 2022-11-24 12:42:00, 2022-11-24 12:25:00, 2022-11-24 12:50:00, 2022-11-24 12:33:00, 2022-11-24 12:58:00, 2022-11-24 12:41:00, 2022-11-24 13:14:00, 2022-11-24 12:57:00, 2023-04-12 14:45:00, 2023-04-12 15:57:00, 2023-04-12 16:13:00, 2023-04-12 16:21:00, 2023-04-12 16:53:00, 2023-04-12 17:01:00, 2023-04-12 14:53:00, 2023-04-12 15:01:00, 2023-04-12 15:41:00, 2023-04-19 14:20:00, 2023-04-19 15:32:00, 2023-04-19 15:40:00, 2023-04-19 15:56:00, 2023-04-19 16:04:00, 2023-04-19 16:28:00, 2023-04-19 16:36:00, 2023-04-19 14:28:00, 2023-04-19 14:44:00, 2023-04-19 15:00:00, 2023-04-19 15:08:00, 2023-04-19 15:16:00, 2023-05-10 13:51:00, 2023-05-10 15:03:00, 2023-05-10 15:11:00, 2023-05-10 15:27:00, 2023-05-10 15:35:00, 2023-05-10 15:43:00, 2023-05-10 13:59:00, 2023-05-10 14:15:00, 2023-05-10 14:39:00, 2023-05-17 13:27:00, 2023-05-17 14:39:00, 2023-05-17 14:47:00, 2023-05-17 14:55:00, 2023-05-17 15:03:00, 2023-05-17 15:11:00, 2023-05-17 15:19:00, 2023-05-17 15:35:00, 2023-05-17 15:43:00, 2023-05-17 13:35:00, 2023-05-17 13:43:00, 2023-05-17 13:51:00, 2023-05-17 14:07:00, 2023-05-17 14:15:00, 2023-05-17 14:23:00, 2023-05-24 13:51:00, 2023-05-24 15:03:00, 2023-05-24 15:11:00, 2023-05-24 15:19:00, 2023-05-24 15:27:00, 2023-05-24 15:35:00, 2023-05-24 15:43:00, 2023-05-24 15:59:00, 2023-05-24 16:07:00, 2023-05-24 13:59:00, 2023-05-24 14:07:00, 2023-05-24 14:15:00, 2023-05-24 14:31:00, 2023-05-24 14:39:00, 2023-05-24 14:47:00, 2018-05-01 13:08:00, 2018-05-01 13:16:00, 2018-05-01 13:32:00, 2018-05-01 13:40:00, 2018-05-01 13:48:00, 2018-05-01 14:04:00, 2018-05-01 14:12:00, 2018-05-01 14:20:00, 2018-05-01 14:36:00, 2018-05-08 11:08:00, 2018-05-08 11:16:00, 2018-05-08 11:32:00, 2018-05-08 11:40:00, 2018-05-08 11:48:00, 2018-05-08 12:04:00, 2018-05-08 12:12:00, 2018-05-08 12:20:00, 2018-05-08 12:36:00, 2019-05-15 16:48:00, 2019-05-15 18:00:00, 2019-05-15 18:16:00, 2019-05-15 16:56:00, 2019-05-15 17:12:00, 2019-05-15 17:20:00, 2019-05-15 17:28:00, 2019-05-15 17:44:00, 2019-05-15 17:52:00, 2020-04-17 13:04:00, 2020-04-17 14:16:00, 2020-04-17 14:32:00, 2020-04-17 13:12:00, 2020-04-17 13:28:00, 2020-04-17 13:36:00, 2020-04-17 13:44:00, 2020-04-17 14:00:00, 2020-04-17 14:08:00, 2020-04-23 12:40:00, 2020-04-23 13:52:00, 2020-04-23 14:08:00, 2020-04-23 12:48:00, 2020-04-23 13:04:00, 2020-04-23 13:12:00, 2020-04-23 13:20:00, 2020-04-23 13:36:00, 2020-04-23 13:44:00, 2022-06-08 12:56:00, 2022-06-08 14:08:00, 2022-06-08 14:24:00, 2022-06-08 13:04:00, 2022-06-08 13:20:00, 2022-06-08 13:28:00, 2022-06-08 13:36:00, 2022-06-08 13:52:00, 2022-06-08 14:00:00, 2022-06-15 13:05:00, 2022-06-15 12:33:00, 2022-06-15 12:49:00, 2022-06-15 11:30:00, 2022-06-15 11:46:00, 2022-06-15 11:54:00, 2022-06-15 12:10:00, 2022-06-15 12:18:00, 2022-06-15 12:25:00, 2022-06-22 11:58:00, 2022-06-22 13:10:00, 2022-06-22 13:26:00, 2022-06-22 12:06:00, 2022-06-22 12:22:00, 2022-06-22 12:30:00, 2022-06-22 12:46:00, 2022-06-22 12:54:00, 2022-06-22 13:02:00, 2022-06-29 13:57:00, 2022-06-29 13:25:00, 2022-06-29 13:41:00, 2022-06-29 14:05:00, 2022-06-29 14:21:00, 2022-06-29 14:29:00, 2022-06-29 14:37:00, 2022-06-29 13:09:00, 2022-06-29 13:17:00, 2017-03-22 10:06:00, 2017-03-22 11:37:00, 2017-03-22 12:03:00, 2017-04-19 12:21:00, 2017-04-19 11:11:00, 2017-04-19 10:25:00, 2017-08-02 10:40:00, 2017-08-02 14:29:00, 2017-08-02 10:26:00, 2018-03-21 11:45:00, 2018-03-21 14:15:00, 2018-03-21 15:30:00, 2018-09-19 12:33:00, 2018-09-19 11:29:00, 2018-09-19 10:29:00, 2019-02-19 15:45:00, 2019-02-19 11:15:00, 2019-02-19 16:15:00, 2019-03-12 11:15:00, 2019-03-12 13:10:00, 2023-04-12 16:05:00, 2023-04-12 16:29:00, 2023-04-12 16:37:00, 2023-04-12 15:09:00, 2023-04-12 15:25:00, 2023-04-12 15:33:00, 2023-04-19 15:48:00, 2023-04-19 16:12:00, 2023-04-19 14:36:00, 2023-05-10 15:19:00, 2023-05-10 15:59:00, 2023-05-10 16:07:00, 2023-05-10 14:07:00, 2023-05-10 14:31:00, 2023-05-10 14:47:00, 2019-03-20 09:05:00, 2019-03-20 09:15:00, 2019-03-20 09:25:00, 2019-03-20 09:10:00, 2019-03-20 14:17:00, 2019-03-20 12:35:00, 2019-03-20 14:00:00, 2019-03-20 12:18:00, 2019-03-20 15:35:00, 2019-03-20 15:05:00, 2019-03-20 14:46:00, 2019-03-20 14:54:00, 2019-03-20 17:56:00, 2019-03-20 17:31:00, 2019-03-20 17:48:00, 2019-03-20 17:24:00, 2019-03-20 16:57:00, 2019-03-20 16:36:00, 2019-03-20 16:51:00, 2019-03-20 16:26:00, 2019-05-23 08:45:00, 2019-05-23 09:00:00, 2019-05-23 08:40:00, 2019-05-23 08:35:00, 2019-05-23 09:33:00, 2019-05-23 09:05:00, 2019-05-23 09:26:00, 2019-05-23 09:18:00, 2019-05-23 10:18:00, 2019-05-23 10:10:00, 2019-05-23 09:56:00, 2019-05-23 10:02:00, 2019-05-23 11:10:00, 2019-05-23 11:30:00, 2019-05-23 11:06:00, 2019-05-23 10:59:00, 2019-05-23 13:00:00, 2019-05-23 12:15:00, 2019-05-23 11:59:00, 2019-05-23 11:50:00, 2020-03-16 09:00:00, 2020-03-16 09:13:00, 2020-03-16 09:10:00, 2020-03-16 09:15:00, 2020-03-16 10:53:00, 2020-03-16 11:45:00, 2020-03-16 13:15:00, 2020-03-16 13:35:00, 2020-03-16 13:45:00, 2020-03-16 13:40:00, 2020-03-16 14:18:00, 2020-03-16 14:03:00, 2020-03-16 09:45:00, 2020-03-16 09:50:00, 2020-03-16 10:10:00, 2020-03-16 10:15:00, 2020-03-16 14:50:00, 2020-03-16 14:55:00, 2020-03-16 15:10:00, 2020-03-16 15:16:00, 2020-05-20 07:10:00, 2020-05-20 07:12:00, 2020-05-20 07:14:00, 2020-05-20 07:16:00, 2020-05-20 09:15:00, 2020-05-20 09:40:00, 2020-05-20 09:24:00, 2020-05-20 09:30:00, 2020-05-20 09:52:00, 2020-05-20 10:10:00, 2020-05-20 09:58:00, 2020-05-20 10:05:00, 2020-05-20 07:24:00, 2020-05-20 07:38:00, 2020-05-20 07:35:00, 2020-05-20 07:50:00, 2020-05-20 08:13:00, 2020-05-20 08:37:00, 2020-05-20 08:20:00, 2020-05-20 08:25:00, 2019-04-08 16:40:00, 2019-04-08 16:43:00, 2019-04-08 16:34:00, 2019-04-08 16:31:00, 2019-04-08 15:38:00, 2019-04-08 15:45:00, 2019-04-08 15:53:00, 2019-04-08 15:58:00, 2019-04-08 17:17:00, 2019-04-08 17:12:00, 2019-04-08 17:24:00, 2019-04-08 17:28:00, 2019-04-08 10:12:00, 2019-04-08 10:21:00, 2019-04-08 10:33:00, 2019-04-08 10:42:00, 2019-04-08 13:42:00, 2019-04-08 12:12:00, 2019-04-08 11:58:00, 2019-04-08 12:04:00, 2019-04-08 16:37:00, 2019-04-08 16:33:00, 2019-04-08 16:45:00, 2019-04-08 16:46:00, 2019-04-08 17:50:00, 2019-04-08 17:56:00, 2019-04-08 18:04:00, 2019-04-08 18:00:00, 2019-04-08 11:18:00, 2019-04-08 11:13:00, 2019-04-08 11:21:00, 2019-04-08 11:43:00, 2019-04-08 14:16:00, 2019-04-08 14:12:00, 2019-04-08 14:43:00, 2019-04-08 14:18:00, 2019-05-14 11:00:00, 2019-05-14 11:10:00, 2019-05-14 11:05:00, 2019-05-14 11:15:00, 2019-05-14 12:00:00, 2019-05-14 12:10:00, 2019-05-14 12:25:00, 2019-05-14 12:35:00, 2019-05-14 13:16:00, 2019-05-14 13:33:00, 2019-05-14 13:45:00, 2019-05-14 13:59:00, 2019-05-14 16:02:00, 2019-05-14 15:52:00, 2019-05-14 16:20:00, 2019-05-14 16:28:00, 2019-05-14 15:35:00, 2019-05-14 14:51:00, 2019-05-14 15:01:00, 2019-05-14 15:23:00, 2019-05-14 09:32:00, 2019-05-14 09:44:00, 2019-05-14 09:51:00, 2019-05-14 10:01:00, 2019-05-14 10:39:00, 2019-05-14 10:45:00, 2019-05-14 11:02:00, 2019-05-14 11:18:00, 2019-05-14 17:00:00, 2019-05-14 16:46:00, 2019-05-14 17:11:00, 2019-05-14 17:20:00, 2019-05-14 14:10:00, 2019-05-14 14:22:00, 2019-05-14 14:31:00, 2019-05-14 14:44:00, 2020-03-19 08:38:00, 2020-03-19 08:45:00, 2020-03-19 08:30:00, 2020-03-19 08:52:00, 2020-03-19 12:58:00, 2020-03-19 13:00:00, 2020-03-19 13:22:00, 2020-03-19 13:15:00, 2020-03-19 14:05:00, 2020-03-19 14:00:00, 2020-03-19 13:46:00, 2020-03-19 13:53:00, 2020-03-19 10:27:00, 2020-03-19 10:22:00, 2020-03-19 10:37:00, 2020-03-19 10:43:00, 2020-03-19 11:16:00, 2020-03-19 11:07:00, 2020-03-19 10:54:00, 2020-03-19 11:00:00, 2020-03-19 12:20:00, 2020-03-19 12:06:00, 2020-03-19 11:53:00, 2020-03-19 11:57:00, 2020-03-19 14:47:00, 2020-03-19 14:50:00, 2020-03-19 14:36:00, 2020-03-19 14:40:00, 2020-03-19 10:02:00, 2020-03-19 10:15:00, 2020-03-19 09:55:00, 2020-03-19 10:00:00, 2020-03-19 09:17:00, 2020-03-19 09:11:00, 2020-03-19 09:03:00, 2020-03-19 08:55:00, 2020-04-21 08:50:00, 2020-04-21 08:53:00, 2020-04-21 08:45:00, 2020-04-21 09:00:00, 2020-04-21 14:42:00, 2020-04-21 14:37:00, 2020-04-21 15:05:00, 2020-04-21 15:00:00, 2020-04-21 15:32:00, 2020-04-21 15:38:00, 2020-04-21 15:16:00, 2020-04-21 15:12:00, 2020-04-21 10:54:00, 2020-04-21 10:40:00, 2020-04-21 10:59:00, 2020-04-21 11:05:00, 2020-04-21 11:40:00, 2020-04-21 11:35:00, 2020-04-21 11:19:00, 2020-04-21 11:24:00, 2020-04-21 14:25:00, 2020-04-21 14:28:00, 2020-04-21 14:02:00, 2020-04-21 14:09:00, 2020-04-21 09:36:00, 2020-04-21 09:38:00, 2020-04-21 09:10:00, 2020-04-21 09:21:00, 2020-04-21 10:25:00, 2020-04-21 10:30:00, 2020-04-21 10:14:00, 2020-04-21 10:07:00, 2020-04-21 13:12:00, 2020-04-21 13:16:00, 2020-04-21 12:29:00, 2020-04-21 12:53:00, 2024-02-19 15:41:00, 2024-02-19 17:09:00, 2024-02-19 17:17:00, 2024-02-19 17:25:00, 2024-02-19 17:33:00, 2024-02-19 17:49:00, 2024-02-19 15:25:00, 2024-02-19 18:05:00, 2024-02-19 15:49:00, 2024-02-19 15:57:00, 2024-02-19 16:05:00, 2024-02-19 16:21:00, 2024-02-19 16:29:00, 2024-02-19 16:37:00, 2024-02-19 17:01:00, 2024-03-06 16:25:00, 2024-03-06 17:53:00, 2024-03-06 18:01:00, 2024-03-06 18:09:00, 2024-03-06 18:17:00, 2024-03-06 18:33:00, 2024-03-06 18:41:00, 2024-03-06 18:49:00, 2024-03-06 16:33:00, 2024-03-06 16:41:00, 2024-03-06 16:49:00, 2024-03-06 17:05:00, 2024-03-06 17:13:00, 2024-03-06 17:21:00, 2024-03-06 17:37:00, 2024-03-06 17:45:00, 2024-03-13 16:51:00, 2024-03-13 18:19:00, 2024-03-13 18:27:00, 2024-03-13 18:35:00, 2024-03-13 18:43:00, 2024-03-13 18:59:00, 2024-03-13 19:07:00, 2024-03-13 19:15:00, 2024-03-13 16:59:00, 2024-03-13 17:07:00, 2024-03-13 17:15:00, 2024-03-13 17:31:00, 2024-03-13 17:39:00, 2024-03-13 17:47:00, 2024-03-13 18:03:00, 2024-03-13 18:11:00, 2024-03-19 14:51:00, 2024-03-19 16:19:00, 2024-03-19 16:27:00, 2024-03-19 16:35:00, 2024-03-19 16:43:00, 2024-03-19 17:07:00, 2024-03-19 17:15:00, 2024-03-19 14:59:00, 2024-03-19 15:15:00, 2024-03-19 15:31:00, 2024-03-19 15:39:00, 2024-03-19 15:47:00, 2024-03-19 16:03:00, 2024-03-19 16:11:00, 2024-04-03 15:51:00, 2024-04-03 17:18:00, 2024-04-03 17:26:00, 2024-04-03 17:34:00, 2024-04-03 17:42:00, 2024-04-03 17:58:00, 2024-04-03 18:06:00, 2024-04-03 15:59:00, 2024-04-03 16:07:00, 2024-04-03 16:15:00, 2024-04-03 16:31:00, 2024-04-03 16:39:00, 2024-04-03 16:47:00, 2024-04-03 17:02:00, 2024-04-03 17:10:00, 2024-04-10 12:31:00, 2024-04-10 13:59:00, 2024-04-10 14:07:00, 2024-04-10 14:15:00, 2024-04-10 14:23:00, 2024-04-10 14:47:00, 2024-04-10 14:55:00, 2024-04-10 12:39:00, 2024-04-10 12:47:00, 2024-04-10 12:55:00, 2024-04-10 13:11:00, 2024-04-10 13:19:00, 2024-04-10 13:27:00, 2024-04-10 13:43:00, 2024-04-10 13:51:00, 2024-04-17 13:29:00, 2024-04-17 14:57:00, 2024-04-17 15:05:00, 2024-04-17 15:13:00, 2024-04-17 15:21:00, 2024-04-17 15:45:00, 2024-04-17 15:53:00, 2024-04-17 13:37:00, 2024-04-17 13:45:00, 2024-04-17 13:53:00, 2024-04-17 14:09:00, 2024-04-17 14:17:00, 2024-04-17 14:25:00, 2024-04-17 14:41:00, 2024-04-17 14:49:00, 2024-04-24 15:30:00, 2024-04-24 16:58:00, 2024-04-24 17:06:00, 2024-04-24 17:14:00, 2024-04-24 17:22:00, 2024-04-24 17:38:00, 2024-04-24 17:46:00, 2024-04-24 17:54:00, 2024-04-24 15:38:00, 2024-04-24 15:46:00, 2024-04-24 15:54:00, 2024-04-24 16:10:00, 2024-04-24 16:18:00, 2024-04-24 16:26:00, 2024-04-24 16:42:00, 2024-04-24 16:50:00, 2024-05-01 16:24:00, 2024-05-01 17:52:00, 2024-05-01 18:00:00, 2024-05-01 18:08:00, 2024-05-01 18:16:00, 2024-05-01 18:32:00, 2024-05-01 18:40:00, 2024-05-01 18:48:00, 2024-05-01 16:32:00, 2024-05-01 16:40:00, 2024-05-01 16:48:00, 2024-05-01 17:04:00, 2024-05-01 17:12:00, 2024-05-01 17:20:00, 2024-05-01 17:36:00, 2024-05-08 15:31:00, 2024-05-08 16:59:00, 2024-05-08 17:07:00, 2024-05-08 17:15:00, 2024-05-08 17:23:00, 2024-05-08 17:39:00, 2024-05-08 17:47:00, 2024-05-08 17:55:00, 2024-05-08 15:39:00, 2024-05-08 15:47:00, 2024-05-08 15:55:00, 2024-05-08 16:11:00, 2024-05-08 16:19:00, 2024-05-08 16:27:00, 2024-05-08 16:43:00, 2024-05-08 16:51:00, 2024-05-15 15:52:00, 2024-05-15 17:20:00, 2024-05-15 17:28:00, 2024-05-15 17:36:00, 2024-05-15 17:44:00, 2024-05-15 18:00:00, 2024-05-15 18:08:00, 2024-05-15 16:00:00, 2024-05-15 16:08:00, 2024-05-15 16:16:00, 2024-05-15 16:32:00, 2024-05-15 16:40:00, 2024-05-15 16:48:00, 2024-05-15 17:04:00, 2024-05-15 17:12:00, 2024-05-23 13:38:00, 2024-05-23 15:06:00, 2024-05-23 15:14:00, 2024-05-23 15:22:00, 2024-05-23 15:30:00, 2024-05-23 15:46:00, 2024-05-23 15:54:00, 2024-05-23 16:02:00, 2024-05-23 13:46:00, 2024-05-23 13:54:00, 2024-05-23 14:02:00, 2024-05-23 14:18:00, 2024-05-23 14:26:00, 2024-05-23 14:34:00, 2024-05-23 14:50:00, 2024-05-23 14:58:00, 2024-06-03 10:50:00, 2024-06-03 12:18:00, 2024-06-03 12:26:00, 2024-06-03 12:34:00, 2024-06-03 12:42:00, 2024-06-03 12:58:00, 2024-06-03 13:06:00, 2024-06-03 13:14:00, 2024-06-03 10:58:00, 2024-06-03 11:06:00, 2024-06-03 11:14:00, 2024-06-03 11:30:00, 2024-06-03 11:38:00, 2024-06-03 11:46:00, 2024-06-03 12:02:00, 2024-06-03 12:10:00, 2024-06-25 13:44:00, 2024-06-25 15:12:00, 2024-06-25 15:20:00, 2024-06-25 15:28:00, 2024-06-25 15:36:00, 2024-06-25 15:52:00, 2024-06-25 16:00:00, 2024-06-25 16:08:00, 2024-06-25 13:52:00, 2024-06-25 14:00:00, 2024-06-25 14:08:00, 2024-06-25 14:24:00, 2024-06-25 14:32:00, 2024-06-25 14:40:00, 2024-06-25 14:56:00, 2024-06-25 15:04:00, 2024-07-01 15:16:00, 2024-07-01 16:44:00, 2024-07-01 16:52:00, 2024-07-01 17:00:00, 2024-07-01 17:08:00, 2024-07-01 17:24:00, 2024-07-01 17:32:00, 2024-07-01 17:40:00, 2024-07-01 15:24:00, 2024-07-01 15:32:00, 2024-07-01 15:40:00, 2024-07-01 15:56:00, 2024-07-01 16:04:00, 2024-07-01 16:12:00, 2024-07-01 16:28:00, 2024-07-01 16:36:00, 2024-09-18 12:30:00, 2024-09-18 13:51:00, 2024-09-18 13:59:00, 2024-09-18 14:15:00, 2024-09-18 14:23:00, 2024-09-18 14:31:00, 2024-09-18 14:47:00, 2024-09-18 15:03:00, 2024-09-18 12:47:00, 2024-09-18 12:55:00, 2024-09-18 13:03:00, 2024-09-18 13:19:00, 2024-09-18 13:27:00, 2025-04-02 15:50:49.319, 2025-04-02 15:58:48.088, 2025-04-02 16:06:48.365, 2025-04-02 16:14:47.766, 2025-04-02 16:30:46.869, 2025-04-02 16:46:46.283, 2025-04-02 17:02:46.448, 2025-04-02 14:46:50.338, 2025-04-02 14:54:50.118, 2025-04-02 15:02:50.068, 2025-04-02 15:18:49.959, 2025-04-29 14:58:17.299, 2025-04-29 15:06:17.092, 2025-04-29 15:14:16.894, 2025-04-29 15:22:17.94, 2025-04-29 15:38:15.608, 2025-04-29 15:54:16.016, 2025-04-29 16:10:15.904, 2025-04-29 13:54:19.367, 2025-04-29 14:02:18.992, 2025-04-29 14:10:19.075, 2025-04-29 14:26:17.934, 2022-04-05 14:17:00, 2022-04-05 15:28:00, 2022-04-05 15:44:00, 2022-04-05 14:25:00, 2022-04-05 14:41:00, 2022-04-05 14:49:00, 2022-04-05 15:05:00, 2022-04-05 15:13:00, 2022-04-05 15:20:00, 2022-09-14 14:48:00, 2022-09-14 16:00:00, 2022-09-14 14:56:00, 2022-09-14 15:12:00, 2022-09-14 15:20:00, 2022-09-14 15:28:00, 2022-09-14 15:44:00, 2022-09-14 15:52:00, 2022-04-12 15:08:00, 2022-04-12 16:20:00, 2022-04-12 16:36:00, 2022-04-12 15:16:00, 2022-04-12 15:32:00, 2022-04-12 15:40:00, 2022-04-12 15:56:00, 2022-04-12 16:04:00, 2022-04-12 16:12:00, 2022-04-26 16:05:00, 2022-04-26 17:17:00, 2022-04-26 17:33:00, 2022-04-26 16:13:00, 2022-04-26 16:29:00, 2022-04-26 16:37:00, 2022-04-26 16:53:00, 2022-04-26 17:01:00, 2022-04-26 17:09:00, 2022-10-19 15:38:00, 2022-10-19 15:54:00, 2022-10-19 16:02:00, 2022-10-19 16:10:00, 2022-10-19 16:26:00, 2022-10-19 14:58:00, 2022-10-19 15:06:00, 2022-10-19 15:22:00, 2022-10-19 15:30:00, 2022-09-28 14:43:00, 2022-09-28 15:55:00, 2022-09-28 14:59:00, 2022-09-28 15:23:00, 2022-09-28 15:39:00, 2022-09-28 15:47:00, 2022-09-21 13:39:00, 2022-09-21 14:51:00, 2022-09-21 15:07:00, 2022-09-21 13:47:00, 2022-09-21 14:03:00, 2022-09-21 14:11:00, 2022-09-21 14:19:00, 2022-09-21 14:35:00, 2022-09-21 14:43:00, 2022-10-25 13:23:00, 2022-10-25 13:39:00, 2022-10-25 13:47:00, 2022-10-25 13:55:00, 2022-10-25 14:11:00, 2022-10-25 12:43:00, 2022-10-25 12:51:00, 2022-10-25 13:07:00, 2022-10-25 13:15:00, 2025-05-13 10:00:00, 2025-07-29 10:15:00, 2026-08-11 13:34:00, 2026-08-11 13:41:00, 2026-08-11 13:42:00, 2026-08-11 13:43:00, 2026-08-11 13:44:00, 2026-08-11 13:45:00, 2026-08-11 13:46:00, 2026-08-11 13:47:00, 2026-08-11 13:48:00, 2026-08-11 13:49:00, 2026-08-11 13:35:00, 2026-08-11 13:36:00, 2026-08-11 13:37:00, 2026-08-11 13:38:00, 2026-08-11 13:39:00, 2026-08-11 13:40:00 
## 
##  app.start.orig 
## Class: character 
## Length: 3268 
## Missing values: 1189 
## Unique values: NA, 19-06-2000 09:00, 19-06-2001 11:48, 18-06-2001 09:32, 25-06-2002 08:57, 19-06-2002 09:33, 17-06-2003 09:16, 23-06-2003 09:22, 23-05-2001 09:34, 22-05-2001 10:37, 08-05-2002 09:01, 13-05-2002 09:07, 15-05-2003 08:45, 20-05-2003 08:47, 11-05-2004 10:30, 09-05-2005 10:00, 06-09-2005 11:00, 25-08-2009 14:30, 08-02-2011 12:10, 18-08-2010 12:10, 11-03-2010 12:10, 05-05-2010 13:40, 22-09-2010 11:10, 08-02-2011 12:20, 11-03-2010 14:05, 25-08-2009 14:20, 18-08-2010 12:20, 05-05-2010 12:35, 11-03-2010 11:55, 22-09-2010 11:20, 08-02-2011 13:45, 05-05-2010 13:15, 25-08-2009 12:00, 22-09-2010 13:05, 22-09-2010 12:55, 05-05-2010 12:45, 22-09-2010 11:25, 25-08-2009 14:05, 18-08-2010 12:35, 11-03-2010 12:40, 08-02-2011 13:55, 05-05-2010 13:20, 22-09-2010 13:15, 25-08-2009 12:12, 25-08-2009 11:55, 08-02-2011 12:30, 11-03-2010 14:40, 08-02-2011 13:40, 05-05-2010 12:20, 15-3-2011 12:45, 07-09-2010 11:15, 13-04-2010 12:40, 12-04-2011 11:05, 15-3-2011 11:20, 13-04-2010 11:55, 12-04-2011 10:30, 15-3-2011 12:00, 07-09-2010 11:50, 13-04-2010 13:00, 12-04-2011 11:10, 07-09-2010 10:50, 13-04-2010 11:05, 15-3-2011 12:10, 06-07-2010 13:00, 05-07-2011 11:15, 15-3-2011 11:25, 13-04-2010 11:15, 15-3-2011 12:35, 07-09-2010 11:45, 07-09-2010 11:20, 06-07-2010 12:25, 05-07-2011 10:49, 06-07-2010 11:15, 05-07-2011 10:35, 13-10-2010 12:00, 06-05-2009 11:33, 15-06-2010 12:38, 22-06-2011 09:45, 30-09-2008 10:35, 13-10-2010 09:10, 22-06-2009 15:41, 16-06-2010 12:16, 21-06-2011 09:34, 05-05-2009 09:54, 02-02-2011 09:42, 16-06-2010 11:34, 02-02-2011 11:30, 16-06-2010 09:20, 06-05-2009 16:10, 17-03-2010 12:30, 12-10-2010 10:07, 06-05-2009 14:14, 17-03-2010 15:00, 22-06-2011 11:10, 05-05-2009 12:31, 02-02-2011 12:50, 15-06-2010 15:19, 01-10-2008 10:35, 03-02-2011 09:42, 23-06-2009 15:01, 15-06-2010 09:50, 30-09-2008 16:10, 12-10-2010 14:20, 16-03-2010 14:32, 22-06-2009 12:25, 21-06-2011 10:16, 30-09-2008 13:30, 16-03-2010 10:45, 03-02-2011 12:15, 22-06-2009 10:20, 01-10-2008 15:55, 13-10-2010 09:49, 16-03-2010 16:55, 23-06-2009 11:13, 21-06-2011 11:53, 01-10-2008 12:41, 12-10-2010 12:12, 17-03-2010 10:25, 23-06-2009 12:36, 22-06-2011 09:25, 20-10-2005 11:26, 20-10-2005 11:35, 20-10-2005 11:42, 20-10-2005 11:51, 20-10-2005 12:20, 20-10-2005 12:27, 20-10-2005 12:34, 20-10-2005 12:45, 20-10-2005 14:18, 20-10-2005 14:24, 20-10-2005 14:30, 20-10-2005 14:38, 20-10-2005 15:06, 20-10-2005 15:13, 20-10-2005 15:20, 20-10-2005 15:27, 12-05-2005 11:22, 12-05-2005 11:34, 12-05-2005 11:43, 12-05-2005 11:51, 12-05-2005 15:27, 12-05-2005 13:32, 12-05-2005 13:40, 12-05-2005 13:49, 12-05-2005 13:56, 12-05-2005 15:32, 12-05-2005 15:40, 12-05-2005 14:40, 12-05-2005 14:46, 12-05-2005 14:52, 12-05-2005 14:59, 12-05-2005 15:38, 26-07-2005 10:38, 26-07-2005 10:50, 26-07-2005 11:02, 26-07-2005 11:09, 26-07-2005 11:39, 26-07-2005 11:46, 26-07-2005 11:54, 26-07-2005 12:02, 26-07-2005 13:22, 26-07-2005 13:28, 26-07-2005 13:39, 26-07-2005 13:48, 26-07-2005 14:07, 26-07-2005 14:13, 26-07-2005 14:21, 26-07-2005 14:30, 24-10-2006 10:22, 24-10-2006 10:28, 24-10-2006 10:36, 24-10-2006 10:40, 24-10-2006 10:44, 24-10-2006 10:47, 24-10-2006 10:53, 24-10-2006 11:00, 24-10-2006 11:55, 24-10-2006 12:00, 24-10-2006 12:04, 24-10-2006 12:07, 24-10-2006 12:10, 24-10-2006 12:14, 24-10-2006 12:20, 24-10-2006 12:23, 30-05-2006 14:31, 30-05-2006 14:41, 30-05-2006 14:50, 30-05-2006 15:02, 30-05-2006 15:13, 30-05-2006 15:22, 30-05-2006 15:31, 30-05-2006 15:41, 30-05-2006 16:44, 30-05-2006 16:51, 30-05-2006 16:58, 30-05-2006 17:07, 30-05-2006 17:15, 30-05-2006 17:24, 30-05-2006 17:30, 30-05-2006 17:36, 11-07-2006 10:40, 11-07-2006 10:46, 11-07-2006 10:53, 11-07-2006 10:59, 11-07-2006 11:04, 11-07-2006 11:09, 11-07-2006 11:14, 11-07-2006 11:20, 11-07-2006 14:05, 11-07-2006 14:11, 11-07-2006 14:16, 11-07-2006 14:22, 11-07-2006 14:27, 11-07-2006 14:32, 11-07-2006 14:37, 11-07-2006 14:42, 09-05-2001 10:30, 09-05-2001 11:00, 09-05-2001 09:30, 09-05-2001 13:30, 16-05-2000 10:00, 16-05-2000 15:00, 16-05-2000 11:30, 16-05-2000 10:30, 16-05-2000 14:30, 16-05-2000 12:00, 02-08-2000 10:00, 02-08-2000 11:30, 02-08-2000 14:00, 02-08-2000 09:30, 02-08-2000 11:00, 02-08-2000 13:30, 09-08-2001 10:00, 09-08-2001 12:30, 09-08-2001 14:30, 09-08-2001 12:00, 09-08-2001 15:00, 22-02-2000 10:20, 22-02-2000 09:10, 22-04-2004 8:09, 22-04-2004 8:41, 22-04-2004 9:15, 22-04-2004 9:44, 30-05-2000 09:10, 30-05-2000 10:33, 30-05-2000 09:11, 30-05-2000 09:12, 30-05-2000 09:36, 01-06-1999 10:00, 01-06-1999 09:20, 01-06-1999 08:55, 01-06-1999 08:40, 15-05-2001 09:26, 15-05-2001 09:57, 15-05-2001 10:49, 15-05-2001 11:24, 15-05-2001 12:27, 07-05-2002 09:01, 07-05-2002 09:49, 07-05-2002 10:29, 02-11-1999 10:32, 22-05-2007 10:00, 15-04-2008 11:00, 08-09-2009 12:34, 08-09-2009 13:21, 08-09-2009 15:27, 22-04-2010 12:02, 22-04-2010 12:35, 22-04-2010 10:29, 22-04-2010 10:53, 04-05-2010 13:13, 04-05-2010 12:50, 04-05-2010 10:39, 04-05-2010 11:06, 04-05-2010 11:53, 18-05-2010 10:45, 18-05-2010 12:44, 18-05-2010 11:33, 18-05-2010 12:25, 02-06-2010 11:17, 02-06-2010 10:45, 02-06-2010 12:40, 02-06-2010 13:35, 02-06-2010 11:32, 15-06-2010 12:06, 15-06-2010 10:55, 15-06-2010 13:16, 15-06-2010 11:17, 15-06-2010 16:14, 11-05-2011 11:37, 11-05-2011 10:39, 11-05-2011 13:31, 11-05-2011 14:30, 11-05-2011 12:45, 04-05-2011 11:20, 04-05-2011 12:53, 04-05-2011 13:51, 04-05-2011 15:06, 04-05-2011 16:07, 18-03-2007 13:00, 18-03-2007 13:10, 18-03-2007 13:20, 18-03-2007 17:00, 18-03-2007 17:20, 18-03-2007 17:30, 17-03-2008 13:49, 19-03-2008 09:30, 19-03-2008 09:40, 19-03-2008 10:10, 19-03-2008 10:30, 19-03-2008 15:40, 19-03-2008 15:50, 19-03-2008 13:00, 19-03-2008 13:10, 19-03-2008 13:20, 08-04-2008 15:35, 10-04-2008 14:30, 10-04-2008 15:10, 10-04-2008 11:10, 10-04-2008 11:30, 10-04-2008 11:20, 10-04-2008 11:40, 10-04-2008 14:00, 10-04-2008 15:00, 10-04-2008 14:20, 10-04-2008 15:40, 10-04-2008 15:50, 10-04-2008 15:30, 21-05-2008 09:10, 21-05-2008 09:30, 21-05-2008 10:40, 21-05-2008 10:50, 21-05-2008 12:40, 21-05-2008 12:50, 21-05-2008 13:00, 21-05-2008 13:10, 21-05-2008 14:00, 21-05-2008 14:10, 30-05-2008 08:30, 30-05-2008 08:40, 30-05-2008 09:00, 30-05-2008 09:20, 30-05-2008 13:00, 30-05-2008 13:10, 30-05-2008 13:20, 30-05-2008 10:50, 30-05-2008 11:30, 30-05-2008 12:00, 30-05-2008 09:50, 30-05-2008 14:00, 30-05-2008 14:10, 30-05-2008 14:20, 30-05-2008 14:30, 06-06-2008 08:30, 06-06-2008 08:50, 06-06-2008 09:10, 06-06-2008 09:20, 06-06-2008 11:30, 06-06-2008 11:50, 06-06-2008 09:30, 06-06-2008 12:20, 06-06-2008 08:00, 06-06-2008 08:20, 06-06-2008 10:40, 06-06-2008 10:30, 06-06-2008 10:20, 03-07-2008 14:30, 05-07-2008 09:40, 05-07-2008 09:50, 05-07-2008 10:00, 05-07-2008 11:00, 05-07-2008 10:40, 05-07-2008 10:50, 05-07-2008 11:10, 05-07-2008 08:50, 05-07-2008 09:00, 05-07-2008 12:50, 05-07-2008 13:00, 05-07-2008 13:10, 05-07-2008 11:40, 05-07-2008 11:50, 27-03-2007 11:30, 29-03-2007 11:10, 29-03-2007 10:50, 29-03-2007 10:40, 29-03-2007 08:40, 29-03-2007 08:10, 29-03-2007 08:30, 29-03-2007 12:30, 29-03-2007 12:00, 11-04-2007 09:00, 12-04-2007 09:00, 12-04-2007 09:10, 12-04-2007 09:20, 12-04-2007 10:00, 12-04-2007 10:10, 12-04-2007 10:30, 12-04-2007 10:40, 12-04-2007 15:40, 12-04-2007 15:50, 24-05-2007 12:20, 24-05-2007 12:30, 24-05-2007 12:50, 24-05-2007 13:10, 24-05-2007 14:30, 24-05-2007 14:50, 24-05-2007 18:50, 24-05-2007 09:00, 24-05-2007 09:30, 24-05-2007 10:00, 24-05-2007 10:30, 24-05-2007 17:50, 22-05-2007 14:15, 24-05-2007 12:10, 24-05-2007 12:40, 24-05-2007 13:00, 24-05-2007 14:10, 24-05-2007 09:40, 24-05-2007 10:10, 24-05-2007 17:40, 26-05-2007 13:05, 27-05-2007 10:20, 27-05-2007 10:40, 27-05-2007 10:50, 27-05-2007 11:10, 27-05-2007 11:20, 27-05-2007 11:50, 27-05-2007 12:00, 09-06-2007 08:00, 09-06-2007 08:10, 09-06-2007 11:10, 09-06-2007 11:30, 09-06-2007 12:00, 09-06-2007 09:30, 09-06-2007 09:50, 09-06-2007 10:20, 12-07-2007 14:40, 14-07-2007 14:20, 14-07-2007 15:40, 14-07-2007 16:20, 14-07-2007 16:30, 14-07-2007 09:30, 14-07-2007 09:40, 14-07-2007 09:50, 14-07-2007 13:30, 14-07-2007 13:40, 14-07-2007 13:50, 14-07-2007 15:50, 14-07-2007 16:10, 14-07-2007 11:30, 14-07-2007 11:40, 22-02-2013 16:52, 14-07-2011 10:28, 14-07-2011 10:57, 14-07-2011 11:20, 12-03-2012 11:33, 12-03-2012 12:25, 12-03-2012 11:14, 04-07-2012 10:34, 04-07-2012 10:08, 04-07-2012 09:53, 14-08-2012 10:28, 14-08-2012 10:11, 14-08-2012 09:41, 14-08-2012 13:05, 14-11-2012 11:59, 14-11-2012 11:41, 14-11-2012 11:25, 06-05-2013 10:11, 06-05-2013 10:31, 06-05-2013 12:37, 20-09-2011 10:18, 20-09-2011 10:08, 20-09-2011 11:02, 08-11-2011 12:41, 08-11-2011 11:44, 10-05-2012 08:40, 10-05-2012 09:30, 24-05-2012 09:13, 24-05-2012 09:56, 24-05-2012 08:37, 19-11-2012 12:55, 19-11-2012 11:31, 19-11-2012 12:15, 11-03-2014 10:21, 11-03-2014 10:57, 11-03-2014 11:31, 12-06-2013 09:47, 12-06-2013 10:54, 12-06-2013 10:20, 10-07-2013 10:58, 10-07-2013 10:48, 10-07-2013 09:26, 28-08-2012 10:36, 27-08-2012 17:16, 28-08-2012 06:07, 05-07-2013 12:16, 04-07-2013 17:12, 05-07-2013 06:40, , 23-03-2011 11:00, 05-04-2011 12:00, 28-03-2011 11:00, 13-03-2012 09:33, 05-08-2009 09:30, 16-04-2008 07:30, 17-03-1994 08:45, 16-03-1994 08:30, 24-09-2009 8:00, 27-03-2009 8:00, 17-03-2010 8:00, 07-04-2011 8:30, 10-10-2011 9:00, 19-05-1992 09:30, 12-06-1990 09:30, 26-06-1990 09:30, 11-06-1991 09:30, 16-04-1991 09:30, 14-05-1991 09:30, 01-04-2014 13:34, 01-04-2014 13:43, 01-04-2014 14:24, 01-04-2014 13:47, 01-04-2014 14:40, 01-04-2014 13:59, 01-04-2014 13:56, 01-04-2014 13:53, 01-04-2014 14:34, 01-04-2014 13:50, 01-04-2014 15:04, 01-04-2014 15:02, 01-04-2014 13:39, 01-04-2014 14:57, 01-04-2014 14:18, 01-04-2014 13:46, 01-04-2014 13:31, 01-04-2014 14:54, 01-05-2014 08:40, 01-05-2014 10:19, 01-05-2014 10:59, 01-05-2014 10:28, 01-05-2014 10:16, 01-05-2014 09:41, 01-05-2014 10:30, 01-05-2014 10:15, 01-05-2014 10:12, 01-05-2014 10:10, 01-05-2014 10:07, 01-05-2014 10:00, 01-05-2014 10:31, 01-05-2014 10:17, 03-04-2014 11:34, 03-04-2014 14:03, 03-04-2014 10:15, 03-04-2014 12:47, 03-04-2014 15:34, 03-04-2014 11:32, 03-04-2014 10:12, 03-04-2014 15:32, 03-04-2014 11:30, 03-04-2014 10:20, 03-04-2014 12:45, 03-04-2014 10:10, 03-04-2014 15:30, 03-04-2014 14:00, 03-04-2014 11:23, 03-04-2014 12:44, 03-04-2014 10:09, 03-04-2014 13:58, 03-04-2014 11:21, 03-04-2014 10:24, 03-04-2014 15:38, 03-04-2014 14:10, 03-04-2014 11:37, 03-04-2014 12:52, 03-04-2014 10:26, 03-04-2014 15:40, 03-04-2014 14:11, 03-04-2014 11:39, 03-04-2014 12:54, 03-04-2014 15:42, 03-04-2014 14:13, 03-04-2014 15:46, 03-04-2014 11:40, 03-04-2014 10:28, 03-04-2014 11:35, 03-04-2014 12:56, 03-04-2014 15:47, 03-04-2014 14:15, 03-04-2014 12:58, 03-04-2014 15:48, 03-04-2014 11:42, 03-04-2014 14:17, 03-04-2014 10:30, 03-04-2014 14:05, 03-04-2014 12:59, 03-04-2014 10:18, 03-04-2014 12:48, 03-04-2014 15:36, 30-04-2014 09:05, 30-04-2014 11:32, 30-04-2014 11:40, 30-04-2014 11:37, 30-04-2014 13:24, 30-04-2014 13:33, 30-04-2014 13:31, 30-04-2014 13:29, 30-04-2014 13:27, 30-04-2014 13:35, 30-04-2014 13:47, 30-04-2014 13:45, 30-04-2014 11:30, 30-04-2014 13:41, 30-04-2014 13:39, 30-04-2014 14:41, 30-04-2014 14:37, 30-04-2014 14:33, 30-04-2014 14:31, 30-04-2014 14:51, 30-04-2014 14:50, 30-04-2014 14:48, 30-04-2014 14:45, 30-04-2014 11:29, 30-04-2014 14:44, 30-04-2014 15:56, 30-04-2014 15:54, 30-04-2014 15:50, 30-04-2014 15:48, 30-04-2014 16:05, 30-04-2014 16:03, 30-04-2014 16:00, 30-04-2014 15:58, 30-04-2014 17:05, 30-04-2014 11:26, 30-04-2014 17:02, 30-04-2014 17:00, 30-04-2014 16:58, 30-04-2014 16:56, 30-04-2014 17:16, 30-04-2014 17:14, 30-04-2014 17:12, 30-04-2014 17:10, 30-04-2014 17:09, 30-04-2014 11:22, 30-04-2014 11:47, 30-04-2014 11:45, 30-04-2014 11:44, 30-04-2014 11:42, 30-04-1997 10:30, 05-12-1996 10:30, 11-08-2021 16:15, 11-08-2021 16:23, 11-08-2021 16:39, 11-08-2021 16:47, 11-08-2021 16:55, 11-08-2021 17:11, 11-08-2021 17:19, 20-08-2021 10:51, 20-08-2021 10:59, 20-08-2021 11:15, 20-08-2021 11:23, 20-08-2021 11:31, 20-08-2021 11:47, 20-08-2021 11:55, 05-01-2022 13:26, 05-01-2022 14:38, 05-01-2022 14:54, 05-01-2022 13:34, 05-01-2022 13:50, 05-01-2022 13:58, 05-01-2022 14:22, 05-01-2022 14:30, 09-11-2021 09:38, 09-11-2021 10:50, 09-11-2021 11:06, 09-11-2021 09:46, 09-11-2021 10:02, 09-11-2021 10:10, 09-11-2021 10:18, 09-11-2021 10:34, 09-11-2021 10:42, 11/08/2021 16:20, 20/08/2021 10:58, 09/11/2021 10:15, 5/01/2022 14:23, 11/18/2020 13:40, 11/18/2020 14:52, 11/18/2020 15:08, 11/18/2020 13:48, 11/18/2020 14:04, 11/18/2020 14:12, 11/18/2020 14:20, 11/18/2020 14:36, 11/18/2020 14:44, 11/25/2020 13:48, 11/25/2020 15:00, 11/25/2020 15:15, 11/25/2020 13:56, 11/25/2020 14:12, 11/25/2020 14:20, 11/25/2020 14:28, 11/25/2020 14:44, 11/25/2020 14:52, 12/2/2020 13:25, 12/2/2020 14:37, 12/2/2020 14:53, 12/2/2020 13:33, 12/2/2020 13:49, 12/2/2020 13:57, 12/2/2020 14:05, 12/2/2020 14:21, 12/2/2020 14:29, 12/9/2020 13:57, 09-12-2020 15:09, 09-12-2020 15:25, 12/9/2020 14:05, 12/9/2020 14:21, 09-12-2020 14:29, 09-12-2020 14:37, 09-12-2020 14:53, 09-12-2020 15:01, 27-05-2019 10:22, 04-06-2019 09:38, 17-06-2019 09:28, 26-06-2019 09:13, 15-05-2018 13:18, 15-05-2018 14:40, 15-05-2018 14:46, 15-05-2018 13:26, 15-05-2018 13:42, 15-05-2018 13:50, 15-05-2018 13:58, 15-05-2018 14:14, 15-05-2018 14:22, 22-05-2018 13:25, 22-05-2018 14:37, 22-05-2018 14:53, 22-05-2018 13:33, 22-05-2018 13:49, 22-05-2018 13:57, 22-05-2018 14:05, 22-05-2018 14:21, 22-05-2018 14:29, 29-05-2018 13:00, 29-05-2018 14:12, 29-05-2018 14:28, 29-05-2018 13:08, 29-05-2018 13:24, 29-05-2018 13:32, 29-05-2018 13:40, 29-05-2018 13:56, 29-05-2018 14:04, 22-06-2018 13:41, 22-06-2018 14:53, 22-06-2018 15:09, 22-06-2018 13:49, 22-06-2018 14:05, 22-06-2018 14:13, 22-06-2018 14:21, 22-06-2018 14:37, 22-06-2018 14:45, 29-06-2018 14:08, 29-06-2018 15:20, 29-06-2018 15:36, 29-06-2018 14:16, 29-06-2018 14:32, 29-06-2018 14:40, 29-06-2018 14:48, 29-06-2018 15:04, 29-06-2018 15:12, 05-07-2018 13:07, 05-07-2018 14:19, 05-07-2018 14:35, 05-07-2018 13:15, 05-07-2018 13:31, 05-07-2018 13:39, 05-07-2018 13:47, 05-07-2018 14:03, 05-07-2018 14:11, 15-08-2018 13:53, 15-08-2018 15:05, 15-08-2018 15:21, 15-08-2018 14:01, 15-08-2018 14:17, 15-08-2018 14:25, 15-08-2018 14:33, 15-08-2018 14:49, 15-08-2018 14:57, 22-08-2018 13:13, 22-08-2018 14:25, 22-08-2018 14:41, 22-08-2018 13:21, 22-08-2018 15:21, 22-08-2018 13:45, 22-08-2018 13:53, 22-08-2018 14:09, 22-08-2018 14:17, 03-10-2018 14:16, 03-10-2018 15:28, 03-10-2018 15:44, 03-10-2018 14:24, 03-10-2018 14:40, 03-10-2018 14:48, 03-10-2018 14:56, 03-10-2018 15:12, 03-10-2018 15:20, 10-10-2018 13:31, 10-10-2018 14:43, 10-10-2018 14:59, 10-10-2018 13:39, 10-10-2018 13:55, 10-10-2018 14:03, 10-10-2018 14:11, 10-10-2018 14:27, 10-10-2018 14:35, 29-08-2018 14:43, 29-08-2018 15:55, 29-08-2018 16:11, 29-08-2018 14:51, 29-08-2018 15:07, 29-08-2018 15:15, 29-08-2018 15:23, 29-08-2018 15:39, 29-08-2018 15:47, 05-09-2018 13:44, 05-09-2018 14:56, 05-09-2018 15:12, 05-09-2018 13:52, 05-09-2018 14:08, 05-09-2018 14:16, 05-09-2018 14:24, 05-09-2018 14:40, 05-09-2018 14:48, 12-09-2018 13:41, 12-09-2018 14:53, 12-09-2018 15:09, 12-09-2018 13:49, 12-09-2018 14:05, 12-09-2018 14:13, 12-09-2018 14:21, 12-09-2018 14:37, 12-09-2018 14:45, 25-02-2019 15:23, 25-02-2019 17:11, 25-02-2019 17:35, 25-02-2019 15:35, 25-02-2019 15:59, 25-02-2019 16:11, 25-02-2019 16:23, 25-02-2019 16:47, 25-02-2019 16:59, 07-03-2019 12:12, 07-03-2019 12:24, 07-03-2019 12:48, 22-08-2019 10:58, 22-08-2019 12:10, 22-08-2019 12:26, 22-08-2019 11:06, 22-08-2019 11:22, 22-08-2019 11:30, 22-08-2019 11:38, 22-08-2019 11:54, 22-08-2019 12:02, 29-08-2019 11:06, 29-08-2019 12:18, 29-08-2019 12:34, 29-08-2019 11:14, 29-08-2019 11:30, 29-08-2019 11:38, 29-08-2019 11:46, 29-08-2019 12:02, 29-08-2019 12:10, 6/3/2020 14:41, 6/3/2020 15:53, 6/3/2020 16:09, 6/3/2020 14:49, 6/3/2020 15:05, 6/3/2020 15:13, 6/3/2020 15:21, 6/3/2020 15:37, 6/3/2020 15:45, 6/9/2020 13:45, 6/9/2020 14:57, 6/9/2020 15:13, 6/9/2020 15:53, 6/9/2020 14:09, 6/9/2020 14:17, 6/9/2020 14:25, 6/9/2020 14:41, 6/9/2020 14:49, 3/16/2021 16:24, 3/16/2021 17:36, 3/16/2021 17:52, 3/16/2021 16:31, 3/16/2021 16:56, 3/16/2021 17:04, 3/16/2021 17:20, 3/16/2021 17:28, 14-08-2019 06:00, 21-05-2019 06:00, 23-04-2018 11:00, 16-04-2019 11:00, 28-05-2020 11:00, 19-06-2013 09:10, 19-06-2013 15:05, 18-07-2017 10:22, 18-07-2017 10:44, 18-07-2017 10:49, 18-07-2017 10:53, 28-07-2016 08:07, 28-07-2016 09:20, 28-07-2016 09:28, 1665501840, 1665506160, 1665507120, 1665507600, 1665508560, 1665509040, 1665509520, 1665502800, 1665503760, 1665504240, 1665504720, 1665505680, 1668595800, 1668600120, 1668601080, 1668591720, 1668596760, 1668597240, 1668597720, 1668598680, 1668599160, 1668599640, 1669296600, 1669291260, 1669290120, 1669288680, 1669292760, 1669293240, 1669292220, 1669293720, 1669292700, 1669294200, 1669293180, 1669294680, 1669293660, 1669295640, 1669294620, 1681310700, 1681315020, 1681315980, 1681316460, 1681318380, 1681318860, 1681311180, 1681311660, 1681314060, 1681914000, 1681918320, 1681918800, 1681919760, 1681920240, 1681921680, 1681922160, 1681914480, 1681915440, 1681916400, 1681916880, 1681917360, 1683726660, 1683730980, 1683731460, 1683732420, 1683732900, 1683733380, 1683727140, 1683728100, 1683729540, 1684330020, 1684334340, 1684334820, 1684335300, 1684335780, 1684336260, 1684336740, 1684337700, 1684338180, 1684330500, 1684330980, 1684331460, 1684332420, 1684332900, 1684333380, 1684936260, 1684940580, 1684941060, 1684941540, 1684942020, 1684942500, 1684942980, 1684943940, 1684944420, 1684936740, 1684937220, 1684937700, 1684938660, 1684939140, 1684939620, 01-05-2018 13:08, 01-05-2018 13:16, 01-05-2018 13:32, 01-05-2018 13:40, 01-05-2018 13:48, 01-05-2018 14:04, 01-05-2018 14:12, 01-05-2018 14:20, 01-05-2018 14:36, 08-05-2018 11:08, 08-05-2018 11:16, 08-05-2018 11:32, 08-05-2018 11:40, 08-05-2018 11:48, 08-05-2018 12:04, 08-05-2018 12:12, 08-05-2018 12:20, 08-05-2018 12:36, 15-05-2019 16:48, 15-05-2019 18:00, 15-05-2019 18:16, 15-05-2019 16:56, 15-05-2019 17:12, 15-05-2019 17:20, 15-05-2019 17:28, 15-05-2019 17:44, 15-05-2019 17:52, 17-04-2020 13:04, 17-04-2020 14:16, 17-04-2020 14:32, 17-04-2020 13:12, 17-04-2020 13:28, 17-04-2020 13:36, 17-04-2020 13:44, 17-04-2020 14:00, 17-04-2020 14:08, 23-04-2020 12:40, 23-04-2020 13:52, 23-04-2020 14:08, 23-04-2020 12:48, 23-04-2020 13:04, 23-04-2020 13:12, 23-04-2020 13:20, 23-04-2020 13:36, 23-04-2020 13:44, 1654692960, 1654697280, 1654698240, 1654693440, 1654694400, 1654694880, 1654695360, 1654696320, 1654696800, 1655298300, 1655296380, 1655297340, 1655292600, 1655293560, 1655294040, 1655295000, 1655295480, 1655295900, 1655899080, 1655903400, 1655904360, 1655899560, 1655900520, 1655901000, 1655901960, 1655902440, 1655902920, 1656511020, 1656509100, 1656510060, 1656511500, 1656512460, 1656512940, 1656513420, 1656508140, 1656508620, 22-03-2017 10:06, 22-03-2017 11:37, 22-03-2017 12:03, 19-04-2017 12:21, 19-04-2017 11:11, 19-04-2017 10:25, 02-08-2017 10:40, 02-08-2017 14:29, 02-08-2017 10:26, 21-03-2018 11:45, 21-03-2018 14:15, 21-03-2018 15:30, 19-09-2018 12:33, 19-09-2018 11:29, 19-09-2018 10:29, 19-02-2019 15:45, 19-02-2019 11:15, 19-02-2019 16:15, 12-03-2019 11:15, 12-03-2019 13:10, 1681315500, 1681316940, 1681317420, 1681312140, 1681313100, 1681313580, 1681919280, 1681920720, 1681914960, 1683731940, 1683734340, 1683734820, 1683727620, 1683729060, 1683730020, 1553072700, 1553073300, 1553073900, 1553073000, 1553091420, 1553085300, 1553090400, 1553084280, 1553096100, 1553094300, 1553093160, 1553093640, 1553104560, 1553103060, 1553104080, 1553102640, 1553101020, 1553099760, 1553100660, 1553099160, 1558601100, 1558602000, 1558600800, 1558600500, 1558603980, 1558602300, 1558603560, 1558603080, 1558606680, 1558606200, 1558605360, 1558605720, 1558609800, 1558611000, 1558609560, 1558609140, 1558616400, 1558613700, 1558612740, 1558612200, 1584349200, 1584349980, 1584349800, 1584350100, 1584355980, 1584359100, 1584364500, 1584365700, 1584366300, 1584366000, 1584368280, 1584367380, 1584351900, 1584352200, 1584353400, 1584353700, 1584370200, 1584370500, 1584371400, 1584371760, 1589958600, 1589958720, 1589958840, 1589958960, 1589966100, 1589967600, 1589966640, 1589967000, 1589968320, 1589969400, 1589968680, 1589969100, 1589959440, 1589960280, 1589960100, 1589961000, 1589962380, 1589963820, 1589962800, 1589963100, 1554741600, 1554741780, 1554741240, 1554741060, 1554737880, 1554738300, 1554738780, 1554739080, 1554743820, 1554743520, 1554744240, 1554744480, 1554718320, 1554718860, 1554719580, 1554720120, 1554730920, 1554725520, 1554724680, 1554725040, 1554741420, 1554741180, 1554741900, 1554741960, 1554745800, 1554746160, 1554746640, 1554746400, 1554722280, 1554721980, 1554722460, 1554723780, 1554732960, 1554732720, 1554734580, 1554733080, 1557831600, 1557832200, 1557831900, 1557832500, 1557835200, 1557835800, 1557836700, 1557837300, 1557839760, 1557840780, 1557841500, 1557842340, 1557849720, 1557849120, 1557850800, 1557851280, 1557848100, 1557845460, 1557846060, 1557847380, 1557826320, 1557827040, 1557827460, 1557828060, 1557830340, 1557830700, 1557831720, 1557832680, 1557853200, 1557852360, 1557853860, 1557854400, 1557843000, 1557843720, 1557844260, 1557845040, 1584607080, 1584607500, 1584606600, 1584607920, 1584622680, 1584622800, 1584624120, 1584623700, 1584626700, 1584626400, 1584625560, 1584625980, 1584613620, 1584613320, 1584614220, 1584614580, 1584616560, 1584616020, 1584615240, 1584615600, 1584620400, 1584619560, 1584618780, 1584619020, 1584629220, 1584629400, 1584628560, 1584628800, 1584612120, 1584612900, 1584611700, 1584612000, 1584609420, 1584609060, 1584608580, 1584608100, 1587459000, 1587459180, 1587458700, 1587459600, 1587480120, 1587479820, 1587481500, 1587481200, 1587483120, 1587483480, 1587482160, 1587481920, 1587466440, 1587465600, 1587466740, 1587467100, 1587469200, 1587468900, 1587467940, 1587468240, 1587479100, 1587479280, 1587477720, 1587478140, 1587461760, 1587461880, 1587460200, 1587460860, 1587464700, 1587465000, 1587464040, 1587463620, 1587474720, 1587474960, 1587472140, 1587473580, 19-02-2024 15:41, 19-02-2024 17:09, 19-02-2024 17:17, 19-02-2024 17:25, 19-02-2024 17:33, 19-02-2024 17:49, 19-02-2024 15:25, 19-02-2024 18:05, 19-02-2024 15:49, 19-02-2024 15:57, 19-02-2024 16:05, 19-02-2024 16:21, 19-02-2024 16:29, 19-02-2024 16:37, 19-02-2024 17:01, 06-03-2024 16:25, 06-03-2024 17:53, 06-03-2024 18:01, 06-03-2024 18:09, 06-03-2024 18:17, 06-03-2024 18:33, 06-03-2024 18:41, 06-03-2024 18:49, 06-03-2024 16:33, 06-03-2024 16:41, 06-03-2024 16:49, 06-03-2024 17:05, 06-03-2024 17:13, 06-03-2024 17:21, 06-03-2024 17:37, 06-03-2024 17:45, 13-03-2024 16:51, 13-03-2024 18:19, 13-03-2024 18:27, 13-03-2024 18:35, 13-03-2024 18:43, 13-03-2024 18:59, 13-03-2024 19:07, 13-03-2024 19:15, 13-03-2024 16:59, 13-03-2024 17:07, 13-03-2024 17:15, 13-03-2024 17:31, 13-03-2024 17:39, 13-03-2024 17:47, 13-03-2024 18:03, 13-03-2024 18:11, 19-03-2024 14:51, 19-03-2024 16:19, 19-03-2024 16:27, 19-03-2024 16:35, 19-03-2024 16:43, 19-03-2024 17:07, 19-03-2024 17:15, 19-03-2024 14:59, 19-03-2024 15:15, 19-03-2024 15:31, 19-03-2024 15:39, 19-03-2024 15:47, 19-03-2024 16:03, 19-03-2024 16:11, 03-04-2024 15:51, 03-04-2024 17:18, 03-04-2024 17:26, 03-04-2024 17:34, 03-04-2024 17:42, 03-04-2024 17:58, 03-04-2024 18:06, 03-04-2024 15:59, 03-04-2024 16:07, 03-04-2024 16:15, 03-04-2024 16:31, 03-04-2024 16:39, 03-04-2024 16:47, 03-04-2024 17:02, 03-04-2024 17:10, 10-04-2024 12:31, 10-04-2024 13:59, 10-04-2024 14:07, 10-04-2024 14:15, 10-04-2024 14:23, 10-04-2024 14:47, 10-04-2024 14:55, 10-04-2024 12:39, 10-04-2024 12:47, 10-04-2024 12:55, 10-04-2024 13:11, 10-04-2024 13:19, 10-04-2024 13:27, 10-04-2024 13:43, 10-04-2024 13:51, 17-04-2024 13:29, 17-04-2024 14:57, 17-04-2024 15:05, 17-04-2024 15:13, 17-04-2024 15:21, 17-04-2024 15:45, 17-04-2024 15:53, 17-04-2024 13:37, 17-04-2024 13:45, 17-04-2024 13:53, 17-04-2024 14:09, 17-04-2024 14:17, 17-04-2024 14:25, 17-04-2024 14:41, 17-04-2024 14:49, 24-04-2024 15:30, 24-04-2024 16:58, 24-04-2024 17:06, 24-04-2024 17:14, 24-04-2024 17:22, 24-04-2024 17:38, 24-04-2024 17:46, 24-04-2024 17:54, 24-04-2024 15:38, 24-04-2024 15:46, 24-04-2024 15:54, 24-04-2024 16:10, 24-04-2024 16:18, 24-04-2024 16:26, 24-04-2024 16:42, 24-04-2024 16:50, 01-05-2024 16:24, 01-05-2024 17:52, 01-05-2024 18:00, 01-05-2024 18:08, 01-05-2024 18:16, 01-05-2024 18:32, 01-05-2024 18:40, 01-05-2024 18:48, 01-05-2024 16:32, 01-05-2024 16:40, 01-05-2024 16:48, 01-05-2024 17:04, 01-05-2024 17:12, 01-05-2024 17:20, 01-05-2024 17:36, 08-05-2024 15:31, 08-05-2024 16:59, 08-05-2024 17:07, 08-05-2024 17:15, 08-05-2024 17:23, 08-05-2024 17:39, 08-05-2024 17:47, 08-05-2024 17:55, 08-05-2024 15:39, 08-05-2024 15:47, 08-05-2024 15:55, 08-05-2024 16:11, 08-05-2024 16:19, 08-05-2024 16:27, 08-05-2024 16:43, 08-05-2024 16:51, 15-05-2024 15:52, 15-05-2024 17:20, 15-05-2024 17:28, 15-05-2024 17:36, 15-05-2024 17:44, 15-05-2024 18:00, 15-05-2024 18:08, 15-05-2024 16:00, 15-05-2024 16:08, 15-05-2024 16:16, 15-05-2024 16:32, 15-05-2024 16:40, 15-05-2024 16:48, 15-05-2024 17:04, 15-05-2024 17:12, 23-05-2024 13:38, 23-05-2024 15:06, 23-05-2024 15:14, 23-05-2024 15:22, 23-05-2024 15:30, 23-05-2024 15:46, 23-05-2024 15:54, 23-05-2024 16:02, 23-05-2024 13:46, 23-05-2024 13:54, 23-05-2024 14:02, 23-05-2024 14:18, 23-05-2024 14:26, 23-05-2024 14:34, 23-05-2024 14:50, 23-05-2024 14:58, 03-06-2024 10:50, 03-06-2024 12:18, 03-06-2024 12:26, 03-06-2024 12:34, 03-06-2024 12:42, 03-06-2024 12:58, 03-06-2024 13:06, 03-06-2024 13:14, 03-06-2024 10:58, 03-06-2024 11:06, 03-06-2024 11:14, 03-06-2024 11:30, 03-06-2024 11:38, 03-06-2024 11:46, 03-06-2024 12:02, 03-06-2024 12:10, 25-06-2024 13:44, 25-06-2024 15:12, 25-06-2024 15:20, 25-06-2024 15:28, 25-06-2024 15:36, 25-06-2024 15:52, 25-06-2024 16:00, 25-06-2024 16:08, 25-06-2024 13:52, 25-06-2024 14:00, 25-06-2024 14:08, 25-06-2024 14:24, 25-06-2024 14:32, 25-06-2024 14:40, 25-06-2024 14:56, 25-06-2024 15:04, 01-07-2024 15:16, 01-07-2024 16:44, 01-07-2024 16:52, 01-07-2024 17:00, 01-07-2024 17:08, 01-07-2024 17:24, 01-07-2024 17:32, 01-07-2024 17:40, 01-07-2024 15:24, 01-07-2024 15:32, 01-07-2024 15:40, 01-07-2024 15:56, 01-07-2024 16:04, 01-07-2024 16:12, 01-07-2024 16:28, 01-07-2024 16:36, 18-09-2024 12:30, 18-09-2024 13:51, 18-09-2024 13:59, 18-09-2024 14:15, 18-09-2024 14:23, 18-09-2024 14:31, 18-09-2024 14:47, 18-09-2024 15:03, 18-09-2024 12:47, 18-09-2024 12:55, 18-09-2024 13:03, 18-09-2024 13:19, 18-09-2024 13:27, 1743609049.319, 1743609528.088, 1743610008.365, 1743610487.766, 1743611446.869, 1743612406.283, 1743613366.448, 1743605210.338, 1743605690.118, 1743606170.068, 1743607129.959, 1745938697.299, 1745939177.092, 1745939656.894, 1745940137.94, 1745941095.608, 1745942056.016, 1745943015.904, 1745934859.367, 1745935338.992, 1745935819.075, 1745936777.934, 2022-04-05 14:17:02 UTC, 2022-04-05 15:28:59 UTC, 2022-04-05 15:44:59 UTC, 2022-04-05 14:25:01 UTC, 2022-04-05 14:41:00 UTC, 2022-04-05 14:49:00 UTC, 2022-04-05 15:05:01 UTC, 2022-04-05 15:13:00 UTC, 2022-04-05 15:20:59 UTC, 2022-04-19 15.20.47 UTC, 2022-04-19 16.32.44 UTC, 2022-04-19 16.48.44 UTC, 2022-04-19 15.28.46 UTC, 2022-04-19 15.44.46 UTC, 2022-04-19 15.52.46 UTC, 2022-04-19 16.08.45 UTC, 2022-04-19 16.16.44 UTC, 2022-04-19 16.24.45 UTC, 2022-09-14 14:48:07 UTC, 2022-09-14 16:00:06 UTC, 2022-09-14 14:56:08 UTC, 2022-09-14 15:12:08 UTC, 2022-09-14 15:20:07 UTC, 2022-09-14 15:28:07 UTC, 2022-09-14 15:44:06 UTC, 2022-09-14 15:52:06 UTC, 2022-04-12 15:08:06 UTC, 2022-04-12 16:20:05 UTC, 2022-04-12 16:36:04 UTC, 2022-04-12 15:16:07 UTC, 2022-04-12 15:32:07 UTC, 2022-04-12 15:40:06 UTC, 2022-04-12 15:56:06 UTC, 2022-04-12 16:04:06 UTC, 2022-04-12 16:12:06 UTC, 2022-04-26 16:05:31 UTC, 2022-04-26 17:17:28 UTC, 2022-04-26 17:33:28 UTC, 2022-04-26 16:13:30 UTC, 2022-04-26 16:29:30 UTC, 2022-04-26 16:37:29 UTC, 2022-04-26 16:53:28 UTC, 2022-04-26 17:01:29 UTC, 2022-04-26 17:09:28 UTC, 2022-10-19 15:38:04 UTC, 2022-10-19 15:54:04 UTC, 2022-10-19 16:02:04 UTC, 2022-10-19 16:10:03 UTC, 2022-10-19 16:26:03 UTC, 2022-10-19 14:58:06 UTC, 2022-10-19 15:06:06 UTC, 2022-10-19 15:22:05 UTC, 2022-10-19 15:30:05 UTC, 2022-09-28 14:43:39 UTC, 2022-09-28 15:55:37 UTC, 2022-09-28 14:59:38 UTC, 2022-09-28 15:23:38 UTC, 2022-09-28 15:39:37 UTC, 2022-09-28 15:47:37 UTC, 2022-09-21 13:39:46 UTC, 2022-09-21 14:51:44 UTC, 2022-09-21 15:07:44 UTC, 2022-09-21 13:47:46 UTC, 2022-09-21 14:03:46 UTC, 2022-09-21 14:11:45 UTC, 2022-09-21 14:19:46 UTC, 2022-09-21 14:35:45 UTC, 2022-09-21 14:43:45 UTC, 2022-10-25 13:23:52 UTC, 2022-10-25 13:39:52 UTC, 2022-10-25 13:47:51 UTC, 2022-10-25 13:55:51 UTC, 2022-10-25 14:11:51 UTC, 2022-10-25 12:43:53 UTC, 2022-10-25 12:51:54 UTC, 2022-10-25 13:07:53 UTC, 2022-10-25 13:15:52 UTC, 13-05-2025 10:00, 29-07-2025 10:15, 2026/05/19 10:36:00, 11-08-2026 13:34, 11-08-2026 13:41, 11-08-2026 13:42, 11-08-2026 13:43, 11-08-2026 13:44, 11-08-2026 13:45, 11-08-2026 13:46, 11-08-2026 13:47, 11-08-2026 13:48, 11-08-2026 13:49, 11-08-2026 13:35, 11-08-2026 13:36, 11-08-2026 13:37, 11-08-2026 13:38, 11-08-2026 13:39, 11-08-2026 13:40 
## 
##  app.end 
## Class: POSIXct 
##  Class: POSIXt 
## Length: 3268 
## Missing values: 2354 
## Unique values: NA, 2021-08-11 16:15:00, 2021-08-11 16:23:00, 2021-08-11 16:39:00, 2021-08-11 16:47:00, 2021-08-11 16:55:00, 2021-08-11 17:11:00, 2021-08-11 17:19:00, 2021-08-20 10:51:00, 2021-08-20 10:59:00, 2021-08-20 11:15:00, 2021-08-20 11:23:00, 2021-08-20 11:31:00, 2021-08-20 11:47:00, 2021-08-20 11:55:00, 2022-01-05 13:26:00, 2022-01-05 14:38:00, 2022-01-05 14:54:00, 2022-01-05 13:34:00, 2022-01-05 13:50:00, 2022-01-05 13:58:00, 2022-01-05 14:22:00, 2022-01-05 14:30:00, 2021-11-09 09:38:00, 2021-11-09 10:50:00, 2021-11-09 11:06:00, 2021-11-09 09:46:00, 2021-11-09 10:02:00, 2021-11-09 10:10:00, 2021-11-09 10:18:00, 2021-11-09 10:34:00, 2021-11-09 10:42:00, 2021-08-11 16:20:00, 2021-08-20 10:58:00, 2021-11-09 10:20:00, 2022-01-05 14:23:00, 2020-11-18 13:40:00, 2020-11-18 14:52:00, 2020-11-18 15:08:00, 2020-11-18 13:48:00, 2020-11-18 14:04:00, 2020-11-18 14:12:00, 2020-11-18 14:20:00, 2020-11-18 14:36:00, 2020-11-18 14:44:00, 2020-11-25 13:48:00, 2020-11-25 15:00:00, 2020-11-25 15:15:00, 2020-11-25 13:56:00, 2020-11-25 14:12:00, 2020-11-25 14:20:00, 2020-11-25 14:28:00, 2020-11-25 14:44:00, 2020-11-25 14:52:00, 2020-02-12 13:25:00, 2020-02-12 14:37:00, 2020-02-12 14:53:00, 2020-02-12 13:33:00, 2020-02-12 13:49:00, 2020-02-12 13:57:00, 2020-02-12 14:05:00, 2020-02-12 14:21:00, 2020-02-12 14:29:00, 2020-09-12 13:57:00, 2020-12-09 15:09:00, 2020-12-09 15:25:00, 2020-09-12 14:05:00, 2020-09-12 14:21:00, 2020-12-09 14:29:00, 2020-12-09 14:37:00, 2020-12-09 14:53:00, 2020-12-09 15:01:00, 2019-05-27 10:22:00, 2019-06-04 09:38:00, 2019-06-17 09:28:00, 2019-06-26 09:13:00, 2018-05-15 13:18:00, 2018-05-15 14:40:00, 2018-05-15 14:46:00, 2018-05-15 13:26:00, 2018-05-15 13:42:00, 2018-05-15 13:50:00, 2018-05-15 13:58:00, 2018-05-15 14:14:00, 2018-05-15 14:22:00, 2018-05-22 13:25:00, 2018-05-22 14:37:00, 2018-05-22 14:53:00, 2018-05-22 13:33:00, 2018-05-22 13:49:00, 2018-05-22 13:57:00, 2018-05-22 14:05:00, 2018-05-22 14:21:00, 2018-05-22 14:29:00, 2018-05-29 13:00:00, 2018-05-29 14:12:00, 2018-05-29 14:28:00, 2018-05-29 13:08:00, 2018-05-29 13:24:00, 2018-05-29 13:32:00, 2018-05-29 13:40:00, 2018-05-29 13:56:00, 2018-05-29 14:04:00, 2018-06-22 13:41:00, 2018-06-22 14:53:00, 2018-06-22 15:09:00, 2018-06-22 13:49:00, 2018-06-22 14:05:00, 2018-06-22 14:13:00, 2018-06-22 14:21:00, 2018-06-22 14:37:00, 2018-06-22 14:45:00, 2018-06-29 14:08:00, 2018-06-29 15:20:00, 2018-06-29 15:36:00, 2018-06-29 14:16:00, 2018-06-29 14:32:00, 2018-06-29 14:40:00, 2018-06-29 14:48:00, 2018-06-29 15:04:00, 2018-06-29 15:12:00, 2018-07-05 13:07:00, 2018-07-05 14:19:00, 2018-07-05 14:35:00, 2018-07-05 13:15:00, 2018-07-05 13:31:00, 2018-07-05 13:39:00, 2018-07-05 13:47:00, 2018-07-05 14:03:00, 2018-07-05 14:11:00, 2018-08-15 13:53:00, 2018-08-15 15:05:00, 2018-08-15 15:21:00, 2018-08-15 14:01:00, 2018-08-15 14:17:00, 2018-08-15 14:25:00, 2018-08-15 14:33:00, 2018-08-15 14:49:00, 2018-08-15 14:57:00, 2018-08-22 13:13:00, 2018-08-22 14:25:00, 2018-08-22 14:41:00, 2018-08-22 13:21:00, 2018-08-22 15:21:00, 2018-08-22 13:45:00, 2018-08-22 13:53:00, 2018-08-22 14:09:00, 2018-08-22 14:17:00, 2018-10-03 14:16:00, 2018-10-03 15:28:00, 2018-10-03 15:44:00, 2018-10-03 14:24:00, 2018-10-03 14:40:00, 2018-10-03 14:48:00, 2018-10-03 14:56:00, 2018-10-03 15:12:00, 2018-10-03 15:20:00, 2018-10-10 13:31:00, 2018-10-10 14:43:00, 2018-10-10 14:59:00, 2018-10-10 13:39:00, 2018-10-10 13:55:00, 2018-10-10 14:03:00, 2018-10-10 14:11:00, 2018-10-10 14:27:00, 2018-10-10 14:35:00, 2018-08-29 14:43:00, 2018-08-29 15:55:00, 2018-08-29 16:11:00, 2018-08-29 14:51:00, 2018-08-29 15:07:00, 2018-08-29 15:15:00, 2018-08-29 15:23:00, 2018-08-29 15:39:00, 2018-08-29 15:47:00, 2018-09-05 13:44:00, 2018-09-05 14:56:00, 2018-09-05 15:12:00, 2018-09-05 13:52:00, 2018-09-05 14:08:00, 2018-09-05 14:16:00, 2018-09-05 14:24:00, 2018-09-05 14:40:00, 2018-09-05 14:48:00, 2018-09-12 13:41:00, 2018-09-12 14:53:00, 2018-09-12 15:09:00, 2018-09-12 13:49:00, 2018-09-12 14:05:00, 2018-09-12 14:13:00, 2018-09-12 14:21:00, 2018-09-12 14:37:00, 2018-09-12 14:45:00, 2019-02-25 15:23:00, 2019-02-25 17:11:00, 2019-02-25 17:35:00, 2019-02-25 15:35:00, 2019-02-25 15:59:00, 2019-02-25 16:11:00, 2019-02-25 16:23:00, 2019-02-25 16:47:00, 2019-02-25 16:59:00, 2019-03-07 12:12:00, 2019-03-07 12:24:00, 2019-03-07 12:48:00, 2019-08-22 10:58:00, 2019-08-22 12:10:00, 2019-08-22 12:26:00, 2019-08-22 11:06:00, 2019-08-22 11:22:00, 2019-08-22 11:30:00, 2019-08-22 11:38:00, 2019-08-22 11:54:00, 2019-08-22 12:02:00, 2019-08-29 11:06:00, 2019-08-29 12:18:00, 2019-08-29 12:34:00, 2019-08-29 11:14:00, 2019-08-29 11:30:00, 2019-08-29 11:38:00, 2019-08-29 11:46:00, 2019-08-29 12:02:00, 2019-08-29 12:10:00, 2020-03-06 14:41:00, 2020-03-06 15:53:00, 2020-03-06 16:09:00, 2020-03-06 14:49:00, 2020-03-06 15:05:00, 2020-03-06 15:13:00, 2020-03-06 15:21:00, 2020-03-06 15:37:00, 2020-03-06 15:45:00, 2020-09-06 13:45:00, 2020-09-06 14:57:00, 2020-09-06 15:13:00, 2020-09-06 15:53:00, 2020-09-06 14:09:00, 2020-09-06 14:17:00, 2020-09-06 14:25:00, 2020-09-06 14:41:00, 2020-09-06 14:49:00, 2021-03-16 16:24:00, 2021-03-16 17:36:00, 2021-03-16 17:52:00, 2021-03-16 16:31:00, 2021-03-16 16:56:00, 2021-03-16 17:04:00, 2021-03-16 17:20:00, 2021-03-16 17:28:00, 2019-08-14 16:00:00, 2019-05-21 16:00:00, 2018-04-23 12:00:00, 2019-04-16 12:00:00, 2020-05-28 12:00:00, 2013-06-19 13:30:00, 2013-06-19 16:05:00, 2017-07-18 10:35:00, 2017-07-18 10:49:00, 2017-07-18 10:53:00, 2017-07-18 11:00:00, 2016-07-28 08:20:00, 2016-07-28 09:28:00, 2016-07-28 09:36:00, 2022-10-14 05:46:00, 2022-10-14 06:58:00, 2022-10-14 07:14:00, 2022-10-14 04:58:00, 2022-10-14 05:14:00, 2022-10-14 05:22:00, 2022-10-14 05:30:00, 2022-10-14 06:02:00, 2022-10-14 06:18:00, 2022-10-14 06:26:00, 2022-10-14 06:34:00, 2022-10-14 06:50:00, 2022-11-23 09:09:00, 2022-11-23 08:37:00, 2022-11-23 08:53:00, 2022-11-16 09:43:00, 2022-11-23 09:25:00, 2022-11-23 09:33:00, 2022-11-23 09:41:00, 2022-11-23 08:13:00, 2022-11-23 08:21:00, 2022-11-23 08:29:00, 2022-12-02 22:44:00, 2022-12-02 22:35:00, 2022-11-24 11:43:00, 2022-11-24 11:19:00, 2022-12-02 23:00:00, 2022-12-02 23:08:00, 2022-12-02 22:51:00, 2022-12-02 23:16:00, 2022-12-02 22:59:00, 2022-12-02 23:24:00, 2022-12-02 23:07:00, 2022-12-02 22:12:00, 2022-12-02 23:15:00, 2022-12-02 22:28:00, 2022-12-02 22:11:00, 2023-04-19 09:29:00, 2023-04-19 10:41:00, 2023-04-19 10:57:00, 2023-04-19 11:05:00, 2023-04-19 11:37:00, 2023-04-19 09:13:00, 2023-04-19 09:37:00, 2023-04-19 09:45:00, 2023-04-19 10:25:00, 2023-04-26 21:02:00, 2023-04-26 22:14:00, 2023-04-26 22:22:00, 2023-04-26 22:38:00, 2023-04-26 22:46:00, 2023-04-26 23:10:00, 2023-04-26 23:18:00, 2023-04-26 21:10:00, 2023-04-26 21:26:00, 2023-04-26 21:42:00, 2023-04-26 21:50:00, 2023-04-26 21:58:00, 2023-05-17 07:54:00, 2023-05-17 09:06:00, 2023-05-17 09:14:00, 2023-05-17 09:30:00, 2023-05-17 09:38:00, 2023-05-17 09:46:00, 2023-05-17 08:02:00, 2023-05-17 08:18:00, 2023-05-17 08:42:00, 2023-05-24 08:44:00, 2023-05-24 07:24:00, 2023-05-24 07:32:00, 2023-05-24 07:40:00, 2023-05-24 07:48:00, 2023-05-24 07:56:00, 2023-05-24 08:04:00, 2023-05-24 08:20:00, 2023-05-24 08:28:00, 2023-05-24 08:52:00, 2023-05-24 09:00:00, 2023-05-24 09:08:00, 2023-05-24 09:24:00, 2023-05-24 09:32:00, 2023-05-24 09:40:00, 2023-05-31 05:22:00, 2023-05-31 06:34:00, 2023-05-31 06:42:00, 2023-05-31 06:50:00, 2023-05-31 06:58:00, 2023-05-31 07:06:00, 2023-05-31 07:14:00, 2023-05-31 04:58:00, 2023-05-31 05:06:00, 2023-05-31 05:30:00, 2023-05-31 05:38:00, 2023-05-31 05:46:00, 2023-05-31 06:02:00, 2023-05-31 06:10:00, 2023-05-31 06:18:00, 2018-05-01 13:08:00, 2018-05-01 13:16:00, 2018-05-01 13:32:00, 2018-05-01 13:40:00, 2018-05-01 13:48:00, 2018-05-01 14:04:00, 2018-05-01 14:12:00, 2018-05-01 14:20:00, 2018-05-01 14:36:00, 2018-05-08 11:08:00, 2018-05-08 11:16:00, 2018-05-08 11:32:00, 2018-05-08 11:40:00, 2018-05-08 11:48:00, 2018-05-08 12:04:00, 2018-05-08 12:12:00, 2018-05-08 12:20:00, 2018-05-08 12:36:00, 2019-05-15 16:48:00, 2019-05-15 18:00:00, 2019-05-15 18:16:00, 2019-05-15 16:56:00, 2019-05-15 17:12:00, 2019-05-15 17:20:00, 2019-05-15 17:28:00, 2019-05-15 17:44:00, 2019-05-15 17:52:00, 2020-04-17 13:04:00, 2020-04-17 14:16:00, 2020-04-17 14:32:00, 2020-04-17 13:12:00, 2020-04-17 13:28:00, 2020-04-17 13:36:00, 2020-04-17 13:44:00, 2020-04-17 14:00:00, 2020-04-17 14:08:00, 2020-04-23 12:40:00, 2020-04-23 13:52:00, 2020-04-23 14:08:00, 2020-04-23 12:48:00, 2020-04-23 13:04:00, 2020-04-23 13:12:00, 2020-04-23 13:20:00, 2020-04-23 13:36:00, 2020-04-23 13:44:00, 2022-06-15 07:47:00, 2022-06-15 07:15:00, 2022-06-15 07:31:00, 2022-06-15 07:55:00, 2022-06-15 08:11:00, 2022-06-15 08:19:00, 2022-06-15 08:27:00, 2022-06-15 06:59:00, 2022-06-15 07:07:00, 2022-06-22 07:56:00, 2022-06-22 07:24:00, 2022-06-22 07:40:00, 2022-06-22 08:04:00, 2022-06-22 08:20:00, 2022-06-22 08:28:00, 2022-06-22 08:44:00, 2022-06-22 08:52:00, 2022-06-22 09:00:00, 2022-06-29 10:17:00, 2022-06-29 11:29:00, 2022-06-29 11:45:00, 2022-06-29 10:25:00, 2022-06-29 10:41:00, 2022-06-29 10:49:00, 2022-06-29 11:05:00, 2022-06-29 11:13:00, 2022-06-29 11:21:00, 2022-07-06 06:45:00, 2022-07-06 06:13:00, 2022-07-06 06:29:00, 2022-07-06 06:53:00, 2022-07-06 07:09:00, 2022-07-06 05:33:00, 2022-07-06 05:41:00, 2022-07-06 05:57:00, 2022-07-06 06:05:00, 2017-03-22 10:19:00, 2017-03-22 11:38:00, 2017-03-22 12:11:00, 2017-04-19 12:29:00, 2017-04-19 11:20:00, 2017-04-19 10:36:00, 2017-08-02 10:50:00, 2017-08-02 15:07:00, 2017-08-02 12:14:00, 2018-03-21 11:45:00, 2018-03-21 14:15:00, 2018-03-21 15:30:00, 2018-09-19 12:41:00, 2018-09-19 11:49:00, 2018-09-19 10:47:00, 2019-02-19 15:45:00, 2019-02-19 11:15:00, 2019-02-19 16:15:00, 2019-03-12 11:15:00, 2019-03-12 13:10:00, 2023-04-19 10:49:00, 2023-04-19 11:13:00, 2023-04-19 11:21:00, 2023-04-19 09:53:00, 2023-04-19 10:09:00, 2023-04-19 10:17:00, 2023-04-26 22:30:00, 2023-04-26 22:54:00, 2023-04-26 21:18:00, 2023-05-17 09:22:00, 2023-05-17 10:02:00, 2023-05-17 10:10:00, 2023-05-17 08:10:00, 2023-05-17 08:34:00, 2023-05-10 14:47:00, 2024-03-06 11:29:00, 2024-03-06 10:25:00, 2024-03-06 10:33:00, 2024-03-06 10:41:00, 2024-03-06 10:49:00, 2024-03-06 11:05:00, 2024-03-06 11:13:00, 2024-03-06 11:21:00, 2024-03-06 11:37:00, 2024-03-06 11:45:00, 2024-03-06 11:53:00, 2024-03-06 09:37:00, 2024-03-06 09:45:00, 2024-03-06 09:53:00, 2024-03-06 10:17:00, 2024-03-13 07:56:00, 2024-03-13 06:52:00, 2024-03-13 07:00:00, 2024-03-13 07:08:00, 2024-03-13 07:16:00, 2024-03-13 07:32:00, 2024-03-13 07:40:00, 2024-03-13 07:48:00, 2024-03-13 08:04:00, 2024-03-13 08:12:00, 2024-03-13 08:20:00, 2024-03-13 08:36:00, 2024-03-13 08:44:00, 2024-03-13 08:52:00, 2024-03-13 06:36:00, 2024-03-13 06:44:00, 2024-03-19 07:03:00, 2024-03-19 08:31:00, 2024-03-19 08:39:00, 2024-03-19 08:47:00, 2024-03-19 08:55:00, 2024-03-19 06:39:00, 2024-03-19 06:47:00, 2024-03-19 06:55:00, 2024-03-19 07:11:00, 2024-03-19 07:19:00, 2024-03-19 07:27:00, 2024-03-19 07:43:00, 2024-03-19 07:51:00, 2024-03-19 07:59:00, 2024-03-19 08:15:00, 2024-03-19 08:23:00, 2024-03-27 00:05:00, 2024-03-26 23:01:00, 2024-03-26 23:09:00, 2024-03-26 23:17:00, 2024-03-26 23:25:00, 2024-03-26 23:49:00, 2024-03-26 23:57:00, 2024-03-27 00:13:00, 2024-03-27 00:29:00, 2024-03-27 00:45:00, 2024-03-27 00:53:00, 2024-03-26 22:29:00, 2024-03-26 22:45:00, 2024-03-26 22:53:00, 2024-04-10 07:22:00, 2024-04-10 08:49:00, 2024-04-10 08:58:00, 2024-04-10 09:05:00, 2024-04-10 09:14:00, 2024-04-10 09:29:00, 2024-04-10 09:37:00, 2024-04-10 07:30:00, 2024-04-10 07:38:00, 2024-04-10 07:46:00, 2024-04-10 08:02:00, 2024-04-10 08:10:00, 2024-04-10 08:18:00, 2024-04-10 08:34:00, 2024-04-10 08:42:00, 2024-04-17 09:06:00, 2024-04-17 10:34:00, 2024-04-17 08:10:00, 2024-04-17 08:18:00, 2024-04-17 08:26:00, 2024-04-17 08:50:00, 2024-04-17 08:58:00, 2024-04-17 09:14:00, 2024-04-17 09:22:00, 2024-04-17 09:30:00, 2024-04-17 09:46:00, 2024-04-17 09:54:00, 2024-04-17 10:02:00, 2024-04-17 10:18:00, 2024-04-17 10:26:00, 2024-04-24 10:04:00, 2024-04-24 11:32:00, 2024-04-24 11:40:00, 2024-04-24 11:48:00, 2024-04-24 11:56:00, 2024-04-24 12:20:00, 2024-04-24 12:28:00, 2024-04-24 10:12:00, 2024-04-24 10:20:00, 2024-04-24 10:28:00, 2024-04-24 10:44:00, 2024-04-24 10:52:00, 2024-04-24 11:00:00, 2024-04-24 11:16:00, 2024-04-24 11:24:00, 2024-05-01 07:01:00, 2024-05-01 05:57:00, 2024-05-01 06:05:00, 2024-05-01 06:13:00, 2024-05-01 06:21:00, 2024-05-01 06:37:00, 2024-05-01 06:45:00, 2024-05-01 06:53:00, 2024-05-01 07:09:00, 2024-05-01 07:17:00, 2024-05-01 07:25:00, 2024-05-01 07:41:00, 2024-05-01 07:49:00, 2024-05-01 07:57:00, 2024-05-01 05:41:00, 2024-05-01 05:49:00, 2024-05-08 07:55:00, 2024-05-08 06:51:00, 2024-05-08 06:59:00, 2024-05-08 07:07:00, 2024-05-08 07:15:00, 2024-05-08 07:31:00, 2024-05-08 07:39:00, 2024-05-08 07:47:00, 2024-05-08 08:03:00, 2024-05-08 08:11:00, 2024-05-08 08:19:00, 2024-05-08 08:35:00, 2024-05-08 06:11:00, 2024-05-08 06:19:00, 2024-05-08 06:35:00, 2024-05-15 07:02:00, 2024-05-15 05:58:00, 2024-05-15 06:06:00, 2024-05-15 06:14:00, 2024-05-15 06:22:00, 2024-05-15 06:38:00, 2024-05-15 06:46:00, 2024-05-15 06:54:00, 2024-05-15 07:10:00, 2024-05-15 07:18:00, 2024-05-15 07:26:00, 2024-05-15 07:42:00, 2024-05-15 07:50:00, 2024-05-15 07:58:00, 2024-05-15 05:42:00, 2024-05-15 05:50:00, 2024-05-22 07:23:00, 2024-05-22 06:19:00, 2024-05-22 06:27:00, 2024-05-22 06:35:00, 2024-05-22 06:43:00, 2024-05-22 06:59:00, 2024-05-22 07:07:00, 2024-05-22 07:31:00, 2024-05-22 07:39:00, 2024-05-22 07:47:00, 2024-05-22 08:03:00, 2024-05-22 08:11:00, 2024-05-22 08:19:00, 2024-05-22 08:35:00, 2024-05-22 06:11:00, 2024-05-31 06:28:00, 2024-05-31 07:56:00, 2024-05-31 08:04:00, 2024-05-31 08:12:00, 2024-05-31 05:48:00, 2024-05-31 06:04:00, 2024-05-31 06:12:00, 2024-05-31 06:20:00, 2024-05-31 06:36:00, 2024-05-31 06:44:00, 2024-05-31 06:52:00, 2024-05-31 07:08:00, 2024-05-31 07:16:00, 2024-05-31 07:24:00, 2024-05-31 07:40:00, 2024-05-31 07:48:00, 2024-06-10 07:25:00, 2024-06-10 06:21:00, 2024-06-10 06:29:00, 2024-06-10 06:37:00, 2024-06-10 06:45:00, 2024-06-10 07:01:00, 2024-06-10 07:09:00, 2024-06-10 07:17:00, 2024-06-10 07:33:00, 2024-06-10 07:41:00, 2024-06-10 07:49:00, 2024-06-10 05:33:00, 2024-06-10 05:41:00, 2024-06-10 05:49:00, 2024-06-10 06:05:00, 2024-06-10 06:13:00, 2024-07-01 06:28:00, 2024-07-01 05:24:00, 2024-07-01 05:32:00, 2024-07-01 05:40:00, 2024-07-01 05:48:00, 2024-07-01 06:04:00, 2024-07-01 06:12:00, 2024-07-01 06:20:00, 2024-07-01 06:36:00, 2024-07-01 06:44:00, 2024-07-01 06:52:00, 2024-07-01 07:08:00, 2024-07-01 07:16:00, 2024-07-01 07:24:00, 2024-07-01 05:08:00, 2024-07-01 05:16:00, 2024-07-05 07:53:00, 2024-07-05 06:49:00, 2024-07-05 06:57:00, 2024-07-05 07:05:00, 2024-07-05 07:13:00, 2024-07-05 07:29:00, 2024-07-05 07:37:00, 2024-07-05 07:45:00, 2024-07-05 08:01:00, 2024-07-05 08:09:00, 2024-07-05 08:17:00, 2024-07-05 08:33:00, 2024-07-05 08:41:00, 2024-07-05 08:49:00, 2024-07-05 09:05:00, 2024-07-05 09:13:00, 2025-04-07 07:14:41.986, 2025-04-07 07:22:41.062, 2025-04-07 07:30:41.88, 2025-04-07 05:06:45.625, 2025-04-07 05:22:46.312, 2025-04-07 05:38:45.194, 2025-04-07 05:54:44.128, 2025-04-07 06:10:44.032, 2025-04-07 06:18:44.299, 2025-04-07 06:26:43.249, 2025-04-07 06:42:43.579, 2025-05-05 07:42:10.545, 2025-05-05 07:50:10.407, 2025-05-05 07:58:11.082, 2025-05-05 08:06:09.992, 2025-05-05 08:22:09.826, 2025-05-05 08:38:09.862, 2025-05-05 08:54:09.029, 2025-05-05 09:10:08.017, 2025-05-05 09:18:08.042, 2025-05-05 09:26:07.878, 2025-05-05 09:42:07.411, 2022-04-11 10:12:00, 2022-04-11 11:24:00, 2022-04-11 11:40:00, 2022-04-11 10:20:00, 2022-04-11 10:36:00, 2022-04-11 10:44:00, 2022-04-11 11:00:00, 2022-04-11 11:08:00, 2022-04-11 11:16:00, 2022-09-20 08:28:00, 2022-09-20 09:32:00, 2022-09-20 08:36:00, 2022-09-20 08:44:00, 2022-09-20 08:52:00, 2022-09-20 09:00:00, 2022-09-20 09:16:00, 2022-09-20 09:24:00, 2022-04-18 09:31:00, 2022-04-18 10:43:00, 2022-04-18 10:59:00, 2022-04-18 09:39:00, 2022-04-18 09:55:00, 2022-04-18 10:03:00, 2022-04-18 10:19:00, 2022-04-18 10:27:00, 2022-04-18 10:35:00, 2022-05-02 09:50:00, 2022-05-02 11:02:00, 2022-05-02 11:18:00, 2022-05-02 09:58:00, 2022-05-02 10:14:00, 2022-05-02 10:22:00, 2022-05-02 10:38:00, 2022-05-02 10:46:00, 2022-05-02 10:54:00, 2022-10-25 07:33:00, 2022-10-25 07:49:00, 2022-10-25 07:57:00, 2022-10-25 08:05:00, 2022-10-25 08:21:00, 2022-10-25 06:53:00, 2022-10-25 07:01:00, 2022-10-25 07:17:00, 2022-10-25 07:25:00, 2022-10-04 09:19:00, 2022-10-04 10:31:00, 2022-10-04 09:35:00, 2022-10-04 09:59:00, 2022-10-04 10:15:00, 2022-10-04 10:23:00, 2022-09-27 08:15:00, 2022-09-27 09:27:00, 2022-09-27 09:43:00, 2022-09-27 08:23:00, 2022-09-27 08:39:00, 2022-09-27 08:47:00, 2022-09-27 08:55:00, 2022-09-27 09:11:00, 2022-09-27 09:19:00, 2022-10-31 06:55:00, 2022-10-31 07:11:00, 2022-10-31 07:19:00, 2022-10-31 07:27:00, 2022-10-31 07:43:00, 2022-10-31 06:15:00, 2022-10-31 06:23:00, 2022-10-31 06:39:00, 2022-10-31 06:47:00, 2025-05-13 10:42:00, 2025-07-29 10:51:00 
## 
##  app.end.orig 
## Class: character 
## Length: 3268 
## Missing values: 2314 
## Unique values: NA, 11-08-2021 16:15, 11-08-2021 16:23, 11-08-2021 16:39, 11-08-2021 16:47, 11-08-2021 16:55, 11-08-2021 17:11, 11-08-2021 17:19, 20-08-2021 10:51, 20-08-2021 10:59, 20-08-2021 11:15, 20-08-2021 11:23, 20-08-2021 11:31, 20-08-2021 11:47, 20-08-2021 11:55, 05-01-2022 13:26, 05-01-2022 14:38, 05-01-2022 14:54, 05-01-2022 13:34, 05-01-2022 13:50, 05-01-2022 13:58, 05-01-2022 14:22, 05-01-2022 14:30, 09-11-2021 09:38, 09-11-2021 10:50, 09-11-2021 11:06, 09-11-2021 09:46, 09-11-2021 10:02, 09-11-2021 10:10, 09-11-2021 10:18, 09-11-2021 10:34, 09-11-2021 10:42, 11/08/2021 16:20, 20/08/2021 10:58, 09/11/2021 10:20, 5/01/2022 14:23, 11/18/2020 13:40, 11/18/2020 14:52, 11/18/2020 15:08, 11/18/2020 13:48, 11/18/2020 14:04, 11/18/2020 14:12, 11/18/2020 14:20, 11/18/2020 14:36, 11/18/2020 14:44, 11/25/2020 13:48, 11/25/2020 15:00, 11/25/2020 15:15, 11/25/2020 13:56, 11/25/2020 14:12, 11/25/2020 14:20, 11/25/2020 14:28, 11/25/2020 14:44, 11/25/2020 14:52, 12/2/2020 13:25, 12/2/2020 14:37, 12/2/2020 14:53, 12/2/2020 13:33, 12/2/2020 13:49, 12/2/2020 13:57, 12/2/2020 14:05, 12/2/2020 14:21, 12/2/2020 14:29, 12/9/2020 13:57, 09-12-2020 15:09, 09-12-2020 15:25, 12/9/2020 14:05, 12/9/2020 14:21, 09-12-2020 14:29, 09-12-2020 14:37, 09-12-2020 14:53, 09-12-2020 15:01, 27-05-2019 10:22, 04-06-2019 09:38, 17-06-2019 09:28, 26-06-2019 09:13, 15-05-2018 13:18, 15-05-2018 14:40, 15-05-2018 14:46, 15-05-2018 13:26, 15-05-2018 13:42, 15-05-2018 13:50, 15-05-2018 13:58, 15-05-2018 14:14, 15-05-2018 14:22, 22-05-2018 13:25, 22-05-2018 14:37, 22-05-2018 14:53, 22-05-2018 13:33, 22-05-2018 13:49, 22-05-2018 13:57, 22-05-2018 14:05, 22-05-2018 14:21, 22-05-2018 14:29, 29-05-2018 13:00, 29-05-2018 14:12, 29-05-2018 14:28, 29-05-2018 13:08, 29-05-2018 13:24, 29-05-2018 13:32, 29-05-2018 13:40, 29-05-2018 13:56, 29-05-2018 14:04, 22-06-2018 13:41, 22-06-2018 14:53, 22-06-2018 15:09, 22-06-2018 13:49, 22-06-2018 14:05, 22-06-2018 14:13, 22-06-2018 14:21, 22-06-2018 14:37, 22-06-2018 14:45, 29-06-2018 14:08, 29-06-2018 15:20, 29-06-2018 15:36, 29-06-2018 14:16, 29-06-2018 14:32, 29-06-2018 14:40, 29-06-2018 14:48, 29-06-2018 15:04, 29-06-2018 15:12, 05-07-2018 13:07, 05-07-2018 14:19, 05-07-2018 14:35, 05-07-2018 13:15, 05-07-2018 13:31, 05-07-2018 13:39, 05-07-2018 13:47, 05-07-2018 14:03, 05-07-2018 14:11, 15-08-2018 13:53, 15-08-2018 15:05, 15-08-2018 15:21, 15-08-2018 14:01, 15-08-2018 14:17, 15-08-2018 14:25, 15-08-2018 14:33, 15-08-2018 14:49, 15-08-2018 14:57, 22-08-2018 13:13, 22-08-2018 14:25, 22-08-2018 14:41, 22-08-2018 13:21, 22-08-2018 15:21, 22-08-2018 13:45, 22-08-2018 13:53, 22-08-2018 14:09, 22-08-2018 14:17, 03-10-2018 14:16, 03-10-2018 15:28, 03-10-2018 15:44, 03-10-2018 14:24, 03-10-2018 14:40, 03-10-2018 14:48, 03-10-2018 14:56, 03-10-2018 15:12, 03-10-2018 15:20, 10-10-2018 13:31, 10-10-2018 14:43, 10-10-2018 14:59, 10-10-2018 13:39, 10-10-2018 13:55, 10-10-2018 14:03, 10-10-2018 14:11, 10-10-2018 14:27, 10-10-2018 14:35, 29-08-2018 14:43, 29-08-2018 15:55, 29-08-2018 16:11, 29-08-2018 14:51, 29-08-2018 15:07, 29-08-2018 15:15, 29-08-2018 15:23, 29-08-2018 15:39, 29-08-2018 15:47, 05-09-2018 13:44, 05-09-2018 14:56, 05-09-2018 15:12, 05-09-2018 13:52, 05-09-2018 14:08, 05-09-2018 14:16, 05-09-2018 14:24, 05-09-2018 14:40, 05-09-2018 14:48, 12-09-2018 13:41, 12-09-2018 14:53, 12-09-2018 15:09, 12-09-2018 13:49, 12-09-2018 14:05, 12-09-2018 14:13, 12-09-2018 14:21, 12-09-2018 14:37, 12-09-2018 14:45, 25-02-2019 15:23, 25-02-2019 17:11, 25-02-2019 17:35, 25-02-2019 15:35, 25-02-2019 15:59, 25-02-2019 16:11, 25-02-2019 16:23, 25-02-2019 16:47, 25-02-2019 16:59, 07-03-2019 12:12, 07-03-2019 12:24, 07-03-2019 12:48, 22-08-2019 10:58, 22-08-2019 12:10, 22-08-2019 12:26, 22-08-2019 11:06, 22-08-2019 11:22, 22-08-2019 11:30, 22-08-2019 11:38, 22-08-2019 11:54, 22-08-2019 12:02, 29-08-2019 11:06, 29-08-2019 12:18, 29-08-2019 12:34, 29-08-2019 11:14, 29-08-2019 11:30, 29-08-2019 11:38, 29-08-2019 11:46, 29-08-2019 12:02, 29-08-2019 12:10, 6/3/2020 14:41, 6/3/2020 15:53, 6/3/2020 16:09, 6/3/2020 14:49, 6/3/2020 15:05, 6/3/2020 15:13, 6/3/2020 15:21, 6/3/2020 15:37, 6/3/2020 15:45, 6/9/2020 13:45, 6/9/2020 14:57, 6/9/2020 15:13, 6/9/2020 15:53, 6/9/2020 14:09, 6/9/2020 14:17, 6/9/2020 14:25, 6/9/2020 14:41, 6/9/2020 14:49, 3/16/2021 16:24, 3/16/2021 17:36, 3/16/2021 17:52, 3/16/2021 16:31, 3/16/2021 16:56, 3/16/2021 17:04, 3/16/2021 17:20, 3/16/2021 17:28, 14-08-2019 16:00, 21-05-2019 16:00, 23-04-2018 12:00, 16-04-2019 12:00, 28-05-2020 12:00, 19-06-2013 13:30, 19-06-2013 16:05, 18-07-2017 10:35, 18-07-2017 10:49, 18-07-2017 10:53, 18-07-2017 11:00, 28-07-2016 08:20, 28-07-2016 09:28, 28-07-2016 09:36, 1665726360, 1665730680, 1665731640, 1665723480, 1665724440, 1665724920, 1665725400, 1665727320, 1665728280, 1665728760, 1665729240, 1665730200, 1669194540, 1669192620, 1669193580, 1668591780, 1669195500, 1669195980, 1669196460, 1669191180, 1669191660, 1669192140, 1670021040, 1670020500, 1669290180, 1669288740, 1670022000, 1670022480, 1670021460, 1670022960, 1670021940, 1670023440, 1670022420, 1670019120, 1670022900, 1670020080, 1670019060, 1681896540, 1681900860, 1681901820, 1681902300, 1681904220, 1681895580, 1681897020, 1681897500, 1681899900, 1682542920, 1682547240, 1682547720, 1682548680, 1682549160, 1682550600, 1682551080, 1682543400, 1682544360, 1682545320, 1682545800, 1682546280, 1684310040, 1684314360, 1684314840, 1684315800, 1684316280, 1684316760, 1684310520, 1684311480, 1684312920, 1684917840, 1684913040, 1684913520, 1684914000, 1684914480, 1684914960, 1684915440, 1684916400, 1684916880, 1684918320, 1684918800, 1684919280, 1684920240, 1684920720, 1684921200, 1685510520, 1685514840, 1685515320, 1685515800, 1685516280, 1685516760, 1685517240, 1685509080, 1685509560, 1685511000, 1685511480, 1685511960, 1685512920, 1685513400, 1685513880, 01-05-2018 13:08, 01-05-2018 13:16, 01-05-2018 13:32, 01-05-2018 13:40, 01-05-2018 13:48, 01-05-2018 14:04, 01-05-2018 14:12, 01-05-2018 14:20, 01-05-2018 14:36, 08-05-2018 11:08, 08-05-2018 11:16, 08-05-2018 11:32, 08-05-2018 11:40, 08-05-2018 11:48, 08-05-2018 12:04, 08-05-2018 12:12, 08-05-2018 12:20, 08-05-2018 12:36, 15-05-2019 16:48, 15-05-2019 18:00, 15-05-2019 18:16, 15-05-2019 16:56, 15-05-2019 17:12, 15-05-2019 17:20, 15-05-2019 17:28, 15-05-2019 17:44, 15-05-2019 17:52, 17-04-2020 13:04, 17-04-2020 14:16, 17-04-2020 14:32, 17-04-2020 13:12, 17-04-2020 13:28, 17-04-2020 13:36, 17-04-2020 13:44, 17-04-2020 14:00, 17-04-2020 14:08, 23-04-2020 12:40, 23-04-2020 13:52, 23-04-2020 14:08, 23-04-2020 12:48, 23-04-2020 13:04, 23-04-2020 13:12, 23-04-2020 13:20, 23-04-2020 13:36, 23-04-2020 13:44, 1655279220, 1655277300, 1655278260, 1655279700, 1655280660, 1655281140, 1655281620, 1655276340, 1655276820, 1655884560, 1655882640, 1655883600, 1655885040, 1655886000, 1655886480, 1655887440, 1655887920, 1655888400, 1656497820, 1656502140, 1656503100, 1656498300, 1656499260, 1656499740, 1656500700, 1656501180, 1656501660, 1657089900, 1657087980, 1657088940, 1657090380, 1657091340, 1657085580, 1657086060, 1657087020, 1657087500, 22-03-2017 10:19, 22-03-2017 11:38, 22-03-2017 12:11, 19-04-2017 12:29, 19-04-2017 11:20, 19-04-2017 10:36, 02-08-2017 10:50, 02-08-2017 15:07, 02-08-2017 12:14, 21-03-2018 11:45, 21-03-2018 14:15, 21-03-2018 15:30, 19-09-2018 12:41, 19-09-2018 11:49, 19-09-2018 10:47, 19-02-2019 15:45, 19-02-2019 11:15, 19-02-2019 16:15, 12-03-2019 11:15, 12-03-2019 13:10, 1681901340, 1681902780, 1681903260, 1681897980, 1681898940, 1681899420, 1682548200, 1682549640, 1682543880, 1684315320, 1684317720, 1684318200, 1684311000, 1684312440, 1683730020, 06-03-2024 11:29, 06-03-2024 10:25, 06-03-2024 10:33, 06-03-2024 10:41, 06-03-2024 10:49, 06-03-2024 11:05, 06-03-2024 11:13, 06-03-2024 11:21, 06-03-2024 11:37, 06-03-2024 11:45, 06-03-2024 11:53, 06-03-2024 09:37, 06-03-2024 09:45, 06-03-2024 09:53, 06-03-2024 10:17, 13-03-2024 07:56, 13-03-2024 06:52, 13-03-2024 07:00, 13-03-2024 07:08, 13-03-2024 07:16, 13-03-2024 07:32, 13-03-2024 07:40, 13-03-2024 07:48, 13-03-2024 08:04, 13-03-2024 08:12, 13-03-2024 08:20, 13-03-2024 08:36, 13-03-2024 08:44, 13-03-2024 08:52, 13-03-2024 06:36, 13-03-2024 06:44, 19-03-2024 07:03, 19-03-2024 08:31, 19-03-2024 08:39, 19-03-2024 08:47, 19-03-2024 08:55, 19-03-2024 06:39, 19-03-2024 06:47, 19-03-2024 06:55, 19-03-2024 07:11, 19-03-2024 07:19, 19-03-2024 07:27, 19-03-2024 07:43, 19-03-2024 07:51, 19-03-2024 07:59, 19-03-2024 08:15, 19-03-2024 08:23, 27-03-2024 00:05, 26-03-2024 23:01, 26-03-2024 23:09, 26-03-2024 23:17, 26-03-2024 23:25, 26-03-2024 23:49, 26-03-2024 23:57, 27-03-2024 00:13, 27-03-2024 00:29, 27-03-2024 00:45, 27-03-2024 00:53, 26-03-2024 22:29, 26-03-2024 22:45, 26-03-2024 22:53, 10-04-2024 07:22, 10-04-2024 08:49, 10-04-2024 08:58, 10-04-2024 09:05, 10-04-2024 09:14, 10-04-2024 09:29, 10-04-2024 09:37, 10-04-2024 07:30, 10-04-2024 07:38, 10-04-2024 07:46, 10-04-2024 08:02, 10-04-2024 08:10, 10-04-2024 08:18, 10-04-2024 08:34, 10-04-2024 08:42, 17-04-2024 09:06, 17-04-2024 10:34, 17-04-2024 08:10, 17-04-2024 08:18, 17-04-2024 08:26, 17-04-2024 08:50, 17-04-2024 08:58, 17-04-2024 09:14, 17-04-2024 09:22, 17-04-2024 09:30, 17-04-2024 09:46, 17-04-2024 09:54, 17-04-2024 10:02, 17-04-2024 10:18, 17-04-2024 10:26, 24-04-2024 10:04, 24-04-2024 11:32, 24-04-2024 11:40, 24-04-2024 11:48, 24-04-2024 11:56, 24-04-2024 12:20, 24-04-2024 12:28, 24-04-2024 10:12, 24-04-2024 10:20, 24-04-2024 10:28, 24-04-2024 10:44, 24-04-2024 10:52, 24-04-2024 11:00, 24-04-2024 11:16, 24-04-2024 11:24, 01-05-2024 07:01, 01-05-2024 05:57, 01-05-2024 06:05, 01-05-2024 06:13, 01-05-2024 06:21, 01-05-2024 06:37, 01-05-2024 06:45, 01-05-2024 06:53, 01-05-2024 07:09, 01-05-2024 07:17, 01-05-2024 07:25, 01-05-2024 07:41, 01-05-2024 07:49, 01-05-2024 07:57, 01-05-2024 05:41, 01-05-2024 05:49, 08-05-2024 07:55, 08-05-2024 06:51, 08-05-2024 06:59, 08-05-2024 07:07, 08-05-2024 07:15, 08-05-2024 07:31, 08-05-2024 07:39, 08-05-2024 07:47, 08-05-2024 08:03, 08-05-2024 08:11, 08-05-2024 08:19, 08-05-2024 08:35, 08-05-2024 06:11, 08-05-2024 06:19, 08-05-2024 06:35, 15-05-2024 07:02, 15-05-2024 05:58, 15-05-2024 06:06, 15-05-2024 06:14, 15-05-2024 06:22, 15-05-2024 06:38, 15-05-2024 06:46, 15-05-2024 06:54, 15-05-2024 07:10, 15-05-2024 07:18, 15-05-2024 07:26, 15-05-2024 07:42, 15-05-2024 07:50, 15-05-2024 07:58, 15-05-2024 05:42, 15-05-2024 05:50, 22-05-2024 07:23, 22-05-2024 06:19, 22-05-2024 06:27, 22-05-2024 06:35, 22-05-2024 06:43, 22-05-2024 06:59, 22-05-2024 07:07, 22-05-2024 07:31, 22-05-2024 07:39, 22-05-2024 07:47, 22-05-2024 08:03, 22-05-2024 08:11, 22-05-2024 08:19, 22-05-2024 08:35, 22-05-2024 06:11, 31-05-2024 06:28, 31-05-2024 07:56, 31-05-2024 08:04, 31-05-2024 08:12, 31-05-2024 05:48, 31-05-2024 06:04, 31-05-2024 06:12, 31-05-2024 06:20, 31-05-2024 06:36, 31-05-2024 06:44, 31-05-2024 06:52, 31-05-2024 07:08, 31-05-2024 07:16, 31-05-2024 07:24, 31-05-2024 07:40, 31-05-2024 07:48, 10-06-2024 07:25, 10-06-2024 06:21, 10-06-2024 06:29, 10-06-2024 06:37, 10-06-2024 06:45, 10-06-2024 07:01, 10-06-2024 07:09, 10-06-2024 07:17, 10-06-2024 07:33, 10-06-2024 07:41, 10-06-2024 07:49, 10-06-2024 05:33, 10-06-2024 05:41, 10-06-2024 05:49, 10-06-2024 06:05, 10-06-2024 06:13, 01-07-2024 06:28, 01-07-2024 05:24, 01-07-2024 05:32, 01-07-2024 05:40, 01-07-2024 05:48, 01-07-2024 06:04, 01-07-2024 06:12, 01-07-2024 06:20, 01-07-2024 06:36, 01-07-2024 06:44, 01-07-2024 06:52, 01-07-2024 07:08, 01-07-2024 07:16, 01-07-2024 07:24, 01-07-2024 05:08, 01-07-2024 05:16, 05-07-2024 07:53, 05-07-2024 06:49, 05-07-2024 06:57, 05-07-2024 07:05, 05-07-2024 07:13, 05-07-2024 07:29, 05-07-2024 07:37, 05-07-2024 07:45, 05-07-2024 08:01, 05-07-2024 08:09, 05-07-2024 08:17, 05-07-2024 08:33, 05-07-2024 08:41, 05-07-2024 08:49, 05-07-2024 09:05, 05-07-2024 09:13, 1744010081.986, 1744010561.062, 1744011041.88, 1744002405.625, 1744003366.312, 1744004325.194, 1744005284.128, 1744006244.032, 1744006724.299, 1744007203.249, 1744008163.579, 1746430930.545, 1746431410.407, 1746431891.082, 1746432369.992, 1746433329.826, 1746434289.862, 1746435249.029, 1746436208.017, 1746436688.042, 1746437167.878, 1746438127.411, 2022-04-11 10:12:39 UTC, 2022-04-11 11:24:37 UTC, 2022-04-11 11:40:37 UTC, 2022-04-11 10:20:39 UTC, 2022-04-11 10:36:39 UTC, 2022-04-11 10:44:39 UTC, 2022-04-11 11:00:39 UTC, 2022-04-11 11:08:38 UTC, 2022-04-11 11:16:37 UTC, 2022-04-25 09.56.28 UTC, 2022-04-25 11.08.26 UTC, 2022-04-25 11.24.27 UTC, 2022-04-25 10.04.28 UTC, 2022-04-25 10.20.28 UTC, 2022-04-25 10.28.27 UTC, 2022-04-25 10.44.27 UTC, 2022-04-25 10.52.27 UTC, 2022-04-25 11.00.28 UTC, 2022-09-20 08:28:08 UTC, 2022-09-20 09:32:06 UTC, 2022-09-20 08:36:08 UTC, 2022-09-20 08:44:07 UTC, 2022-09-20 08:52:07 UTC, 2022-09-20 09:00:07 UTC, 2022-09-20 09:16:07 UTC, 2022-09-20 09:24:06 UTC, 2022-04-18 09:31:29 UTC, 2022-04-18 10:43:27 UTC, 2022-04-18 10:59:26 UTC, 2022-04-18 09:39:29 UTC, 2022-04-18 09:55:29 UTC, 2022-04-18 10:03:28 UTC, 2022-04-18 10:19:28 UTC, 2022-04-18 10:27:28 UTC, 2022-04-18 10:35:27 UTC, 2022-05-02 09:50:55 UTC, 2022-05-02 11:02:53 UTC, 2022-05-02 11:18:52 UTC, 2022-05-02 09:58:55 UTC, 2022-05-02 10:14:54 UTC, 2022-05-02 10:22:54 UTC, 2022-05-02 10:38:54 UTC, 2022-05-02 10:46:54 UTC, 2022-05-02 10:54:54 UTC, 2022-10-25 07:33:49 UTC, 2022-10-25 07:49:48 UTC, 2022-10-25 07:57:48 UTC, 2022-10-25 08:05:47 UTC, 2022-10-25 08:21:47 UTC, 2022-10-25 06:53:49 UTC, 2022-10-25 07:01:50 UTC, 2022-10-25 07:17:50 UTC, 2022-10-25 07:25:49 UTC, 2022-10-04 09:19:24 UTC, 2022-10-04 10:31:21 UTC, 2022-10-04 09:35:22 UTC, 2022-10-04 09:59:22 UTC, 2022-10-04 10:15:22 UTC, 2022-10-04 10:23:21 UTC, 2022-09-27 08:15:30 UTC, 2022-09-27 09:27:28 UTC, 2022-09-27 09:43:28 UTC, 2022-09-27 08:23:29 UTC, 2022-09-27 08:39:30 UTC, 2022-09-27 08:47:30 UTC, 2022-09-27 08:55:28 UTC, 2022-09-27 09:11:29 UTC, 2022-09-27 09:19:29 UTC, 2022-10-31 06:55:30 UTC, 2022-10-31 07:11:29 UTC, 2022-10-31 07:19:28 UTC, 2022-10-31 07:27:28 UTC, 2022-10-31 07:43:29 UTC, 2022-10-31 06:15:31 UTC, 2022-10-31 06:23:30 UTC, 2022-10-31 06:39:30 UTC, 2022-10-31 06:47:30 UTC, 13-05-2025 10:42, 29-07-2025 10:51, 2026/05/19 10:56:00, 2026/08/11 13:54:00, 2026/08/18 13:54:00, 2026/08/19 13:54:00, 2026/08/20 13:54:00, 2026/08/21 13:54:00, 2026/08/22 13:54:00, 2026/08/23 13:54:00, 2026/08/24 13:54:00, 2026/08/25 13:54:00, 2026/08/26 13:54:00, 2026/08/12 13:54:00, 2026/08/13 13:54:00, 2026/08/14 13:54:00, 2026/08/15 13:54:00, 2026/08/16 13:54:00, 2026/08/17 13:54:00 
## 
##  app.method 
## Class: character 
## Length: 3268 
## Missing values: 34 
## Unique values: bc, bsth, pi, os, cs, ts, bss, NA, tslt, tsft 
## 
##  app.method.orig 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: Broadcast, Band spread or trailing hose, Pressurized injection, Open slot, Closed slot, Trailing shoe, Band spread on slots, Broad spread, trailing hose, , Open slot injection, Wide band, NUGA-tine, NUGA, Trailing shoe with harrowing tine, Closed slot injection 
## 
##  app.rate 
## Class: numeric 
## Length: 3268 
## Missing values: 130 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
##   0.4  26.7  33.1  40.0 315.0 
## 
##  tan.app 
## Class: numeric 
## Length: 3268 
## Missing values: 130 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##     0%    25%    50%    75%   100% 
##   2.45  41.23  59.36  90.00 602.10 
## 
##  incorp 
## Class: character 
## Length: 3268 
## Missing values: 336 
## Unique values: none, shallow, deep, NA 
## 
##  incorp.orig 
## Class: character 
## Length: 3268 
## Missing values: 336 
## Unique values: None, none, Shallow, Plough, Double discs, NA, Deep 
## 
##  time.incorp 
## Class: numeric 
## Length: 3268 
## Missing values: 3104 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##    0%   25%   50%   75%  100% 
##  0.00  0.00  0.00  0.05 48.00 
## 
##  man.area 
## Class: numeric 
## Length: 3268 
## Missing values: 2858 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    0   25   30   95  100 
## 
##  dist.inj 
## Class: numeric 
## Length: 3268 
## Missing values: 3081 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##   17   19   25   25  120 
## 
##  furrow.z 
## Class: character 
## Length: 3268 
## Missing values: 3031 
## Unique values: NA, , 0-20, 0-18, 6.9, 2.6, 2.5, 3.2, 3.9, 4.3, 0, 5.4, 4, 6, 5, 2, 1.5, 8, 10, 15, 25 
## 
##  furrow.w 
## Class: character 
## Length: 3268 
## Missing values: 3120 
## Unique values: NA, , 0-5, 2, 3, 1, 1.5, 0.5, 15, 5 
## 
##  crop 
## Class: character 
## Length: 3268 
## Missing values: 173 
## Unique values: stubble, bare soil, grass, other, cereal, maize, NA, rapeseed, wheat, none 
## 
##  crop.orig 
## Class: character 
## Length: 3268 
## Missing values: 171 
## Unique values: Stubble, Bare soil, Grass, Growing crop, Winter Oilseed Rape, Winter Wheat, Winter wheat, grass, wheat, maize, winter rye, , winter wheat, Barley, Cereal, NA, Rapeseed, stubble, None 
## 
##  crop.z 
## Class: numeric 
## Length: 3268 
## Missing values: 1121 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  5.0  8.5 12.0 76.5 
## 
##  crop.area 
## Class: numeric 
## Length: 3268 
## Missing values: 2980 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##    0    0    0   55  100 
## 
##  lai 
## Class: numeric 
## Length: 3268 
## Missing values: 3077 
## Minimum: NA 
## Maximum: NA 
## Mean: NA 
## Median: NA 
## Quantiles
##   0%  25%  50%  75% 100% 
##  0.0  0.0  0.0  0.2  4.7 
## 
##  notes.plot 
## Class: character 
## Length: 3268 
## Missing values: 1539 
## Unique values: , NA  Incorporation (incorp/incorp.orig) not entered and was assumed to be none., Emission error. Emission measurements are thought to be inaccurate. See ALFAM2 database paper along with Haeni et al. (2016) (Atmos. Environ. 125: 92-99)., Emission error. Emission data are thought to be inaccurate. See ALFAM2 database paper along with Haeni et al. (2016) (Atmos. Environ. 125: 92-99)., ,  Wind tunnel was removed during rain, flux set to zero. Manually Added 0.675 ml precipitation. Wind tunnel was removed during rain, flux set to zero. Manually Added 0.225 ml precipitation. ,  Wind tunnel was removed during rain, flux set to zero. Manually Added 0.675 ml precipitation.  Wind tunnel was removed during rain, flux set to zero. Manually Added 0.225 ml precipitation. Wind tunnel was removed during rain, flux set to zero.,  Wind tunnel was removed during rain, flux set to zero. Manually Added 0.675 ml precipitation. Wind tunnel was removed during rain, flux set to zero. Manually Added 0.225 ml precipitation. Wind tunnel was removed during rain, flux set to zero., AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Mean of two nearest datapoints. AirTemp - Manually Filled. Single weather observation covering multiple shifts.; SolRad - Manually Filled. Single weather observation covers multiple shifts.; SoilTemp - Mean of two nearest datapoints. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.;  , AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Manually Filled. Nearest datapoint chosen. AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.;  AirTemp - Manually Filled. Closest matching observation chosen.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.;  AirTemp - Manually Filled. Closest matching observation chosen.; SolRad - Manually Filled. Averaging of two nearest datapoints.;   SolRad - Manually Corrected. Infeasible datapoint obscuring results.; , AirTemp - Manually Filled. Single nearest weatherobservation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp  - Manually filled. Single weather observation covering multiple shifts AirTemp - Manually Filled. Nearest datapoint chosen.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp  - Manually filled. Encompassing weather observation chosen. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp  - Manually filled. Average of nearest datapoints.  AirTemp - Manually Filled. Nearest datapoint chosen.; SolRad - Manually Filled. Nearest observation chosen.; SoilTemp  - Manually filled. Encompassing weather observation chosen. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Nearest observation chosen.; SoilTemp  - Manually filled. Average of nearest datapoints., AirTemp - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Manually Filled. Single weather observation covering multiple shifts. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Manually Filled. Average of two nearest datapoints. , AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Manually filled. Encompassing weather observation. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Manually filled. Average of nearest datapoints. , AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Filled Manually. Single weather observation covers multiple shifts. AirTemp - Manually Filled. Single nearest weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Filled Manually. Single weather observation covers multiple shifts. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Filled Manually. Averaging of two nearest datapoints. AirTemp - Manually Filled. Closest observation assigned.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Filled Manually. Nearest datapoint chosen. AirTemp - Manually Filled. Single nearest weather observation covers multiple shifts.; SolRad - Manually Filled. Nearest datapoint chosen.; SoilTemp - Filled Manually. Nearest datapoint chosen.  SolRad - Manually Corrected. Infeasible datapoint obscuring results.; , AirTemp - Manually Filled. Nearest datapoint chosen.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Filled Manually. Nearest datapoint. AirTemp - Manually Filled. Single nearest weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Filled Manually. Nearest datapoint. AirTemp - Manually Filled. Nearest datapoint chosen.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.;  , AirTemp - Manually Filled. Single nearest weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Filled Manually. Nearest Datapoint. AirTemp - Manually Filled. Single nearest weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Filled Manually. Averaging of two nearest datapoints. AirTemp - Manually Filled. Average of two nearest datapoints; SolRad - Manually Filled. Averaging two nearest datapoints.;  , AirTemp - Manually Filled. Single nearest weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Manually Filled. Single weather observations covering multiple shifts. AirTemp - Manually Filled. Nearest datapoint chosen.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Manually Filled. Nearest datapoint. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Manually Filled. Average of two nearest datapoints. , AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SoilTemp - Filled Manually. Single weather observation covers multiple shifts. AirTemp - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Filled Manually. Averaging of two nearest datapoints. AirTemp - Manually Filled. Averaging of two nearest datapoints.;  , AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Manually Filled. Average of two nearest datapoints. AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SolRad - Manually Filled. Single nearest weather observation covers multiple shifts.; SoilTemp - Manually Filled. Single weather observations covering shift. , AirTemp - Manually Filled. Averaging of two nearest datapoints.; SolRad - Manually Filled. Averaging of two nearest datapoints.; SoilTemp - Filled Manually. Averaging of two nearest datapoints. AirTemp - Manually Filled. Single weather observation covers multiple shifts.; SolRad - Single nearest weather observation covers multiple shifts.; SoilTemp - Filled Manually. Single weather observation covers multiple shifts.  SolRad - Manually Corrected. Infeasible datapoint obscuring results.; ,  0.4 mm of precipitation added manually to this shift. C.f. Notes.txt., Manually filled out c.f. \2004-2005_Rhum_Per_Shift.nb\, Unclassified Items.  Soil Temperature - Manually filled out by averaging two nearest datapoints. 0.65 mm of precipitation added manually to this shift. C.f. Notes.txt. 0.85 mm of precipitation added manually to this shift. C.f. Notes.txt.,  0.2 mm of precipitation added manually to this shift. C.f. Notes.txt. 0.4 mm of precipitation added manually to this shift. C.f. Notes.txt., Kent_2001_bio_sep, Kent_2001_raa, Kent_2001_bio_sep_deluted, Kent_2001_raa_deluted, Kent_2001_bio, Kent _02_bio, Kent _02_raw, Kent _02_bio_sep, OBS: Application done in a winter wheat field , Application problem. Improper injector operation. Exclude data from analysis., D1 D2 D3 D4 D5 D6, D1 D2 D3 D4 D5 D6 , Modeled flux ,  Modeled flux,  Rain and relative humidity average of previous and subsequent values,  Radiation, rain (0), and relative humidity average or previous and subsequent, Also part of experiment 1990-24 for inst 106. See 1990-24 for non-acidified results., Duplicate observation. These will be removed in the make_database.R script., Surface applied acidified and incorporated (rotary cultivator) before sowing spring barley., Surface applied, non acidified and incoporated (rotary cultivator) before sowing spring barley., Direct injection before sowing before sowing., Control., Surface applied, non acidified and non incoporated before sowing spring barley., Control. beside the field (further distant background)., Surface applied on standing crop (spring barley)., Crop tube was winter wheat at the end of tillering stage. , Anerobic digested as well! Crop tube was winter wheat at the end of tillering stage. Anerobic digested as well!, Mink slurry. Crop tube was winter wheat at the end of tillering stage. Mink slurry., Crop tube was winter wheat at the end of tillering stage. Control. Control., Crop tube was winter wheat at the end of tillering stage., Control. beside the field (further distant background). Winter wheat at the beginning of flag leaf emergence., Winter wheat at the beginning of flag leaf emergence. , Winter wheat at the beginning of flag leaf emergence. Control. Contol., Anerobic digested as well! Winter wheat at the beginning of flag leaf emergence. Anerobic digested as well!, Anerobic digested as well!, Winter wheat at the beginning of flag leaf emergence.,  Precip - Manually added 0.6096 mm precipitation. Data covers multiple shifts. Precip - Manually added 0.1524 mm precipitation. Data covers multiple shifts.,  Precip - Manually added 3.175 mm precipitation. Data covers multiple shifts. Precip - Manually added 0.381 mm precipitation. Data covers multiple shifts. Precip - Manually added 0.0635 mm precipitation. Data covers multiple shifts. Precip - Manually added 0.381 mm precipitation. Data covers multiple shifts; Precip - Manually added 0.1905 mm precipitation. Data covers multiple shifts., ., NA, The plot for Digestate experiments is the same. We carried out measurements on the same plot in 3 consecutve years, The plot for Urea experiments is the same. We carried out measurements on the same plot in 3 consecutve years, manual application was done for the rectangular areas, 40 cm wide and 80 cm long (0.32m2), covered by wind tunnels. 3 wind tunnels are used as replicates., manual application was done for the rectangular areas, 40 cm wide and 80 cm long (0.32m2), covered by wind tunnels. 3 wind tunnels are used as replicates, the reported emission is the mean values., manual application was done for the rectangular areas, 40 cm wide and 80 cm long (0.32m2), covered by wind tunnels. 2 wind tunnels are used as replicates, the reported emission is the mean values., crop heights change between measurement series: S1: 5; S2:5; S3:5; S4: 15; S5: 25; S6:35, crop height changes between measurement series: S1: 5; S2:5; S3:5; S4: 15; S5: 25; S6:35, 15 cm of crop residues, Height (cm): 15 cm of crop residues, no plant present in the field, crop height changes between measurement series: S1: 60; S2:35; S3:75; S4: 100; S5: 130, permanent grassland, application rate: 100 kg N/ha, permanent grassland, application rate: 70 kg N/ha, winter wheat, application rate: 85 kg N/ha 
## 
##  flag.plot 
## Class: character 
## Length: 3268 
## Missing values: 0 
## Unique values: , e, a, m, d, m i
```
