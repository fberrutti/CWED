clear all
set more off

global bases C:\Users\fberruti\Dropbox\CWED\DATOS
global logs bases C:\Users\fberruti\Dropbox\CWED\LOGS
global salidas bases C:\Users\fberruti\Dropbox\CWED\DOCUMENTOS\SALIDAS

cd "$bases"

import delimited "$bases\LATAM\WAGES\ilostat_wages.csv"

*  Se queda con países de América Latina
keep if (country_code == "ARG" | country_code == "BRA" | country_code == "CHL" | country_code == "COL" | country_code == "URY" | country_code == "VEN")

sort country_code time

save "wages_ILOSTAT.dta", replace