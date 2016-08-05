clear all
set more off

global bases C:\Users\fberruti\Dropbox\CWED\DATOS
global logs bases C:\Users\fberruti\Dropbox\CWED\LOGS
global salidas bases C:\Users\fberruti\Dropbox\CWED\DOCUMENTOS\SALIDAS

cd "$bases"

import excel "$bases\LATAM\WAGES\wages_SEDLAC.xlsx", sheet("Hoja1") firstrow

rename Ao anio

sort COUNTRY anio

save "$bases\LATAM\WAGES\wages_SEDLAC.dta", replace