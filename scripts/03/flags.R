# Sort out plot-level flags, using flags from emis/int

for (i in names(dat)) {
  for (j in names(dat[[i]])) {

    dat[[i]][[j]] <- fixFlags(dat[[i]][[j]])

  }
}


