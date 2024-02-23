# Miss nr/id
arable1[, sheet1 := TRUE]
arable2[, sheet2 := TRUE]
arable3[, sheet3 := TRUE]
arable4[, sheet4 := TRUE]
ids <- merge(arable1[, .(nr, id, sheet1)], arable2[, .(nr, id, sheet2)], all = TRUE)
ids <- merge(ids, unique(arable3[, .(nr, id, sheet3)]), all = TRUE)
ids <- merge(ids, unique(arable4[, .(nr, id, sheet4)]), all = TRUE)
ids[, all_sheets := sheet1 & sheet2 & sheet3 & sheet4 & !is.na(sheet1) & !is.na(sheet2) & !is.na(sheet3) & !is.na(sheet4)]
ids[all_sheets==FALSE, ]


