# Combine new (uptake 3) with old data

mn <- names(pdat.old)[!names(pdat.old) %in% intersect(names(pdat), names(pdat.old))]
mn

# Rename some old columns
names(pdat.old)[names(pdat.old) %in% c('first.row.in.file', 'last.row.in.file')] <- c('first.row.in.file.int', 'last.row.in.file.int')
names(pdat.old)[names(pdat.old) == 'database'] <- 'uptake'

# Fill in some columns no longer used, just to be explicit about it
pdat$exper2 <- NA
pdat$rep2 <- NA
pdat$acid <- grepl('acid', tolower(paste(pdat$man.trt1, pdat$man.trt2, pdat$man.trt3)))

# Some other derived columns
# NTS: Use a function here, can apply to idat too
pdat$meas.tech.orig <- pdat$meas.tech
pdat$meas.tech2 <- pdat$meas.tech
pdat$meas.tech2[tolower(pdat$meas.tech) %in% c('ihf', 'zinst', 'micro met', 'bls', 'agm', 'fipdates', 'ec')] <- 'micro met'
pdat$meas.tech2[tolower(pdat$meas.tech) %in% c('wind tunnel', 'windtunnel')] <- 'wt'

pdat$crop.orig <- pdat$crop
pdat$crop <- tolower(pdat$crop)

pdat$soil.type2 <- NA

pdat$man.source.orig <- pdat$man.source
pdat$man.source <- gsub('cattle', 'cat', tolower(pdat$man.source))

am <- c(`Band spread or trailing hose` = 'bsth',
        Broadcast = 'bc',
        `NUGA-tine` = 'ts', # NTS: Check with JMP
        `Open slot injection` = 'os',
        `Trailing shoe` = 'ts',
        `Wide band` = 'bsth')
pdat$app.method.orig <- pdat$app.method
pdat$app.method <- am[pdat$app.method.orig]
pdat$app.method2 <- pdat$app.method

# Incorporation
pdat$incorp.orig <- pdat$incorp
pdat$incorp <- tolower(pdat$incorp)

# Starting date
pdat$date.start <- as.Date(pdat$t.start.p)

###################################################################################################################
# Equilibrium NH3 calcs
temp.k <- pdat$air.temp.1 + 273.15
R <- 0.000082057

# Molal TAN concentration
m.tan <- pdat$man.tan/14.0067/(1 - pdat$man.dm/100)

# Ionic strength (set to TAN concentration)
mu <- m.tan

# Deby-Huckel constants
a <- 0.5
b <- 0.3

# Charge on NH4+
z <- 1

# Activity coefficients, equilibrium constant, Henry's law constant (m3/kg)
g.NH4 <- 10^(-a*z^2*sqrt(mu)/(1 + b*2.5*sqrt(mu)))
k.NH4 <- 10^(0.0905 + 2729.31/temp.k)
h.NH3 <- R*temp.k*10^(-3.51645 -0.0013637*temp.k + 1701.35/temp.k)

# Free NH3 (mol/kgw) and equilibrium gas-phase NH3 (mol/m3)
m.NH3 <- g.NH4*m.tan/(k.NH4*10^(-pdat$man.ph) + g.NH4)
cg.NH3 <- m.NH3/h.NH3

# Free NH3 (g/kgw)
pdat$man.freeNH3 <- 14.0067*m.NH3
# Equilibrium NH3 (g) (g/m3)
pdat$man.eq.gasNH3 <- 14.0067*cg.NH3

pdat$flag <- NA

# NTS: Ready for merge now!
