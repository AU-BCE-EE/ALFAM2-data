# ALFAM2-data Project Memory

## What this project is
Database of ammonia volatilization measurements from field-applied manure. Researchers submit Excel templates; R scripts process them into a unified dataset (two CSV files: plot-level and interval-level) distributed as `.csv.gz`.

## Directory structure (post-reorganization)
- `build/` — R scripts that build the database (was `scripts-make/`), subdirs `02/`, `03/`, `04/`
- `data-submitted/` — raw Excel submissions by period: `02/`, `03/`, `04/`
- `data-output/` — cumulative frozen output by period: `02/`, `03/`, `04/`
- `functions/` — R functions sourced by build scripts, by period: `02/`, `03/`, `04/`
- `logs/` — build logs by period: `02/`, `03/`, `04/` (04/ not yet created)
- `summaries/` — post-build summaries/plots (was `analysis/`)
- `variables/` — variable descriptions as CSV (was `headers/`)
- `docs/` — GitHub Pages site showing html validation logs per submitted file
- `contributors/` — manual contributor CSV; eventually auto-extracted from submissions
- `data-ALFAM1/` — original ALFAM1 database (period 1), read by build/02

## Submission period logic
Each period's output is cumulative (includes all earlier periods).
- Period 4 `load_old.R` reads `data-output/03/*.csv.gz` (periods 1-3 combined)
- Period 3 `load_old.R` reads `data-output/02/*.csv` (periods 1-2 combined)
- Period 3 is now **frozen** — only rebuild if correcting a data error

## Period 4 setup status (as of session 2026-03-10)
### Done
- `functions/04/` — copied from `functions/03/` (utility functions removed by user; only `ALFAM_functions.R` remains)
- `build/04/` — copied from `build/03/` and updated:
  - `sub.period <- 4`, `version <- '3.0'`, `oldrelease <- '2.77'`
  - `load_old.R` reads `data-output/03/*.csv.gz` via `data.table::fread()`
  - `get_new.R` reads from `data-submitted/04/`
  - `functions.R` sources `functions/04/ALFAM_functions.R` only
  - All `logs/03/` → `logs/04/` path updates done
  - `export.R` writes to `data-output/04/`
  - `check_version.R` URLs updated to `data-output/04/`
  - `NL_swap.R` removed from `main.R` (correction already baked into data-output/03)
  - `main.R` references `summaries/` (was `analysis/`)

### Still to do
- Create `logs/04/` subdirs: `html/`, `csv/`, `text/`
- Create `data-output/04/` directory
- Create `data-submitted/04/` directory structure
- Revise `functions/04/ALFAM_functions.R`: switch from `readxl`/`plyr` to `data.table`, handle csv input
- Update stale period-3 comments in `merge_plot.R`, `text_summ.R`, `add_ID.R`
- Decide on `NL_swap.R` (delete or keep as reference)
- Update `packages.R` (drop `readxl`, `plyr`; add `data.table`)
- Contributors auto-extraction from submitted files
- Update README (paths changed: `scripts/` → `build/`, `analysis/` → `summaries/`, `headers/` → `variables/`)

## Key files
- `build/04/main.R` — entry point for period 4 build
- `functions/04/ALFAM_functions.R` — main function library (needs major revision)
- `data-output/03/ALFAM2_plot.csv.gz` and `ALFAM2_interval.csv.gz` — frozen period 1-3 data input for period 4

## User preferences
- Prefers `data.table` over tidyverse/plyr
- Wants csv input for period 4 (no xlsx reading), convert with `ssconvert` externally
- Wants `Rscript main.R` execution (errors halt the build)
- "Freeze" terminology for locking prior period output
- User does manual git work; does not want auto-commits
