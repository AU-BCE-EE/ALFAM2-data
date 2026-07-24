# Updates/overwrites grouped names of levels for *all* data, not just current submission set

# Only for pdat for now
pdat.comb <- updateLevels(pdat.comb)

# To check
#table(pdat.comb[, c('app.method.orig', 'app.method')], exclude = NULL)
