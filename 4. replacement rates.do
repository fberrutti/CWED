* ## REPLACEMENT RATES ##
* ## Seguro de desempleo ##

clear all
set more off

global bases C:\Users\fberruti\Dropbox\CWED\DATOS
global logs bases C:\Users\fberruti\Dropbox\CWED\LOGS
global salidas bases C:\Users\fberruti\Dropbox\CWED\DOCUMENTOS\SALIDAS

use "$bases\LATAM\WAGES\wages_SEDLAC.dta"

* ### SEGURO DE DESEMPLEO ###

* # ARGENTINA #
gen uins = ((4*0.5*Valor) + (2*0.425*Valor))/6 if ccode == 1 // Prestación promedio correspondiente al salario promedio en ese año

* Máximos y mínimos:
* Antes de 2006 (no se sabe desde cuando) mínimo 150 y máximo 300
replace uins = 150 if uins < 150 & anio < 2006 & ccode == 1 // Mínimo
replace uins = 300 if uins > 300 & anio < 2006 & ccode == 1 // Máximo

* Entre 2006 y 2016 mínimo 250 y máximo 400 
replace uins = 250 if uins < 250 & anio > 2005 & anio < 2016 & ccode == 1 // Mínimo
replace uins = 400 if uins > 400 & anio > 2005 & anio < 2016 & ccode == 1 // Máximo

* Replacement rate
gen US100 = (uins*6*2)/(12*Valor) // Anualiza prestación y divide por salario anual

* # BRASIL # 
* 1986
replace uins = (0.5*Valor) if Valor < 3*804 & anio == 1986 & ccode == 2 // Mínimo
replace uins = 1.5*804 if Valor >= 3*804 & anio == 1986 & ccode == 2 // Máximo
* 1987
replace uins = (0.5*Valor) if Valor < 3*2172.7 & anio == 1987 & ccode == 2 // Mínimo
replace uins = 1.5*2172.7 if Valor >= 3*2172.7 & anio == 1987 & ccode == 2 // Máximo
* 1988
replace uins = (0.5*Valor) if Valor < 3*15353.42 & anio == 1988 & ccode == 2 // Mínimo
replace uins = 1.5*15353.42 if Valor >= 3*15353.42 & anio == 1988 & ccode == 2 // Máximo
* 1989
replace uins = (0.5*Valor) if Valor < 3*287.19 & anio == 1989 & ccode == 2 // Mínimo
replace uins = 1.5*287.19 if Valor >= 3*287.19 & anio == 1989 & ccode == 2 // Máximo
* 1991
replace uins = 0.8*Valor if Valor < 74468.20364	& anio == 1991 & ccode == 2 
replace uins = 0.8*74468.20364 + 0.5*(Valor - 74468.20364) if (74468.20364 < Valor < 124113.7191) & anio == 1991 & ccode == 2
replace uins = (74468.20364*340/300) if Valor > 124113.7191 & anio == 1992 & ccode == 2
* 1992
replace uins = 0.8*Valor if Valor < 721139.8067	& anio == 1992 & ccode == 2 
replace uins = 0.8*721139.8067 + 0.5*(Valor - 721139.8067) if (721139.8067 < Valor < 1201900.532) & anio == 1992 & ccode == 2
replace uins = (721139.8067*340/300) if Valor > 1201900.532 & anio == 1992 & ccode == 2
* 1993
replace uins = 0.8*Valor if Valor < 3040720.837	& anio == 1993 & ccode == 2 
replace uins = 0.8*3040720.837 + 0.5*(Valor - 3040720.837) if (3040720.837 < Valor < 5067871.36) & anio == 1993 & ccode == 2
replace uins = (3040720.837*340/300) if Valor > 5067871.36 & anio == 1993 & ccode == 2
* 1994
replace uins = 0.8*Valor if Valor < 128.30	& anio == 1994 & ccode == 2 
replace uins = 0.8*128.30 + 0.5*(Valor - 128.30) if (128.30 < Valor < 213.84) & anio == 1994 & ccode == 2
replace uins = (128.30*340/300) if Valor > 213.84 & anio == 1994 & ccode == 2
* 1995 
replace uins = 0.8*Valor if Valor < 153.57 & anio == 1995 & ccode == 2 
replace uins = 0.8*153.57 + 0.5*(Valor - 153.57) if (153.57 < Valor < 255.97) & anio == 1995 & ccode == 2
replace uins = (153.57*340/300) if Valor > 255.97 & anio == 1995 & ccode == 2
* 1996
replace uins = 0.8*Valor if Valor < 178.67 & anio == 1996 & ccode == 2 
replace uins = 0.8*178.67 + 0.5*(Valor - 178.67) if (178.67 < Valor < 297.81) & anio == 1996 & ccode == 2
replace uins = (178.67*340/300) if Valor > 297.81 & anio == 1996 & ccode == 2
* 1997
replace uins = 0.8*Valor if Valor < 193.72 & anio == 1997 & ccode == 2 
replace uins = 0.8*193.72 + 0.5*(Valor - 193.72) if (193.72 < Valor < 322.87) & anio == 1997 & ccode == 2
replace uins = (193.72*340/300) if Valor > 322.87 & anio == 1997 & ccode == 2
* 1998
replace uins = 0.8*Valor if Valor < 209.12 & anio == 1998 & ccode == 2 
replace uins = 0.8*209.12 + 0.5*(Valor - 209.12) if (209.12 < Valor < 348.55) & anio == 1998 & ccode == 2
replace uins = (209.12*340/300) if Valor > 348.55 & anio == 1998 & ccode == 2
* 1999
replace uins = 0.8*Valor if Valor < 221.21 & anio == 1999 & ccode == 2 
replace uins = 0.8*221.21 + 0.5*(Valor - 221.21) if (221.21 < Valor < 368.71) & anio == 1999 & ccode == 2
replace uins = (221.21*340/300) if Valor > 368.71 & anio == 1999 & ccode == 2
* 2000
replace uins = 0.8*Valor if Valor < 243.08 & anio == 2000 & ccode == 2 
replace uins = 0.8*243.08 + 0.5*(Valor - 243.08) if (243.08 < Valor < 405.17) & anio == 2000 & ccode == 2
replace uins = (243.08*340/300) if Valor > 405.17 & anio == 2000 & ccode == 2
* 2001
replace uins = 0.8*Valor if Valor < 285.17 & anio == 2001 & ccode == 2 
replace uins = 0.8*285.17 + 0.5*(Valor - 285.17) if (285.17 < Valor < 475.33) & anio == 2001 & ccode == 2
replace uins = (285.17*340/300) if Valor > 475.33 & anio == 2001 & ccode == 2
* 2002
replace uins = 0.8*Valor if Valor < 321.89 & anio == 2002 & ccode == 2 
replace uins = 0.8*321.89 + 0.5*(Valor - 321.89) if (321.89 < Valor < 536.55) & anio == 2002 & ccode == 2
replace uins = (321.89*340/300) if Valor > 536.55 & anio == 2002 & ccode == 2
* 2003
replace uins = 0.8*Valor if Valor < 379.67 & anio == 2003 & ccode == 2 
replace uins = 0.8*379.67 + 0.5*(Valor - 379.67) if (379.67 < Valor < 632.86) & anio == 2003 & ccode == 2
replace uins = (379.67*340/300) if Valor > 632.86 & anio == 2003 & ccode == 2
* 2004
replace uins = 0.8*Valor if Valor < 420.95 & anio == 2004 & ccode == 2 
replace uins = 0.8*420.95 + 0.5*(Valor - 420.95) if (420.95 < Valor < 701.64) & anio == 2004 & ccode == 2
replace uins = (420.95*340/300) if Valor > 701.64 & anio == 2004 & ccode == 2
* 2005
replace uins = 0.8*Valor if Valor < 473.22 & anio == 2005 & ccode == 2 
replace uins = 0.8*473.22 + 0.5*(Valor - 473.22) if (473.22 < Valor < 788.77) & anio == 2005 & ccode == 2
replace uins = (473.22*340/300) if Valor > 788.77 & anio == 2005 & ccode == 2
* 2006
replace uins = 0.8*Valor if Valor < 557.14 & anio == 2006 & ccode == 2 
replace uins = 0.8*557.14 + 0.5*(Valor - 557.14) if (557.14 < Valor < 928.65) & anio == 2006 & ccode == 2
replace uins = (557.14*340/300) if Valor > 928.65 & anio == 2006 & ccode == 2
* 2007
replace uins = 0.8*Valor if Valor < 614.91 & anio == 2007 & ccode == 2 
replace uins = 0.8*614.91 + 0.5*(Valor - 614.91) if (614.91 < Valor < 1024.87) & anio == 2007 & ccode == 2
replace uins = (614.91*340/300) if Valor > 1024.87 & anio == 2007 & ccode == 2
* 2008
replace uins = 0.8*Valor if Valor < 675.43 & anio == 2008 & ccode == 2 
replace uins = 0.8*675.43 + 0.5*(Valor - 675.43) if (675.43 < Valor < 1125.81) & anio == 2008 & ccode == 2
replace uins = (675.43*340/300) if Valor > 1125.81 & anio == 2008 & ccode == 2
* 2009
replace uins = 0.8*Valor if Valor < 760.72 & anio == 2008 & ccode == 2 
replace uins = 0.8*760.72 + 0.5*(Valor - 760.72) if (760.72 < Valor < 1268) & anio == 2009 & ccode == 2
replace uins = (760.72*340/300) if Valor > 1268 & anio == 2009 & ccode == 2
* 2010
replace uins = 0.8*Valor if Valor < 841.88 & anio == 2010 & ccode == 2 
replace uins = 0.8*841.88 + 0.5*(Valor - 841.88) if (841.88 < Valor < 1403.28) & anio == 2010 & ccode == 2
replace uins = (841.88*340/300) if Valor > 1403.28 & anio == 2010 & ccode == 2
* 2011
replace uins = 0.8*Valor if Valor < 898.28 & anio == 2011 & ccode == 2 
replace uins = 0.8*898.28 + 0.5*(Valor - 898.28) if (898.28 < Valor < 1497.29) & anio == 2011 & ccode == 2
replace uins = (898.28*340/300) if Valor > 1497.29 & anio == 2011 & ccode == 2
* 2012
replace uins = 0.8*Valor if Valor < 1026.77 & anio == 2012 & ccode == 2 
replace uins = 0.8*1026.77 + 0.5*(Valor - 1026.77) if (1026.77 < Valor < 1711.45) & anio == 2012 & ccode == 2
replace uins = (1026.77*340/300) if Valor > 1711.45 & anio == 2012 & ccode == 2
* 2013
replace uins = 0.8*Valor if Valor < 1090.43 & anio == 2013 & ccode == 2 
replace uins = 0.8*1090.43 + 0.5*(Valor - 1090.43) if (1090.43 < Valor < 1817.56) & anio == 2013 & ccode == 2
replace uins = (1090.43*340/300) if Valor > 1817.56 & anio == 2013 & ccode == 2
* 2014
replace uins = 0.8*Valor if Valor < 1151.06 & anio == 2014 & ccode == 2 
replace uins = 0.8*1151.06 + 0.5*(Valor - 1151.06) if (1151.06 < Valor < 1918.62) & anio == 2014 & ccode == 2
replace uins = (1151.06*340/300) if Valor > 1918.62 & anio == 2014 & ccode == 2

* Replacement rate
replace US100 = (uins*6*2)/(12*Valor) // Anualiza prestación y divide por salario anual

* ## CHILE ##
replace US100 = (15620*3+10414*3)*2/(12*Valor) if (1984 < anio) & (anio < 1996) & ccode == 3
replace US100 = (17338*3+11560*3)*2/(12*Valor) if (1995 < anio) & (anio < 2002) & ccode == 3
* Qué hacer con esquema de capitalización individual post 2002?

* ## URUGUAY ##
replace uins = 0.5*Valor if ccode == 5
* Mínimos
* SMN
replace uins = 0.5*45.93 if anio == 1989 & ccode == 5 & uins < 0.5*45.93
replace uins = 0.5*75.29 if anio == 1990 & ccode == 5 & uins < 0.5*75.29
replace uins = 0.5*157.77 if anio == 1991 & ccode == 5 & uins < 0.5*157.77
replace uins = 0.5*253.77 if anio == 1992 & ccode == 5 & uins < 0.5*253.77
replace uins = 0.5*335.17 if anio == 1993 & ccode == 5 & uins < 0.5*335.17
replace uins = 0.5*433.67 if anio == 1994 & ccode == 5 & uins < 0.5*433.67
replace uins = 0.5*575 if anio == 1995 & ccode == 5 & uins < 0.5*575
replace uins = 0.5*718.33 if anio == 1996 & ccode == 5 & uins < 0.5*718.33
replace uins = 0.5*846.67 if anio == 1997 & ccode == 5 & uins < 0.5*846.67
replace uins = 0.5*970 if anio == 1998 & ccode == 5 & uins < 0.5*970
replace uins = 0.5*1030 if anio == 1999 & ccode == 5 & uins < 0.5*1030
replace uins = 0.5*1060 if anio == 2000 & ccode == 5 & uins < 0.5*1060
replace uins = 0.5*1092 if anio == 2001 & ccode == 5 & uins < 0.5*1092
replace uins = 0.5*1110 if anio == 2002 & ccode == 5 & uins < 0.5*1110
replace uins = 0.5*1169.67 if anio == 2003 & ccode == 5 & uins < 0.5*1169.67
replace uins = 0.5*1276 if anio == 2004 & ccode == 5 & uins < 0.5*1276
* BPC
replace uins = 0.5*1380 if anio == 2005 & ccode == 5 & uins < 0.5*1380
replace uins = 0.5*1482 if anio == 2006 & ccode == 5 & uins < 0.5*1482
replace uins = 0.5*1636 if anio == 2007 & ccode == 5 & uins < 0.5*1636
replace uins = 0.5*1775 if anio == 2008 & ccode == 5 & uins < 0.5*1775

* Máximos
* SMN
replace uins = 8*45.93 if anio == 1989 & ccode == 5 & uins > 8*45.93
replace uins = 8*75.29 if anio == 1990 & ccode == 5 & uins > 8*75.29
replace uins = 8*157.77 if anio == 1991 & ccode == 5 & uins > 8*157.77
replace uins = 8*253.77 if anio == 1992 & ccode == 5 & uins > 8*253.77
replace uins = 8*335.17 if anio == 1993 & ccode == 5 & uins > 8*335.17
replace uins = 8*433.67 if anio == 1994 & ccode == 5 & uins > 8*433.67
replace uins = 8*575 if anio == 1995 & ccode == 5 & uins > 8*575
replace uins = 8*718.33 if anio == 1996 & ccode == 5 & uins > 8*718.33
replace uins = 8*846.67 if anio == 1997 & ccode == 5 & uins > 8*846.67
replace uins = 8*970 if anio == 1998 & ccode == 5 & uins > 8*970
replace uins = 8*1030 if anio == 1999 & ccode == 5 & uins > 8*1030
replace uins = 8*1060 if anio == 2000 & ccode == 5 & uins > 8*1060
replace uins = 8*1092 if anio == 2001 & ccode == 5 & uins > 8*1092
replace uins = 8*1110 if anio == 2002 & ccode == 5 & uins > 8*1110
replace uins = 8*1169.67 if anio == 2003 & ccode == 5 & uins > 8*1169.67
replace uins = 8*1276 if anio == 2004 & ccode == 5 & uins > 8*1276
* BPC
replace uins = 8*1380 if anio == 2005 & ccode == 5 & uins > 8*1380
replace uins = 8*1482 if anio == 2006 & ccode == 5 & uins > 8*1482
replace uins = 8*1636 if anio == 2007 & ccode == 5 & uins > 8*1636
replace uins = 8*1775 if anio == 2008 & ccode == 5 & uins > 8*1775

* En 2008 cambia a sistema escalonado que en promedio es igual al anterior
* Mínimo 
replace uins = 0.5*1944 if anio == 2009 & ccode == 5 & uins < 0.5*1944 
replace uins = 0.5*2061 if anio == 2010 & ccode == 5 & uins < 0.5*2061
replace uins = 0.5*2226 if anio == 2011 & ccode == 5 & uins < 0.5*2226
replace uins = 0.5*2417 if anio == 2012 & ccode == 5 & uins < 0.5*2417
replace uins = 0.5*2598 if anio == 2013 & ccode == 5 & uins < 0.5*2598
replace uins = 0.5*2819 if anio == 2014 & ccode == 5 & uins < 0.5*2819
* Máximo
replace uins = 8*1944 if anio == 2009 & ccode == 5 & uins > 8*1944 
replace uins = 8*2061 if anio == 2010 & ccode == 5 & uins > 8*2061
replace uins = 8*2226 if anio == 2011 & ccode == 5 & uins > 8*2226
replace uins = 8*2417 if anio == 2012 & ccode == 5 & uins > 8*2417
replace uins = 8*2598 if anio == 2013 & ccode == 5 & uins > 8*2598
replace uins = 8*2819 if anio == 2014 & ccode == 5 & uins > 8*2819

* Replacement rate
replace US100 = (uins*6*2)/(12*Valor) // Anualiza prestación y divide por salario anual

* ## VENEZUELA ##
replace uins = 0.6*Valor if ccode == 6 & anio > 2004

* Mínimos
replace uins = 0.6*405000 if anio == 2005 & ccode == 6 & Valor < 405000
replace uins = 0.6*512000 if anio == 2006 & ccode == 6 & Valor < 512000
* Máximos
replace uins = 0*6*10*405000 if anio == 2005 & ccode == 6 & Valor > 10*405000
replace uins = 0*6*10*512000 if anio == 2006 & ccode == 6 & Valor > 10*512000

* Replacement rate
replace US100 = (uins*6*2)/(12*Valor) // Anualiza prestación y divide por salario anual