# Get unique application methods

am <- unique(arable1[, .(method, methodDetail)])
gm <- unique(grass1[, .(method, methodDetail)])

fwrite(am, 'arable_app.csv')
