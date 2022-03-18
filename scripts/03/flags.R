# Sort out int- and plot-level flags

for (i in names(dat)) {
  for (j in names(dat[[i]])) {

    dat[[i]][[j]] <- addFlags(dat[[i]][[j]])
    dat[[i]][[j]] <- fixFlags(dat[[i]][[j]])

  }
}


