# Merge

grassp <- merge(grass1, grass2)
grassp[, app_incorp_method := paste(method, methodDetail)]
#grassp[, treatment_descrip := methodDetail]
grassp[, treatment_descrip := paste(method, treatment, info)]

# Sort out names and units
# NTS: Note gsub '-' to deal with e.g., 2014-23a vs. without a
grassp[, project := id2exper(id, 'G')]
grassp[, experiment := id2exper(id, 'G')]
grassp[, field := paste0(ifelse(!is.na(idField), paste0(idField, '-'), ''), location)]
grassp[, plot_code := gsub('-', '', substr(id, 9, 12))]
grassp[, replicate := '']
grassp[, size := area]
grassp[, lat := '']
grassp[, long := '']
grassp[, country := 'NL']
grassp[, topo := '']
grassp[, `:=` (samp_depth = '', clay = '', slit = '', sand = '', org = '')]
grassp[, soil_type := soil]
grassp[, `:=` (soil_water_g = '', soil_water_v = soilMois, soil_moist = '')]
grassp[, soil_pH := '']
grassp[, soil_dens := '']
grassp[, crop_res := '']
grassp[, till_before := '']
grassp[, source := manure]
grassp[, source_det := '']
grassp[, `:=` (bedding = '', consist = '')]
grassp[, man_treatment := treatment]
grassp[, `:=` (man_treat2 = '', man_treat3 = '', stor_days = '')]
grassp[, man_DM := dm]
grassp[, `:=` (man_VS = '', man_TN = '', man_TAN = concNH4, man_TIC = '', man_UA = '', man_VFA = '')]
grassp[, man_pH := ph]
grassp[, `:=` (app_start = '', app_end = '')]
grassp[, app_method := method]
grassp[grepl('[Bb]roadcast', app_method), app_method := 'Broadcast']
grassp[grepl('[Dd]eep placement', app_method), app_method := 'Closed slot injection']
grassp[grepl('[Ss]hallow[Ii]njection', app_method), app_method := 'Open slot injection']
grassp[grepl('[Nn]arrow[Bb]and', app_method), app_method := 'Trailing shoe']
grassp[, app_rate := rate]
grassp[, app_unit := 't/ha']
grassp[, incorp := 'None']
grassp[, incorp_time := '']
grassp[, `:=` (man_area = '', inj_dist = '', fur_depth = '', fur_width = '')]
grassp[, crop := 'grass']
grassp[, crop_height := hgrass]

# Plot sheet
grassplot <- grassp[, project:crop_height]

# Experments and Treatments worksheets are subsets of Plots here (because notes are missing there is nothing more to include)????
grassexper <- unique(grassp[, .(project, experiment)])

grasstreat <- grassp[, .(project, experiment, plot_code, treatment_descrip)]

# Emission sheet
# Fix id problem from one sheet
grass4[, id := gsub("^'", '', id)]
grass4[, experiment := id2exper(id, 'G')]
grass5[, experiment := id2exper(id, 'G')]

# Merge by experiment not id, because of missing values
# Get more than 973 rows when merging on time and timeCum, so omitted here
grasse <- merge(grass4, grass5, by = c('nr', 'experiment', 'shift'), suffixes = c('.3', '.4'), all = TRUE)
grasse <- merge(grasse, grassp, by = c('nr', 'experiment', 'year', 'method'))
# Get interval timing from nData
grass3[, experiment := id2exper(id, 'G')]

# Emission sheet
grasse <- merge(grasse, grass3[, .(nr, experiment, shift, start, end)], by = c('nr', 'experiment', 'shift'))

grasse[, `:=` (t_start = as.POSIXct(start, format = '%d-%m-%Y %H:%M:%S'), t_end = as.POSIXct(end, format = '%d-%m-%Y %H:%M:%S'))]

# Average interval flux calculations
grasse[, flux := percEXP / 100 * NH4KgHa / time.4]

# Convert radiation from J/cm2-h to J/m2-s
grasse[, rad := radiation * 10000 / (time.4 * 3600)]

grasse[, meas_tech := 'IHF']
grasse[, meas_tech_det := 'IHF']
grasse[, `:=` (detect_lim = '', d_val = '', d_unit = '')]
grasse[, flux_unit := 'kg N/ha-hr']
grasse[, surf_pH := '']
grasse[, air_temp_z := 1.5]
grasse[, `:=` (soil_temp = '', soil_temp_z = '', soil_surf_temp = '')]
grasse[, wind_z := 2]
grassemis <- grasse[, .(project, experiment, field, plot_code, plot_code, replicate, shift, t_start, t_end, time.4,
                          meas_tech, meas_tech_det, detect_lim, d_val, d_unit, flux, flux_unit, surf_pH, temp,
                          air_temp_z, soil_temp, soil_temp_z, soil_surf_temp, rad, wind2m, wind_z)] 
