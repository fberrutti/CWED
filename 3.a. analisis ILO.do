* ## ANÁLISIS BASE ILOSTAT ##

clear all
set more off

global bases C:\Users\fberruti\Dropbox\CWED\DATOS
global logs bases C:\Users\fberruti\Dropbox\CWED\LOGS
global salidas bases C:\Users\fberruti\Dropbox\CWED\DOCUMENTOS\SALIDAS

use "$bases\LATAM\WAGES\wages_ILOSTAT.dta"

* Elijo solo los salarios totales, no desagregados por género
keep if sex_item_code == "SEX_T" 

* Le doy formato panel
encode country_code, generate(iso) label(ccode)
xtset iso time
order iso time obs_value, after(country_label)
sort iso time

save "$bases\LATAM\WAGES\wages_ILOSTAT.dta", replace