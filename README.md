# ALFAM2-data
The ALFAM2 dataset on ammonia loss from field-applied manure. This repository contains the **"ALFAM2 dataset"**, the code used to generate it from original data files, and those original data files. It serves two purposes: data, progress, and code tracking (for me) and versioning (primarily for dataset users). 

# Quick tips
* Look in [data-ALFAM2 output/03](https://github.com/sashahafner/ALFAM2-data/tree/dev/data-output/03) for the the **ALFAM2 dataset**
* More details on the ALFAM2 project, and access to project products: <www.alfam.dk>
* Or the ALFAM2 database? You can download this same dataset, or some subset filtered by country, application method, or more, from the ALFAM2 database interface: <https://biotransformers.shinyapps.io/ALFAM2/>. 
* Looking for the ALFAM2 model R package? You want the ALFAM2 repo: <https://github.com/sashahafner/ALFAM2>.

# More details
The dataset consists of two files with plot- and measurement-level observations.
See the `headers` directory [here](https://github.com/sashahafner/ALFAM2-data/tree/master/headers) for variable descriptions.
Files can be merge on the two plot keys or identification codes: `pid` and `pmid`.

Files are saved in a compressed format with the extension `.gz` (gzip) in order to reduce file size.
The easiest way to get the data into R is to read the files directly with `data.table::fread()`.
Alternatively, various utilies can be used to extract (unzip) the files, which are regular comma-separated ASCII text files.

The ALFAM2 data are organized into `uptake` periods: 1 is for the original ALFAM work, 2 for the work described in [this paper](https://doi.org/10.1016/j.agrformet.2017.11.027), and 3 for the current effort to expand the database.
The latest version will always be in the highest number (3 currently).
Earlier versions are saved to facilitate addition of data without rebuilding older dataset versions while maintaining the option for revising data submitted in an earlier uptake period.

# Citations
Please use the data included in an official [release](https://github.com/sashahafner/ALFAM2-data/releases) and note the version number used.
For now, it is possible to cite [this paper](https://doi.org/10.1016/j.agrformet.2017.11.027) and mention the version number. 

# References
For a description of the dataset, see this paper: <https://doi.org/10.1016/j.agrformet.2017.11.027>. For the ALFAM2 model for ammonia emission, with parameter estimation based on the ALFAM2 dataset, see this paper: <https://www.sciencedirect.com/science/article/pii/S1352231018308069>. 
A digitable object identified (doi) and author list are forthcoming.

