
dd <- subset(pdat, app.method %in% c('bc', 'bsth', 'ts', 'os', 'cs'))
dd$app.mthd <- factor(dd$app.method, levels = c('bc', 'bsth', 'ts', 'os', 'cs'), 
                      labels = c('Broadcast', 'Trailing hose', 'Trailing shoe', 'Open slot injection', 'Closed slot injection'))
set.seed(123)
ggplot(dd, aes(country, e.rel.final, colour = app.mthd, shape = app.mthd)) +
  geom_jitter(alpha = 0.6) +
  scale_color_brewer(palette = "Set1") +
  labs(x = 'Country', y = 'Relative emission (frac. TAN)', colour = '', shape = '') +
  theme_bw() +
  theme(legend.position = 'top', axis.text.x = element_text(angle=90, vjust=.5, hjust=1)) +
  facet_wrap(~ paste('Submission period', sub.period)) +
  coord_cartesian(ylim = c(0, 1.3)) +
  guides(colour = guide_legend(nrow = 2))
ggsave('../plots/ALFAM2_data_summary.pdf', height = 3.3, width = 6.7)
ggsave('../plots/ALFAM2_data_summary.png', height = 3.0, width = 5)

ddd <- subset(dd, inst == 205)
set.seed(123)
ggplot(dd, aes(country, e.rel.final, colour = app.mthd, shape = app.mthd)) +
  geom_jitter(alpha = 0.6, colour = 'gray45') +
  geom_jitter(data = ddd, alpha = 0.6) +
  scale_color_brewer(palette = "Set1") +
  labs(x = 'Country', y = 'Relative emission (frac. TAN)', colour = '', shape = '') +
  theme_bw() +
  theme(legend.position = 'top', axis.text.x = element_text(angle=90, vjust=.5, hjust=1)) +
  facet_wrap(~ paste('Submission period', sub.period)) +
  coord_cartesian(ylim = c(0, 1.3)) +
  guides(colour = guide_legend(nrow = 2))
ggsave('../plots/ALFAM2_data_summary_AU.pdf', height = 3.3, width = 6.7)
ggsave('../plots/ALFAM2_data_summary_AU.png', height = 3.0, width = 5)


dd <- subset(cdat, app.method %in% c('bc', 'bsth', 'ts', 'os', 'cs'))
dd$app.mthd <- factor(dd$app.method, levels = c('bc', 'bsth', 'ts', 'os', 'cs'), 
                      labels = c('Broadcast', 'Trailing hose', 'Trailing shoe', 'Open slot injection', 'Closed slot injection'))

dd$j.NH3.norm[dd$j.NH3.norm < 1E-6] <- 1E-6
dd$x <- dd$ct - dd$dt
dd$xend <- dd$ct

ggplot(dd, aes(x = x, y = log10(j.NH3.norm), xend = xend, yend = log10(j.NH3.norm), colour = app.mthd, group = pmid)) +
  geom_segment(alpha = 0.04) +
  coord_cartesian(ylim = c(-5, 0), xlim = c(5.5, 120)) +
  labs(x = 'Time since application (h)', y = expression('Log'[10]~'rel. flux'~(hr^'-1')), colour = '') +
  theme_bw() +
  theme(legend.position = 'none')
ggsave('../plots/ALFAM2_flux_summary.png', height = 2.3, width = 7)
ggsave('../plots/ALFAM2_flux_summary.pdf', height = 3.3, width = 7)

dd <- subset(dd, cta >= 0)
ggplot(dd, aes(x = cta, y = e.rel, colour = app.mthd, group = pmid)) +
  geom_line(alpha = 0.15) +
  coord_cartesian(ylim = c(0, 1.0), xlim = c(0, 168)) +
  labs(x = 'Time since application (h)', y = 'Relative emission (frac. applied TAN)', colour = '') +
  theme_bw() +
  theme(legend.position = 'none')
ggsave('../plots/ALFAM2_emis_summary.png', height = 2.3, width = 7)
ggsave('../plots/ALFAM2_emis_summary.pdf', height = 3.3, width = 7)

# A few example lines
set.seed(10)
pps <- sample(unique(idat$pmid), 20)
dd <- subset(cdat, app.method %in% c('bc', 'bsth', 'ts', 'os', 'cs'))
dd$app.mthd <- factor(dd$app.method, levels = c('bc', 'bsth', 'ts', 'os', 'cs'), 
                      labels = c('Broadcast', 'Trailing hose', 'Trailing shoe', 'Open slot injection', 'Closed slot injection'))
dd <- subset(dd, cta >= 0 & pmid %in% pps)
d0 <- dd[!duplicated(dd$pmid), c('pmid', 'app.mthd')]
d0$cta <- 0
d0$e.rel <- 0
dd <- rbindf(dd, d0)
ggplot(dd, aes(x = cta, y = e.rel, colour = app.mthd, group = pmid)) +
  geom_line() +
  coord_cartesian(ylim = c(0, 1.0), xlim = c(0, 168)) +
  labs(x = 'Time since application (h)', y = 'Relative emission (frac. applied TAN)', colour = '') +
  theme_bw() +
  theme(legend.position = c(0.17, 0.78))
ggsave('../plots/ALFAM2_emis_sel.png', height = 3.3, width = 7)
ggsave('../plots/ALFAM2_emis_sel.pdf', height = 3.3, width = 7)

setDT(dd)
dd[, man.trts := paste(man.trt1, man.trt2, man.trt3)]
dd[, digested := grepl('[Dd]igest', man.trts)]
dd[, separated := grepl('[Ss]epar', man.trts)]
dd[, treat.nm := factor(ifelse(acid, 'Acid', ifelse(digested, 'AD', ifelse(separated, 'Separated', 'None/other'))),
                          levels = c('Acid', 'AD', 'Separated', 'None/other'))]
dd[is.na(treat.nm), treat.nm := 'None/other']

mms <- c(chamber = 'Other chamber', cps = 'Other chamber', wt = 'Wind tunnel', `micro met` = 'Micromet.')
dd[, meas.tech.nm := factor(mms[meas.tech2], levels = c('Micromet.', 'Wind tunnel', 'Other chamber'))]

dd <- dd[!is.na(app.method) & app.method != 'pi' & app.method != 'bss', ]
dd[, app.mthd.nm := factor(app.method, levels = c('bc', 'bsth', 'ts', 'os', 'cs'),
                               labels = c('Broadcast', 'Trailing hose', 'Trailing shoe', 'Open slot\ninjection', 'Closed slot\ninjection'))]

dd[, app.mthd.simp := as.character(app.mthd)]
dd[app.mthd.simp %in% c('bsth', 'ts'), app.mthd.simp := 'bs'] 
dd[app.mthd.simp %in% c('os', 'cs'), app.mthd.simp := 'i'] 
dd[, app.mthd.simp.nm := factor(app.mthd.simp, levels = c('bc', 'bs', 'i'), labels = c('Broadcast', 'Band application', 'Injection'))]

dd[, period := as.character(sub.period)]
dd[corr.period == 3, period := '2/3']
dd[, period.nm := factor(paste('Period', period))]
dd[, sub.period.nm := factor(paste('Period', sub.period))]
# Without na.translate = FALSE I get an NA entry in legend although there are no NA values for treat.nm
ggplot(dd, aes(app.mthd.nm, e.rel.final, colour = country, shape = treat.nm)) +
  geom_jitter(height = 0) +
  stat_summary(aes(app.mthd.nm, e.rel.final, group = app.mthd.nm), colour = 'gray45', lwd = 1, geom = 'tile', fun = function(x) mean(x, na.rm = TRUE)) +
  scale_shape_discrete(na.translate = FALSE) +
  theme_bw() +
  labs(x = 'Application method', y = 'Total emission (frac. applied TAN)', shape = 'Slurry treatment', colour = 'Country') +
  scale_x_discrete(guide = guide_axis(angle = 90)) +
  ylim(0, 1.5) +
  facet_grid(meas.tech.nm ~ sub.period.nm)
ggsave('../plots/emis_summ.png', height = 5, width = 9)
