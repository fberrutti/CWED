clear all
set more off

global bases C:\Users\fberruti\Dropbox\CWED\DATOS
global logs bases C:\Users\fberruti\Dropbox\CWED\LOGS
global salidas bases C:\Users\fberruti\Dropbox\CWED\DOCUMENTOS\SALIDAS

cd "$bases"

use "$bases\LATAM\WAGES\wages1983_2008.dta"

* Elimina observaciones que no sean de manufactura

drop if (y3 != "CB" & y3 != "CH" & y3 != "DA" & y3 != "DB" & y3 != "DC" & y3 != "DD" & y3 != "EA" & y3 != "EB" & y3 != "FA" & y3 != "FB" & y3 != "GA" & y3 != "GB" & y3 != "GC" & y3 != "IA" & y3 != "JA" & y3 != "JB" & y3 != "JC" & y3 != "JD")

* CB Manufacture of dairy products
* CH Manufacture of bakery products
* DA Spinning, weaving and finishing textiles
* DB Manufacture of wearing apparel (except footwear)
* DC Manufacture of leather and leather products (except footwear)
* DD Manufacture of footwear
* EA Sawmills, planing and other wood mills
* EB Manufacture of wooden furniture and fixtures
* FA Manufacture of pulp, paper and paperboard
* FB Printing, publishing and allied industries
* GA Manufacture of industrial chemicals
* GB Manufacture of other chemical products
* GC Petroleum refineries
* IA Iron and steel basic industries
* JA Manufacture of metal products (except machinery and equipment)
* JB Manufacture of machinery (except electrical)
* JC Manufacture of electronic equipment, machinery and supplies
* JD Shipbuilding and repairing

*  Se queda con países de América Latina
keep if (y1 == "AR" | y1 == "BR" | y1 == "CL" | y1 == "CO" | y1 == "UY" | y1 == "VE")

* Toma el promedio entre todas las categorías por país y por año
collapse (mean) hw1 hw2wu hw3wu hw4wu hw2wl hw3wl hw4wl hw1us hw2wuus hw3wuus hw4wuus hw2wlus hw3wlus hw4wlus mw1 mw2wu mw3wu mw4wu mw2wl mw3wl mw4wl mw1us mw2wuus mw3wuus mw4wuus mw2wlus mw3wlus mw4wlus, by(y0 country)

sort country y0

save "$bases\wages_WB.dta", replace
