# ALFAM2-data
The ALFAM2 dataset (database) on ammonia loss through volatilization from field-applied manure. This repository contains the **"ALFAM2 dataset"**, the code used to generate it from data files submitted by researchers who made the emission measurements, and those original data files. 

# Quick tips
* Most visitors are interested in downloading data. Look in [data-output/03](https://github.com/sashahafner/ALFAM2-data/tree/master/data-output/03) for the latest version of the **ALFAM2 dataset**. Typically it makes sense to use the version available in the latest [release](https://github.com/sashahafner/ALFAM2-data/releases), which will also correspond to a [version available through Zenodo](https://zenodo.org/search?page=1&size=20&q=alfam2). 
* For more details on the ALFAM2 project, and access to project products see <http://alfam.dk>
* For a database interface that can be used to subset (filter) by country, application method, or more, use this web app: <https://biotransformers.shinyapps.io/ALFAM2/>. The data available through this interface are generally from the latest release, but always check the version number. 
* Zenodo versions can be found [here](https://zenodo.org/search?page=1&size=20&q=alfam2)
* Looking for the ALFAM2 model R package? You want the ALFAM2 repo: <https://github.com/sashahafner/ALFAM2>.


# More details
The dataset consists of two files: one with plot- and one with measurement-level observations.
See the `headers` directory [here](https://github.com/sashahafner/ALFAM2-data/tree/master/headers) for variable descriptions.
Files can be merged on the two plot keys or identification codes: `pid` and `pmid`.

Files are saved in a compressed format with the extension `.gz` (gzip) in order to reduce file size.
The easiest way to get the data into R is to read the files directly with `data.table::fread()`.
Alternatively, various utilies can be used to extract (unzip) the files, which are regular comma-separated ASCII text files.

The ALFAM2 data are organized into `uptake` periods: 1 is for the original ALFAM work, 2 for the work described in [this paper](https://doi.org/10.1016/j.agrformet.2017.11.027), and 3 for the current effort to expand the database.
The latest version will always be in the highest number (3 currently).
Earlier versions are saved to facilitate addition of data without rebuilding older dataset versions while maintaining the option for revising data submitted in an earlier uptake period.

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

For some more information, see the `analysis` directory.

# Submitting data
To inquire about submitting data to the ALFAM2 dataset, send a message to `sasha.hafner AT bce.au.dk` through email or else used [this form](https://sites.google.com/hafnerconsulting.com/hafnerconsulting/contact?authuser=0).

# Checking data
To check submitted data, find your completed template file in [this list](https://sashahafner.github.io/ALFAM2-data/) and follow the instructions you will see at the top of the linked file.

# Building the database
After cloning this repo, the process of creating the ALFAM2 database from submitted data can be completely repeated by running two scripts in R (<https://www.r-project.org/>) sequentially:

1. `scripts/02/main.R`
2. `scripts/03/main.R`

The only obvious reason for doing so is to update the database after making a correction to submitted data or data processing code.
(Submitted data, as spreadsheet templates (usually) completed by data submitters, can be found in the `data-submitted` directory.)
For changes to only the most recent submitted file, only the highest numbered file, for the latest uptake period, needs to be run.
Because of changes in base R and add-on packages over time, seeing R return an error when updating earlier uptake periods, or even the latest period some time after the latest update by database developers, is possible (e.g., [this](https://github.com/sashahafner/ALFAM2-data/issues/45) problem was caused by a change in base R).
The record of R and add-on package versions in `logs/*/R_package_version.txt` should help sort out any of these problems.

# Directory structure

* `analysis` demo code for reading and plotting data and creating summaries
* `archive` early versions of the database from before this repository was created
* `contributors` list of indviduals who have contributed data, used for author list
* `data-ALFAM1` the original ALFAM database, developed by Sven G. Sommer et al., considered "uptake period 1", and read in by `scripts/02/make_database.R`
* `data-output` output: ALFAM2 database files, with latest version in subdirectory with highest uptake number
* `data-submitted` data as submitted by data submitters, in spreadsheet templates, in some cases with data processing etc. by database developers
* `docs` html logs or summaries of submitted data for checking by submitters or others through this page: <https://sashahafner.github.io/ALFAM2-data/>
* `functions` R functions for building database, some from <https://github.com/sashahafner/jumbled>
* `headers` detailed description of data file headers (variable names)
* `logs` various logs created when database is built
* `scripts` the R scripts that are used directly to build the database
* `uptake-notes` notes on some submitted files

