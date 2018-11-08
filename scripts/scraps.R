xx <- d
d <- xx

# Add keys (ids) from original database
do <- read.csv('../archive/01.0/ALFAM_interval.csv')

nrow(do)
nn <- nrow(d)
mvars <- c('database', 'institute', 'proj', 'exper', 'field', 'plot', 
           'treat', 'rep', 'meas.tech', 'interval', 'dt') 
d <- merge(d, do[, c(mvars, c('eid', 'oid', 'pid', 'pmid'))], by = mvars)
if(nrow(d) != nn) stop('Problem adding keys, see abn198')
nrow(d)


sum(d$cpmid != do$cpmid)
i <- which(d$pmid != do$pmid)
head(i)

x <- d[i[1], ]
xo <- do[i[1], ]
x$cpmid
xo$cpmid
x$cpmid <- xo$cpmid <- NULL
cbind(t(x), t(xo))


sum(d$ct != do$ct)
sum(d$inst != do$inst)
sum(d$file != do$file)
sum(d$row.in.file != do$row.in.file)
sum(na.omit(d$j.NH3) != na.omit(do$j.NH3))
sum(d$pmid != do$pmid)
sum(d$pmid != as.integer(d$cpmid))
sum(d$pmid != as.integer(do$cpmid))
sum(do$pmid != as.integer(do$cpmid))
i <- which(d$pmid != do$pmid)
head(i)

levels(

x <- d[i[1], ]
xo <- do[i[1], ]
cbind(t(x), t(xo))

dmerge <- merge(d, do, c('file', 'row.in.file'), suffixes = c('', '.old'))
dmerge$pdiff <- dmerge$pmid != dmerge$pmid.old
table(dmerge$inst, dmerge$pdiff)

length(unique(d$pmid))
length(unique(do$pmid))


i <- which(d$file != do$file)
head(i)

sum(signif(na.omit(d$j.NH3), 2) != signif(na.omit(do$j.NH3), 2))
i <- which(signif(na.omit(d$j.NH3), 2) != signif(na.omit(do$j.NH3), 2))
i

d[i[15], c('plot', 'j.NH3', 'dt', 'interval', 'row.in.file', 'file')] 
do[i[15], c('plot', 'j.NH3', 'dt', 'interval', 'row.in.file', 'file')] 
do[i[15], 'j.NH3']
sum(d$cpmid != do$cpmid)

sum(as.integer(d$cpmid) == d$pmid)
sum(as.integer(d$cpmid) != d$pmid)
sum(as.integer(d$cpmid) != do$pmid)
sum(d$pmid != do$pmid)
sum(as.integer(d$pmid) != as.integer(do$pmid))

sum(d$oid != do$oid)
i <- which(d$pmid != dold$pmid)
head(i)

x <- d[598, ]
xo <- do[598, ]

cbind(t(x), t(xo))
x$pmid
xo$pmid
length(unique(d$pmid))
length(unique(do$pmid))

x <- subset(d, row.in.file == 368 & inst == 103)



plot(d$pmid)
points(do$pmid, col = 'red')

sum(d$pmid != do$pmid)
sum(ds$pmid != dso$pmid)
sum(ds$crop != dso$crop)
sum(ds$ct.max != dso$ct.max)
sum(ds$tan.app != dso$tan.app)
sum(is.na(ds$tan.app))
sum(is.na(dso$tan.app))

x <- subset(ds, pmid == 1517)
x$ct.max

table(ds$crop)
table(dso$crop)

all.equal(ds, dso)

dim(

dim(d)
dim(dold)

table(d$pmid)
table(dold$pmid)

all.equal(d, dold)
dmerge <- merge(d, dold, c('pmid', 'row.in.file'), suffixes = c('', '.old'))
head(dmerge)

i <- which(d$pmid != dold$pmid)
i
length(i)

x <- d[i, ]
xo <- dold[i, ]

head(x, 3)

options(width = 65)# 13 Aug


#dur.summ <- summarise(group_by(ds, dur.period),
#                      Plots = length(ct.max),
#                      Institutes = length(unique(inst)),
#                      dur.med = paste0(round(median(ct.max)), ' (', round(sd(ct.max), 1), ')'),
#                      f6.med  = paste0(round(100*median(na.omit(e.6/e.final))),  ' (', round(100*sd(na.omit(e.6/e.final))),  ')'),
#                      f12.med = paste0(round(100*median(na.omit(e.12/e.final))), ' (', round(100*sd(na.omit(e.12/e.final))), ')'),
#                      f24.med = paste0(round(100*median(na.omit(e.24/e.final))), ' (', round(100*sd(na.omit(e.24/e.final))), ')'),
#                      f48.med = paste0(round(100*median(na.omit(e.48/e.final))), ' (', round(100*sd(na.omit(e.48/e.final))), ')'),
#                      f72.med = paste0(round(100*median(na.omit(e.72/e.final))), ' (', round(100*sd(na.omit(e.72/e.final))), ')'),
#                      f96.med = paste0(round(100*median(na.omit(e.96/e.final))), ' (', round(100*sd(na.omit(e.96/e.final))), ')')
#                     )
#
#dur.summ

# 7 Feb


unique(dp$app.start.orig)

x <- subset(dp, !is.na(dp$app.start.orig) & !grepl('-', dp$app.start.orig))
unique(x$file)

y <- subset(x, institute == 'SDU')
y$first.row.in.file

y
unique(y$app.start.orig)

#5 Feb 2017 stray code in main.R

dsn$flag[grepl('Improper injector operation', dsn$notes)] <- 'a'
which(grepl('Improper injector operation', dsn$notes))

d$flag <- as.character(d$flag)
d$flag[grepl('Improper injector operation', d$notes)] <- 'a'
unique(d$flag)


# 24 Jan 2017 WUR dups

d$prob <- c(NA, diff(d$j.NH3) < 0.01*d$j.NH3[-nrow(d)] & diff(d$database) == 1 & d$man.ph[-1] == d$man.ph[-nrow(d)])

x <- d[d$prob, ]
x

x[, c('inst', 'dt', 'j.NH3', 'row.in.file', 'man.ph', 'prob')]
d[sort(c(which(d$prob), which(d$prob) - 1)), c('inst', 'dt', 'j.NH3', 'row.in.file', 'man.ph', 'prob')]

# None of these seem to match up






# Drop both 102 and 212
ddd <- subset(d1, !inst %in% c(212, 102))

# Model 
mod <- lme(log10(e.48) ~ app.method + app.method:
           (log.man.tan + log.app.rate + man.dm + man.ph + air.temp.24 + wind.1m.24 + crop.z), 
           random = ~ 1|inst/mxs, data=ddd)

summary(mod)

feffects <- getFEAMCV(mod, digits = 3, alpha = alpha)
sink('../tables/mmod_feffects_no212_no102.md')
  print(kable(feffects, format = 'markdown', digits = c(1, 1, 3, 1, 3, 2, 3)))
sink()

render('../tables/mmod_feffects_no212_no102.md', 'word_document', output_dir = '../tables')

reffects <- merge(insteffects, mseffects, by = 'Code', suffixes = c('.inst', '.ms'))
reffects$Value.tot <- reffects$Value.inst + reffects$Value.ms
reffects$releffect.tot <- 100*(10^reffects$Value.tot - 1)
reffects$soilcode <- factor(reffects$Soil, labels = letters[1:length(unique(reffects$Soil))])
reffects$meascode <- factor(reffects$`Meas. tech`, labels = 1:length(unique(reffects$`Meas. tech`)))
reffects$smcode <- paste0(reffects$meascode, reffects$soilcode)
reffects$instcode <- as.integer(factor(reffects$Code))

pdf('../plots/inst_effects2.pdf', height = 3, width = 3, pointsize = 10)

  plot(releffect.tot ~ instcode, data = reffects, xlab = '', xaxt = 'n', type = 'n', ylab = 'Relative effect (%)')
  axis(1, at = 1:length(unique(reffects$Code)), labels = unique(reffects$Code), las = 2)
  abline(v = unique(reffects$instcode), col = 'gray95')
  abline(h = -1:5*50, col = 'gray95')
  abline(h = 0, lty = 2)
  text(reffects$instcode, reffects$releffect.tot, reffects$smcode, cex = 0.8)

dev.off()

sink('../tables/inst_effects_codes2.txt')
  print(unique(reffects[, c('Meas. tech.', 'meascode')]))
  print(unique(reffects[, c('Soil', 'soilcode')]))
sink()


#dd$e.rel.24.pred <- 10^predict(mod)
#dd$e.rel.24.resid <- 100*(10^(-resid(mod)) - 1)
#dd[,c('e.rel.24', 'e.rel.24.pred', 'e.rel.24.resid')]
#plot(e.rel.24.resid ~ wind.1m.24, data = dd)
#head(dd)
#plot(mod)

#dd <- subset(dd, app.method == 'bc')
#mod <- lme(log10(e.rel.24) ~ 
#           (man.dm + man.ph + app.rate + air.temp.24 + wind.1m.24 + crop.z), 
#           random = ~ 1|inst/mxs, data=dd)
#summary(mod)
#
#insteffects <- as.data.frame(summary(mod)$coefficients$random$inst)
#insteffects$inst <- rownames(insteffects)
#insteffects <- insteffects[ , c('inst', '(Intercept)')]
#names(insteffects) <- c('Code', 'Value')
#insteffects$`Rel. effect` <- 100*(10^insteffects$Value - 1)
#rownames(insteffects) <- NULL
#insteffects <- rounddf(insteffects, 3)

x <- subset(dd, inst == '2_14')
# Cell means
#cmeans <- dd %>%
#            group_by(inst, institute, app.method, soil.type, meas.tech, ixm) %>%
#            summarise(
#                      crop.z = mean(na.omit(crop.z)),
#                      man.dm = mean(man.dm), man.tan = mean(na.omit(man.tan)), man.ph = mean(na.omit(man.ph)),
#                      air.temp.24 = mean(air.temp.24), wind.1m.24 = mean(wind.1m.24), rad.24 = mean(na.omit(rad.24)),
#                      e.rel.24.mn = 100*geomean(e.rel.24), e.rel.24.sd = sd(log10(e.rel.24)), n = length(e.rel.24)
#                      ) %>%
#            as.data.frame() %>%
#            rounddf(3)


# lmer



summary(mod)
sink('../output/mmod1.txt')
print(as.data.frame(summary(mod)$tTable))
print(as.data.frame(summary(mod2)$tTable))
sink()

mod <- lme(log10(e.rel.24) ~ app.method*
           (man.dm + man.ph + app.rate + air.temp.24 + wind.1m.24 + crop.z), 
           random = ~ 1|ixmxs, data=dat)

reffects <- as.data.frame(summary(mod)$coefficients$random$ixmxs)
names(reffects) <- 'coef'
reffects$inst <- substr(rownames(reffects), 1, 4)
reffects

feffects <- as.data.frame(summary(mod)$tTable)
names(feffects) <- 'coef'
feffects
10^feffects - 1


plot(as.numeric(factor(reffects$inst)), reffects$coef, xaxt = 'n')
axis(1, at = 1:length(unique(reffects$inst)), labels = sort(unique(reffects$inst)))

# lmer approach
mod <- lmer(log10(e.rel.24) ~ app.method*
           (man.dm + man.ph + app.rate + air.temp.24 + wind.1m.24 + crop.z) +  
           (1|ixmxs), data=dat)

mod <- update(mod, .~. - app.method:air.temp.24)
drop1(mod)
mod <- update(mod, .~. - app.method:man.dm)
drop1(mod)
mod <- update(mod, .~. - app.method:crop.z)
drop1(mod)
mod <- update(mod, .~. - crop.z)
drop1(mod)

summary(mod)$coefficients
fixed.effects(mod)

mod
summary(mod)
coef(mod)

od <- lm(e.rel.48.lg ~ ixm + app.method*(man.dm + man.ph + app.rate + air.temp.24 + wind.1m.24 + crop.z), data = gc2)

# end lmer

# With subset
dim(ds)
dim(dss)

x <- ddply(dss, c('man.source', 'app.method', 'crop'), summarise, n = sum(!is.na(e.final)))
x <- subset(x, n != 0 & man.source %in% c('cat', 'pig') & !is.na(app.method))
xw <- dcast(x, man.source + app.method ~ crop, value.var = 'n', fun.aggregate = sum)
print(xtable(xw), file = 'manxappxcrop_table_sel.txt', include.rownames = FALSE)
write.table(xw, 'manxappxcrop_table_sel_tab.txt', sep = '\t', row.names = FALSE)


# Crop by application method table
x <- table(ds$crop, ds$app.method)
x <- x[order(-x[, 1]), ]
print(xtable(x), file = 'cropxapp_table.txt')
write.table(x, 'cropxapp_table_tab.txt', sep = '\t', row.names = FALSE)
sum(ds$man.source == 'None')

pvcsumm <- ddply(dsn, 'uexper', summarise, ncat = sum(man.source == 'cat'), npig = sum(man.source == 'pig'))
pvcsumm <- subset(pvcsumm, ncat>0 & npig>0)
pc1 <- droplevels(subset(dsn, uexper %in% pvcsumm$uexper))
dim(pc1)
table(pc1$man.source, pc1$app.method)
table(pc1$man.source, pc1$crop, pc1$app.method)
table(pc1$man.source, pc1$inst, pc1$crop, pc1$app.method)
# Grass, broadcast the only case with pig and cattle for more than one institute!
dim(pc1)
pc1 <- subset(pc1, !is.na(e.rel.48.lg) & !is.nan(e.rel.48.lg) & !is.infinite(e.rel.48.lg))
pc1 <- droplevels(subset(pc1, man.source %in% c('cat', 'pig') & crop == 'grass' & app.method == 'bc'))
pc1 <- droplevels(subset(pc1, !is.na(man.dm) & !is.na(air.temp.24) & !is.na(wind.24)))
pc2 <- droplevels(subset(pc1, !is.na(man.dm) & !is.na(man.ph) & !is.na(air.temp.24) & !is.na(wind.24)))
dim(pc1)
dim(pc2)
x <- table(pc1$man.source, pc1$inst)
print(xtable(x), file = 'pc1_count_table.txt')


# Table of institutes
x <- unique(ds[, c('inst', 'institute', 'country')])
x <- x[order(x$inst), ]
print(xtable(x), file = 'institute_table.txt', include.rownames = FALSE)

# Grass only
dsg <- droplevels(subset(ds, crop == 'grass' & app.method != 'pi' & man.source %in% c('cat', 'pig')))
table(dsg$man.source, dsg$app.method)
mean(dsg$ct.max>48)
mean(dsg$ct.max>72)
mean(na.omit(dsg$e.rel2.48))
mean(na.omit(dsg$e.rel2.48)>.8)

hist(dsg$ct.max)

# 
pdf('grass_var_pairs.pdf', height = 11, width = 8.5)
  par(mfrow = c(2, 1))
  for(i in unique(dsg$man.source)) {
    dd <- subset(dsg, man.source == i)
    for(j in unique(dd$app.method)) {
      ddd <- subset(dd, app.method == j)
      pairs(ddd[, c('man.ph', 'man.dm', 'crop.z', 'wind.24', 'air.temp.24')], main = paste(i, j))
    }
  }
dev.off()

range(na.omit(ds$e.rel.48))
sum(na.omit(ds$e.rel.48)>1)
mean(na.omit(ds$e.rel.48)>1)

table(ds$app.method, ds$meas.tech)


runMod <- function(p, dat, p0, evt, group = NA, parallel = FALSE) {
  if(nrow(dat) == 0) stop('dat argument has no rows (idiot).')

  # Pull out transfer info (from fast to slow pool, for incorporation or infiltration
  if(any(is.trans <- names(p) %in% c('t.trans', 'f.trans'))) {
    trans <- c(ct = as.numeric(p)[is.trans][1], f = as.numeric(p)[is.trans][2])
    p <- p[!is.trans]
  } else trans <- NULL

  # Check that all names for p end with a number
  if(any(!grepl('[0-9]$', names(p)))) stop('One or more names in p does not end with a number.')

  if(parallel) {
    library(foreach)
    library(parallel)
    library(doParallel)
  }

  # Add original order column before sorting
  dat$orig.order <- 1:nrow(dat)

  # Sort
  if(is.na(group)) {
    dat <- dat[order(dat$ct), ]
  } else {
    dat <- dat[order(dat[, group], dat$ct), ]
  }

  # Calculate rate constants
  which0 <- grep('0$', names(p))
  which1 <- grep('1$', names(p))
  which2 <- grep('2$', names(p))
  which3 <- grep('3$', names(p))
  which0e <- grep('0e$', names(p)) # Incorporation
  names(p) <- gsub('[0-9]', '', names(p))
  if(!all(ww <- sort(c(which0, which1, which2, which3)) == 1:length(p))) stop('Something wrong with p. ', paste(ww, collapse = ', '))
  # Make sure parameter names can be found in dat
  if(any(ncheck <- !(names(p) %in% c('int', names(dat))))) stop ('Names in parameter vector p not in dat (or not "int"): ', names(p)[ncheck])
  if(length(which0)>0) r0 <- calcRates(p[which0], dat, tr = 'logistic') else r0 <- rep(0, nrow(dat))
  if(length(which1)>0) r1 <- calcRates(p[which1], dat) else r1 <- rep(0, nrow(dat))
  if(length(which2)>0) r2 <- calcRates(p[which2], dat) else r2 <- rep(0, nrow(dat))
  if(length(which3)>0) r3 <- calcRates(p[which3], dat) else r3 <- rep(0, nrow(dat))
  if(length(which0e)>0) r0e <- calcRates(p[which0e], dat) else r0e <- rep(0, nrow(dat))
  if(any(is.na(c(r0, r1, r2, r3, r0e)))) stop('NA values in rates--look for missing values in predictor variables and double-check parameters agaist dat column names')

  # Add starting f0 to trans
  trans <- list(c(ct = 0, f = r0), trans)

  # Now emission calculations
  if(is.na(group)) {
    a0 <- (1-r0[1])*dat[, p0][1]
    u0 <- r0[1]*dat[, p0][1]
    ct <- dat$ct

    if(is.null(trans)) {
      e <- calcEmis(ct, a0, u0, r1, r2, r3)
    } else {

      for(i in length(trans)) {
        transi <- trans[[i]]
	tct <- transi$ct
	tft <- transi$f
	ct <- c(ct[ct <= transi$ct], tct)

      }
    }

    for(i in length(trans)) {
      transi <- trans[[i]]
      cti <- ct[ct <= transi$ct
      e <- calcEmis(dt, ct, a0, u0, r1, r2, r3)
    }
    e <- e[order(dat$orig.order), ]
    return(e)
  }

  y <- dat
  e <- NULL

#  # If parallel
#  if(parallel) {
#    e <- foreach(i = sort(unique(dat[, group])), .packages = 'minpack.lm') %dopar% {
#      dd <- dat[dat[, group] == i, ]
#      rr1 <- r1[dat[, group] == i]
#      rr2 <- r2[dat[, group] == i]
#      rr3 <- r3[dat[, group] == i]
#      a0 <- (1-r0[dat[, group] == i][1])*dd[, p0][1]
#      u0 <- r0[dat[, group] == i][1]*dd[, p0][1]
#      dt <- dd$dt
#      ct <- dd$ct
#      cbind(group = i, calcEmis(dt, ct, a0, u0, rr1, rr2, rr3))
#    }
#    e <- rbindf(e)
#    names(e)[1] <- group
#    e <- e[order(dat$orig.order), ]
#    return(e)
#  }

  # Or if not parallel
  for(i in sort(unique(dat[, group]))) {
    dd <- dat[dat[, group] == i, ]
    rr1 <- r1[dat[, group] == i]
    rr2 <- r2[dat[, group] == i]
    rr3 <- r3[dat[, group] == i]
    a0 <- (1-r0[dat[, group] == i][1])*dd[, p0][1]
    u0 <- r0[dat[, group] == i][1]*dd[, p0][1]
    dt <- dd$dt
    ct <- dd$ct
    e <- rbind(e, cbind(group = i, calcEmis(dt, ct, a0, u0, rr1, rr2, rr3)))
  }
  names(e)[1] <- group
  e <- e[order(dat$orig.order), ]
  return(e)

}
# Get coefficients and predictions
# merge call would seem to overwrite previous results but note that there is no overlap in the nid with predictions
coefs <- list()
preds <- list()
pr <- data.frame()
for(i in names(mods)) {
  ipr <- data.frame()
  for(m in names(mods[[i]])) {
    mpr <- mods[[i]][[m]][['pred']]
    names(mpr) <- paste0(names(mpr), '.', m)
    ipr <- cbind(ipr, mpr)
    coefs[[paste0(i, '.', m)]] <- coef(mods[[i]][[m]][['nls']])
  }
  pr <- rbind(pr, ipr)
}

head(d)
preds <- rbindf(preds)

d <- merge(d


# Look at application methods within institutes
mod <- lm(e.rel.48.lg ~ -1 + instxmeas +  instxmeas:app.method + air.temp.24 + app.method:man.dm + app.method:wind.24, data = gc1)
ms <- summLogistic(mod, eref = 0.3, drop.inst = FALSE)
cc <- as.data.frame(coef(mod))
cc <- subset(cc, grepl('^inst', rownames(cc)))
cc <- na.omit(cc)
cc$inst <- gsub(':.+', '', rownames(cc))
cc$app.method <- gsub('.+:app.method', '', rownames(cc))
cw <- dcast(cc, inst ~ app.method, value.var = 'coef(mod)')
head(cc)
cw
cw$bc.bsth <- cw$bsth - cw$bc
cw$bc.os <- cw$os - cw$bc
cw$bc.ts <- cw$ts - cw$bc
cw$bsth.os<- cw$os - cw$bsth
cw$bsth.ts<- cw$ts - cw$bsth
cw$ts.os<- cw$os - cw$ts
cf <- melt(cw, id.var = 'inst', measure.vars = 6:10)
cf
eref <- 0.3
tbeta <- exp(cf$value)
oddsref <- eref/(1 - eref)
oddseffect <- tbeta*oddsref
emiseffect <- oddseffect/(1 + oddseffect)
rel.effect <- 100*(emiseffect/eref - 1)
app.effect <- 100*(emiseffect - eref)
cf$rel.effect <- rel.effect
 
head(cf)
plot(jitter(as.numeric(cf$variable)), cf$value, xaxt = 'n')
axis(1, at = 1:length(unique(cf$variable)), labels = sort(unique(cf$variable)))
abline(h = 0)
box()

stripchart(rel.effect ~ variable, data = cf, method = 'jitter', vertical = TRUE)
stripchart(rel.effect ~ variable, data = cf, method = 'jitter', vertical = TRUE, add = TRUE, col = 'red')
abline(h = 0)

drop1(mod, test = 'F')
summary(mod)
table(gc1$inst, gc1$app.method)

# Mixed 
mod <- lme(e.rel.48.lg ~ app.method + air.temp.24 + app.method:man.dm + app.method:wind.24, random = ~ app.method|inst, data = gc1)
summary(mod)
x
plot(mod)
gc1$resid <- resid(mod)
plot(resid ~inst, data = gc1)
plot(resid ~app.method, data = gc1)
plot(app.method ~ inst, data = gc1)

#mod <- lm(e.rel.48.lg ~ inst + inst:app.method + man.dm + crop.z + air.temp.24 + wind.24, data = gc1)
#drop1(mod, test = 'F')
#mod <- update(mod, ~. - crop.z)
#summary(mod)

