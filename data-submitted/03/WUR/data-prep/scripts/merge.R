# Merge

arablep <- merge(arable1, arable2)
arablep[, app_incorp_method := paste(method, methodDetail)]
arablep[, treatment_descrip := methodDetail]

# Sort out names and units
arablep[, project := '']
arablep[, experiment := paste0('B', substr(id, 1, 7))]
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
arablep[, till_before := '']
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
arablep[, app_rate := rate]
arablep[, app_unit := 't/ha']
# NTS: check incorp interpretation!
arablep[, incorp := 'None']
arablep[grepl('[Ii]ncorp|[Cc]ultiv', app_incorp_method), incorp := 'Shallow']
arablep[grepl('[Pp]lough', app_incorp_method), incorp := 'Deep']
# NTS: And incorporation time!
arablep[, incorp_time := -999]

# Plot sheet
arableplot <- arablep[, project:incorp_time]

# Experments and Treatments worksheets are subsets of Plots here (because notes are missing there is nothing more to include)????
arableexper <- unique(arablep[, .(project, experiment)])

arabletreat <- arablep[, .(project, experiment, plot_code, treatment_descrip)]

# Emission sheet
# Fix id problem from one sheet
arable3[, id := gsub("^'", '', id)]
arable3[, experiment := paste0('B', substr(id, 1, 7))]
arable4[, experiment := paste0('B', substr(id, 1, 7))]
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
arableemis <- arablee[, .(project, experiment, field, plot_code, plot_code, replicate, shift, t_start, t_end, time.4,
                          meas_tech, meas_tech_det, detect_lim, d_val, d_unit, flux, flux_unit, surf_pH, temp,
                          air_temp_z, soil_temp, soil_temp_z, soil_surf_temp, radiation, wind2m)] 
