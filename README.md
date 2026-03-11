# ALFAM2-data
The ALFAM2 dataset (database) on ammonia loss through volatilization from field-applied manure. This repository contains the **"ALFAM2 dataset"**, the code used to generate it from data files submitted by researchers who made the emission measurements, and those original data files. 

# Quick tips
* Most visitors are interested in downloading data. Look in [data-output/03](https://github.com/sashahafner/ALFAM2-data/tree/master/data-output/03) for the latest version of the **ALFAM2 dataset**. Typically it makes sense to use the version available in the latest [release](https://github.com/sashahafner/ALFAM2-data/releases), which will also correspond to a [version available through Zenodo](https://zenodo.org/search?page=1&size=20&q=alfam2). 
* For more details on the ALFAM2 project, and access to project products see <http://alfam.dk>
* For a database interface that can be used to subset (filter) by country, application method, or more, use this web app: <https://biotransformers.shinyapps.io/ALFAM2/>. The data available through this interface are generally from the latest release, but always check the version number. 
* Zenodo versions can be found [here](https://zenodo.org/search?page=1&size=20&q=alfam2)
* Looking for the ALFAM2 model R package? You want the ALFAM2 repo: <https://github.com/sashahafner/ALFAM2>.
* Checking your submitted data? Find the link in [this list](https://au-bce-ee.github.io/ALFAM2-data/).

# More details
The dataset consists of two files: one with plot- and one with measurement-level observations.
See the `variables` directory [here](https://github.com/sashahafner/ALFAM2-data/tree/master/variables) for variable descriptions.
Files can be merged on the two plot keys or identification codes: `pid` and `pmid`.

Files are saved in a compressed format with the extension `.gz` (gzip) in order to reduce file size.
The easiest way to get the data into R is to read the files directly with `data.table::fread()`.
Alternatively, various utilies can be used to extract (unzip) the files, which are regular comma-separated ASCII text files.

The ALFAM2 data are organized into submission periods: 1 is for the original ALFAM work, 2 for the work described in [this paper](https://doi.org/10.1016/j.agrformet.2017.11.027), 3 and 4 for the ongoing effort to expand the database.
The latest version will always be in the highest number (3 currently).
Earlier versions are saved to facilitate addition of data without rebuilding older dataset versions while maintaining the option for revising data submitted in an earlier submission period.

See the `Data handling tips` below for more information on working with the data.

# Citations
The best way to refer to this work if you use the data in a publication is to cite the [version available through Zenodo](https://zenodo.org/search?page=1&size=20&q=alfam2).
In addition to a digital object identifier (doi), this Zenodo version includes an author list.
Alternatively, individual [releases](https://github.com/sashahafner/ALFAM2-data/releases) can be cited.
In either case, be sure to **note the version number used** in any citation.
If you have used a version not included in a release or a Zenodo dataset, please contact me ([here](https://au.dk/sasha.hafner@bce.au.dk))and I will create the necessary release or dataset.
Authors may also want to cite (and read!) [this paper](https://doi.org/10.1016/j.agrformet.2017.11.027).
But again, include the dataset version number in any citation.
You can find the dataset version number in the release tags or in a text file here: [data-output/03/data_version.txt](https://github.com/sashahafner/ALFAM2-data/tree/master/data-output/03/data_version.txt).

# References
For a description of the dataset, see this paper: <https://doi.org/10.1016/j.agrformet.2017.11.027>. For the ALFAM2 model for ammonia emission, with parameter estimation based on the ALFAM2 dataset, see this paper: <https://doi.org/10.1016/j.agrformet.2017.11.027>. 

# Data handling tips
The simplest way to load the data in R is with the `fread()` function from the data.table package.

```
idat <- data.table::fread('ALFAM2_interval.csv.gz')
pdat <- data.table::fread('ALFAM2_plot.csv.gz')
```

Once these two data frames (tables) are created, they can be combined (if needed) with `base::merge()` or `data.table::merge()` function.

```
cdat <- merge(idat, pdat, by = c('pid', 'pmid'))
```

(The `by` argument is optional here, but it is good practice to be aware of the columns used for merging.)

In Python, the `read_csv()` function from the pandas package can be used to read the compressed files directly.

```
import pandas as pd

idat = pd.read_csv('ALFAM2_interval.csv.gz')
```

For some more information, see the `summaries` directory.

# Submitting data
To inquire about submitting data to the ALFAM2 dataset, send a message to `sasha.hafner AT bce.au.dk` through email or else use [this form](https://sites.google.com/hafnerconsulting.com/hafnerconsulting/contact?authuser=0).

# Checking data
To check submitted data, find your completed template file in [this list](https://au-bce-ee.github.io/ALFAM2-data/) and follow the instructions you will see at the top of the linked file.

# Building the database
After cloning this repo, the process of creating the ALFAM2 database from submitted data can be completely repeated by running the scripts in the `build` directory in R (<https://www.r-project.org/>).
Each submission period has its own subdirectory (e.g., `build/03/`), and each reads its predecessor's output from `data-output/` as a starting point.
The simplest approach is to run `build/build.sh` from the shell, which calls `Rscript` on the latest period's `main.R`.
Alternatively, individual `main.R` scripts can be sourced in R directly, which is useful for debugging.

The only obvious reason for rebuilding is to update the database after making a correction to submitted data or data processing code.
Submitted data, as spreadsheet templates completed by data submitters, can be found in the `data-submitted` directory.
Because of changes in base R and add-on packages over time, errors when updating earlier submission periods are possible (e.g., [this](https://github.com/sashahafner/ALFAM2-data/issues/45) problem was caused by a change in base R).
The record of R and add-on package versions in `logs/*/R_package_version.txt` should help sort out any of these problems.

# Directory structure

* `build` R scripts for building the database, organized by submission period; run `build.sh` to build the latest
* `contributors` list of individuals who have contributed data, used for author list
* `data-ALFAM1` the original ALFAM database, developed by Sven G. Sommer et al., considered submission period 1
* `data-output` output: ALFAM2 database files, with latest version in subdirectory with highest submission period number
* `data-submitted` data as submitted by data submitters, in spreadsheet templates, in some cases with data processing etc. by database developers
* `demos` demo code for reading and working with the data in R or Python
* `docs` html logs of submitted data for checking by submitters through this page: <https://au-bce-ee.github.io/ALFAM2-data/> (period 3 submissions)
* `functions` R functions for building database, organized by submission period; some from <https://github.com/sashahafner/jumbled>
* `logs` logs created when database is built, including per-submission data check reports
* `summaries` scripts and output for summaries and averages of the database
* `variables` descriptions of all variables (column names) in the database files

