

dd <- subset(pdat, app.method %in% c('bc', 'bsth', 'ts', 'os', 'cs'))
dd$app.mthd <- factor(dd$app.method, levels = c('bc', 'bsth', 'ts', 'os', 'cs'), 
                      labels = c('Broadcast', 'Trailing hose', 'Trailing shoe', 'Open slot injection', 'Closed slot injection'))
ggplot(dd, aes(country, e.rel.final, colour = app.mthd, shape = app.mthd)) +
  geom_jitter(alpha = 0.6) +
  ylim(0, 1.5) +
  scale_color_brewer(palette = "Set1") +
  labs(x = 'Country', y = 'Relative emission (% TAN)', colour = '', shape = '') +
  theme(legend.position = 'top', axis.text.x = element_text(angle=90, vjust=.5, hjust=1)) +
  facet_wrap(~ paste('Uptake', uptake)) 
ggsave('../plots/ALFAM2_data_summary.pdf', height = 3.3, width = 6.7)
ggsave('../plots/ALFAM2_data_summary.png', height = 3.3, width = 4)

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


