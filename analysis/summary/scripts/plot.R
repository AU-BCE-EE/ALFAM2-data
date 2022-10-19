

dd <- subset(pdat, app.method %in% c('bc', 'bsth', 'ts', 'os', 'cs'))
dd$app.mthd <- factor(dd$app.method, levels = c('bc', 'bsth', 'ts', 'os', 'cs'), 
                      labels = c('Broadcast', 'Trailing hose', 'Trailing shoe', 'Open slot injection', 'Closed slot injection'))
ggplot(dd, aes(country, e.rel.final, colour = app.mthd, shape = app.mthd)) +
  geom_jitter(alpha = 0.6) +
  ylim(0, 1.5) +
  scale_color_brewer(palette = "Set1") +
  labs(x = 'Country', y = 'Final relative emission (% applied TAN)', colour = '', shape = '') +
  theme(legend.position = 'top', axis.text.x = element_text(angle=90, vjust=.5, hjust=1)) +
  facet_wrap(~ paste('Uptake', uptake)) 
ggsave('../plots/ALFAM2_data_summary.pdf', height = 3.3, width = 6.7)

