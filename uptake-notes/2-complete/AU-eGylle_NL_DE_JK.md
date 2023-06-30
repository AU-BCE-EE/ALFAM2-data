# File: `ALFAM2_template_7_0_eGylle_NL_DE_JK.xlsx`

# 29 June 2023
I think this file has already seen a lot of updates.

Jesper sent a new copy today with NL "bucket" (FC) data.
But he was missing two earlier changes:


* 22 Mar 2023	Sasha	ALFAM2_template_7_0_eGylle_NL_DE_JK.xlsx	Emission sheet, columns H and I change “.” in dates to “/"
* 22 Mar 2023	Sasha	ALFAM2_template_7_0_eGylle_NL_DE_JK.xlsx	Emission sheet, update all DTM time and flux values with calculated values in export.csv in “DTM fixes" directory

Looking into "DTM fixes" (a directory in the repo) I see that I calculated interval average fluxes from cumulative emission data from Hannah, sent to me by you on 22 March. 
I cannot remember why. 
Maybe Jesper shared the data from Hannah first, and later sent the completed Excel file? 
Anyway, the two versions don't seem to match, not even in the number of lines. 
I have fewer lines, which makes sense because of the switch from point to interval data. 
So the first timestamp in the file from Hannah is the start time in the first ALFAM2 interval, the and second timestamp in that file is the end time for that same first interval.

I get these final or 168 h relative emission values with my flux numbers:
"e.rel.final"
        0.149
        0.151
        0.166
Those are from ` '/home/sasha/GitHub_repos/ALFAM2-data/logs/03/csv/AU-Jesper_Nørlem_Kamp/AU_ALFAM2_template_7_0_eGylle_NL_DE_JK_plot.csv' `.

They have a mean of 15.5%, SD of 0.9%, pretty darn close to the values in Table 2 in Jesper's paper.

So I am sticking with them--I will move the FC data to my file.
