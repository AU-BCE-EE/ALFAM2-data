
dd <- subset(pdat, app.method %in% c('bc', 'bsth', 'ts', 'os', 'cs'))
dd$app.mthd <- factor(dd$app.method, levels = c('bc', 'bsth', 'ts', 'os', 'cs'), 
                      labels = c('Broadcast', 'Trailing hose', 'Trailing shoe', 'Open slot injection', 'Closed slot injection'))
ggplot(dd, aes(country, e.rel.final, colour = app.mthd, shape = app.mthd)) +
  geom_jitter(alpha = 0.6) +
  scale_color_brewer(palette = "Set1") +
  labs(x = 'Country', y = 'Relative emission (% TAN)', colour = '', shape = '') +
  theme_bw() +
  theme(legend.position = 'top', axis.text.x = element_text(angle=90, vjust=.5, hjust=1)) +
  facet_wrap(~ paste('Uptake', uptake)) +
  coord_cartesian(ylim = c(0, 1.3)) +
  guides(colour = guide_legend(nrow = 2))
ggsave('../plots/ALFAM2_data_summary.pdf', height = 3.3, width = 6.7)
ggsave('../plots/ALFAM2_data_summary.png', height = 3.0, width = 5)

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



