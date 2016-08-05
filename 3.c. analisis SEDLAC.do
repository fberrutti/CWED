* ## ANÁLISIS BASE WORLD BANK ##

clear all
set more off

global bases C:\Users\fberruti\Dropbox\CWED\DATOS
global logs bases C:\Users\fberruti\Dropbox\CWED\LOGS
global salidas bases C:\Users\fberruti\Dropbox\CWED\DOCUMENTOS\SALIDAS

use "$bases\LATAM\WAGES\wages_SEDLAC.dta"

* Le doy formato panel
encode COUNTRYABBREV, generate(ccode) label(ccode)
order ccode	, after(ISO)
xtset ccode anio
sort ccode anio

save "$bases\LATAM\WAGES\wages_SEDLAC.dta", replace
