clear all
set more off

global bases C:\Users\fberruti\Documents\INVESTIGACIÓN\CWED\DATOS
global logs C:\Users\fberruti\Documents\INVESTIGACIÓN\CWED\DATOS\LOGS
global salidas C:\Users\fberruti\Documents\INVESTIGACIÓN\CWED\DOCUMENTOS\SALIDAS

cd "$bases"

import delimited "$bases\LATAM\WAGES\cwed-subset.csv"

save "CWED.dta"