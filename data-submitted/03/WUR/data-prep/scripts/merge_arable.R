# Merge

arablep <- merge(arable1, arable2)
arablep[, app_incorp_method := paste(method, methodDetail)]
arablep[, treatment_descrip := paste(method, methodDetail, treatment, info)]
#arablep[, treatment_descrip := methodDetail]

# Sort out names and units
arablep[, project := id2exper(id, 'B')]
arablep[, experiment := id2exper(id, 'B')]
arablep[, field := paste0(ifelse(!is.na(idField), paste0(idField, '-'), ''), location)]
arablep[, plot_code := substr(id, 9, 12)]
arablep[, replicate := '']
arablep[, size := area]
arablep[, lat := '']
arablep[, long := '']
arablep[, country := 'NL']
arablep[, topo := '']
arablep[, `:=` (samp_depth = '', clay = '', slit = '', sand = '', org = '')]
arablep[, soil_type := soil]
arablep[, `:=` (soil_water_g = '', soil_water_v = soilMois, soil_moist = '')]
arablep[, soil_pH := '']
arablep[, soil_dens := '']
arablep[, crop_res := '']
arablep[, till_before := ifelse(grepl('plough|cult|pretil', info), 'yes', 'no')]
arablep[, source := manure]
arablep[, source_det := '']
arablep[, `:=` (bedding = '', consist = '')]
arablep[, man_treatment := treatment]
arablep[, `:=` (man_treat2 = '', man_treat3 = '', stor_days = '')]
arablep[, man_DM := dm]
arablep[, `:=` (man_VS = '', man_TN = '', man_TAN = concNH4, man_TIC = '', man_UA = '', man_VFA = '')]
arablep[, man_pH := ph]
arablep[, `:=` (app_start = '', app_end = '')]
arablep[, app_method := method]
arablep[grepl('[Bb]roadcast', app_method), app_method := 'Broadcast']
arablep[grepl('[Dd]eep placement', app_method), app_method := 'Closed slot injection']
arablep[grepl('[Ss]hallow[Ii]njection', app_method), app_method := 'Open slot injection']
# NTS: Check with Jan, there 
arablep[grepl('NarrowBand', app_method), app_method := 'Trailing hose']
arablep[, app_rate := rate]
arablep[, app_unit := 't/ha']
# NTS: check incorp interpretation!
arablep[, incorp := 'None']
arablep[grepl('[Ii]ncorp|[Cc]ultiv', app_incorp_method), incorp := 'Shallow']
arablep[grepl('[Pp]lough', app_incorp_method), incorp := 'Deep']
# Take any "mouldboard plough" in methodDetail as broadcast application
# This will override some of the os values that were based on "deep placement" in method above!
# NTS: Is this correct? Waiting on Jan's answer. . .
arablep[grepl('[Mm]ouldboard plough', app_incorp_method), app_method := 'Broadcast']
# NTS: And incorporation time!
arablep[, incorp_time := 0]
arablep[incorp != 'None', incorp_time := 0.1]
arablep[incorp == 'None', incorp_time := NA]
arablep[, `:=` (man_area = '', inj_dist = '', fur_depth = '', fur_width = '')]
# Sort out crop--this info is in multiple columns in original data
arablep[, crop := 'None']
arablep[landuse != 'baresoil', crop := landuse]
arablep[!is.na(stubble) & stubble > 0, crop := 'stubble']
arablep[grepl('stubble', info), crop := 'stubble']
arablep[, crop_height := stubble]

# Plot sheet
arableplot <- arablep[, project:crop_height]

# Experments and Treatments worksheets are subsets of Plots here (because notes are missing there is nothing more to include)????
arableexper <- unique(arablep[, .(project, experiment)])

arabletreat <- arablep[, .(project, experiment, plot_code, treatment_descrip)]

# Emission sheet
# Fix id problem from one sheet
arable3[, id := gsub("^'", '', id, 'B')]
arable3[, experiment := id2exper(id, 'B')]
arable4[, experiment := id2exper(id, 'B')]
# Merge by experiment not id, because of missing values
# Get more than 973 rows when merging on time and timeCum, so omitted here
arablee <- merge(arable3, arable4, by = c('nr', 'experiment', 'shift'), suffixes = c('.3', '.4'), all = TRUE)
arablee <- merge(arablee, arablep, by = c('nr', 'experiment', 'year', 'method'))

# Average interval flux calculations
arablee[, flux := percEXP / 100 * NH4KgHa / time.4]

# Emission sheet
arablee[, `:=` (t_start = '', t_end = '')]
arablee[, meas_tech := 'IHF']
arablee[, meas_tech_det := 'IHF']
arablee[, `:=` (detect_lim = '', d_val = '', d_unit = '')]
arablee[, flux_unit := 'kg N/ha-hr']
arablee[, surf_pH := '']
arablee[, air_temp_z := 10]
arablee[, `:=` (soil_temp = '', soil_temp_z = '', soil_surf_temp = '')]
arablee[, wind_z := 2]
arableemis <- arablee[, .(project, experiment, field, plot_code, plot_code, replicate, shift, t_start, t_end, time.4,
                          meas_tech, meas_tech_det, detect_lim, d_val, d_unit, flux, flux_unit, surf_pH, temp,
                          air_temp_z, soil_temp, soil_temp_z, soil_surf_temp, radiation, wind2m, wind_z)] 
