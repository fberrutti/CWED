clear all
set more off

global bases C:\Users\fberruti\Documents\INVESTIGACI�N\CWED\DATOS
global logs C:\Users\fberruti\Documents\INVESTIGACI�N\CWED\DATOS\LOGS
global salidas C:\Users\fberruti\Documents\INVESTIGACI�N\CWED\DOCUMENTOS\SALIDAS

cd "$bases"

import delimited "$bases\cwed-subset.csv"

save "CWED.dta"