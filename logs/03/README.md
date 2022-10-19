# Information on ALFAM2 log files
Three types of log files are created for each submitted spreadsheet file: html, csv, and text.
Only the html logs need to be checked by submitters.
See below for details.

# html
**This directory is typically where submitters should look to check submitted data for errors.**
Subdirectories inside are named by institution abbreviation and submitter name (as given in the completed templates). 
In each subdirectory there should be an html file with a name based on the submitted file name with the institute abbreviation appended at the front.
Double-clicking should open the file in the default Internet browser.

Submitters should check:

* Institute abbreviation, submitter and contributor names
* The plot location(s), using the map zoom and pan features if needed
* For problems in the first sections; "OK" means there are no problems in a particular section, "warning" is something that should be checked (but might be OK), "error" is a problem that needs to be addressed
* For numeric values outside the expected range in the "Value checks" section
* Variables with missing value--are there any missing that you thought you included?
* Plots of flux, cumulative emission over time, and final cumulative emission for strange patterns, unexpectedly high or low values
* Plots of weather data for appropriate differences between plots and expected diurnal or other patterns
* Plots of manure and application data for correct values

Finally, the numeric summary at the end might provide details that can help in pinpoiting problems, but typically does not need to be checked.

# csv
Here are comma-delimited text files that have final plot- and interval-level data by submitted file.
Subdirectories have the same names as in `html` and file naming is similar.
These are saved to make it easier to see changes in submitted data using Git.
Submitters do not need to check these.

# text
Subdirectories have the same names as in `html` and file naming is similar.
These files are Markdown text files with ASCII plots of important variables.
These are also not intended for regular checking, but instead for tracking effects of changes in submitted data using Git.
Most or all of the data are shown more clearly in the html logs.
However, the plots do provide a quick means of checking submitted values.
Bivariate plots have the variables plotted by row in the submitted spreadsheet file or plot/measurement method key/ID.
But the variables are plotted on the x axis to make it easier to see individual changes using Git (because they are by row, not column).
