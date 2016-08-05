* ## ANÁLISIS BASE WORLD BANK ##

clear all
set more off

global bases C:\Users\fberruti\Dropbox\CWED\DATOS
global logs bases C:\Users\fberruti\Dropbox\CWED\LOGS
global salidas bases C:\Users\fberruti\Dropbox\CWED\DOCUMENTOS\SALIDAS

use "$bases\LATAM\WAGES\wages_WB.dta"

* Le doy formato panel
encode country, generate(iso) label(ccode)
order iso, after(country)
xtset iso y0
sort iso y0

save "$bases\LATAM\WAGES\wages_WB.dta", replace