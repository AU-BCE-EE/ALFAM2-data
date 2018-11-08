# Sort in identical way
d <-   d[order(d$inst, d$file, d$row.in.file), ]
do <- do[order(do$inst, do$file, do$row.in.file), ]

# pmid will not match now
sum(d$pmid != do$pmid)
sum(d$pid != do$pid)
sum(d$oid != do$oid)


# But measurements should
sum(na.omit(d$j.NH3) != na.omit(do$j.NH3))
sum(na.omit(d$e.cum) != na.omit(do$e.cum))

# ct should no longer match
sum(d$ct != do$ct)
sum(d$interval != do$interval)

