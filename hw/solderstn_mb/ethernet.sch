EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 22
Title "Ethernet PHY & connector"
Date "2020-05-03"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L customlib_mj:IP101GA U201
U 1 1 5ED5A85D
P 3050 2500
F 0 "U201" H 2950 3450 60  0000 L CNN
F 1 "IP101GA" H 2850 3350 60  0000 L CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2150 1000 60  0001 L CNN
F 3 "http://www.bdtic.com/DataSheet/ICplus/IP101G_DS_R01_20121224.pdf" H 2450 3050 60  0001 L CNN
F 4 "IP101GA" H 2850 2600 60  0001 L CNN "manf#"
F 5 "Single port 10/100 MII/RMII Fast Ethernet Phy transceiver, Auto MDI/MDIX, 3.3V, 25/50MHz, integrated 49.9Ohm termination resistors. 7X7mm LQFP-48 0.5mm" H -450 850 60  0001 L CNN "Field5"
	1    3050 2500
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:IP101GA U201
U 2 1 5ED5CD02
P 8650 5000
F 0 "U201" H 8550 5950 60  0000 L CNN
F 1 "IP101GA" H 8450 5850 60  0000 L CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 7750 3500 60  0001 L CNN
F 3 "http://www.bdtic.com/DataSheet/ICplus/IP101G_DS_R01_20121224.pdf" H 8050 5550 60  0001 L CNN
F 4 "IP101GA" H 8450 5100 60  0001 L CNN "manf#"
F 5 "Single port 10/100 MII/RMII Fast Ethernet Phy transceiver, Auto MDI/MDIX, 3.3V, 25/50MHz, integrated 49.9Ohm termination resistors. 7X7mm LQFP-48 0.5mm" H 5150 3350 60  0001 L CNN "Field5"
	2    8650 5000
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:74980104400 J201
U 1 1 5ED5DEA7
P 9250 1850
F 0 "J201" H 9775 2800 50  0000 C CNN
F 1 "74980104400" H 9250 2800 50  0000 C CNN
F 2 "customlib_mj_fp:74980104400_WE-RJ45_LAN_trx" H 9250 1650 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/74980104400.pdf" H 9250 1650 50  0001 C CNN
	1    9250 1850
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Ferrite_Bead_Small FB201
U 1 1 5ED6D9C0
P 6650 5150
F 0 "FB201" V 6700 5175 50  0000 L CNN
F 1 "60R@100M" V 6775 4950 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 6580 5150 50  0001 C CNN
F 3 "http://media.digikey.com/pdf/Data%20Sheets/Steward%20PDFs/Part%20Number%20Guide.pdf" H 6650 5150 50  0001 C CNN
	1    6650 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R204
U 1 1 5ED6CAAF
P 4300 2950
F 0 "R204" V 4225 2875 50  0000 L CNN
F 1 "10k" V 4375 2875 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4300 2950 50  0001 C CNN
F 3 "~" H 4300 2950 50  0001 C CNN
	1    4300 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0230
U 1 1 5ED75CE0
P 8450 6150
F 0 "#PWR0230" H 8450 5900 50  0001 C CNN
F 1 "GND" H 8450 6000 50  0000 C CNN
F 2 "" H 8450 6150 50  0001 C CNN
F 3 "" H 8450 6150 50  0001 C CNN
	1    8450 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 6150 8450 6100
Wire Wire Line
	8450 6100 8550 6100
Wire Wire Line
	8750 6100 8750 6000
Wire Wire Line
	8650 6000 8650 6100
Connection ~ 8650 6100
Wire Wire Line
	8650 6100 8750 6100
Wire Wire Line
	8550 6000 8550 6100
Connection ~ 8550 6100
Wire Wire Line
	8550 6100 8650 6100
$Comp
L Device:C_Small C213
U 1 1 5ED7ABE8
P 7200 5450
F 0 "C213" H 7200 5375 50  0000 L CNN
F 1 "100n" H 7200 5525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7200 5450 50  0001 C CNN
F 3 "~" H 7200 5450 50  0001 C CNN
	1    7200 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C212
U 1 1 5ED7B1A4
P 6900 5450
F 0 "C212" H 6800 5375 50  0000 L CNN
F 1 "10u" H 6750 5525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6900 5450 50  0001 C CNN
F 3 "~" H 6900 5450 50  0001 C CNN
	1    6900 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 5350 7200 5150
Wire Wire Line
	6900 5350 6900 5150
$Comp
L power:VDD #PWR0221
U 1 1 5ED80861
P 6450 5000
F 0 "#PWR0221" H 6450 4850 50  0001 C CNN
F 1 "VDD" H 6450 5125 50  0000 C CNN
F 2 "" H 6450 5000 50  0001 C CNN
F 3 "" H 6450 5000 50  0001 C CNN
	1    6450 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0226
U 1 1 5ED81B3D
P 7050 5800
F 0 "#PWR0226" H 7050 5550 50  0001 C CNN
F 1 "GND" H 7050 5650 50  0000 C CNN
F 2 "" H 7050 5800 50  0001 C CNN
F 3 "" H 7050 5800 50  0001 C CNN
	1    7050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5550 6900 5650
Wire Wire Line
	6900 5650 7050 5650
Wire Wire Line
	7200 5650 7200 5550
Wire Wire Line
	7050 5650 7050 5800
Connection ~ 7050 5650
Wire Wire Line
	7050 5650 7200 5650
$Comp
L power:GND #PWR0228
U 1 1 5ED8370A
P 9550 5800
F 0 "#PWR0228" H 9550 5550 50  0001 C CNN
F 1 "GND" H 9550 5650 50  0000 C CNN
F 2 "" H 9550 5800 50  0001 C CNN
F 3 "" H 9550 5800 50  0001 C CNN
	1    9550 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0229
U 1 1 5ED83B6B
P 9750 5800
F 0 "#PWR0229" H 9750 5550 50  0001 C CNN
F 1 "GND" H 9750 5650 50  0000 C CNN
F 2 "" H 9750 5800 50  0001 C CNN
F 3 "" H 9750 5800 50  0001 C CNN
	1    9750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5800 9550 5300
Wire Wire Line
	9550 5300 9450 5300
Wire Wire Line
	9750 5800 9750 5100
$Comp
L Device:C_Small C215
U 1 1 5ED8A86C
P 7800 5550
F 0 "C215" H 7800 5475 50  0000 L CNN
F 1 "100n" H 7800 5625 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7800 5550 50  0001 C CNN
F 3 "~" H 7800 5550 50  0001 C CNN
	1    7800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5750 7800 5650
$Comp
L power:VDD #PWR0218
U 1 1 5ED946E0
P 7650 4700
F 0 "#PWR0218" H 7650 4550 50  0001 C CNN
F 1 "VDD" H 7650 4825 50  0000 C CNN
F 2 "" H 7650 4700 50  0001 C CNN
F 3 "" H 7650 4700 50  0001 C CNN
	1    7650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4800 7650 4800
Wire Wire Line
	7650 4800 7650 4700
Wire Wire Line
	7800 5300 7800 5450
Connection ~ 7800 5300
Wire Wire Line
	7800 5300 7850 5300
Wire Wire Line
	7500 5300 7800 5300
Wire Wire Line
	7500 5650 7500 5750
Wire Wire Line
	7500 5450 7500 5300
$Comp
L Device:C_Small C214
U 1 1 5ED8A876
P 7500 5550
F 0 "C214" H 7400 5475 50  0000 L CNN
F 1 "10u" H 7350 5625 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7500 5550 50  0001 C CNN
F 3 "~" H 7500 5550 50  0001 C CNN
	1    7500 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0227
U 1 1 5ED8A882
P 7650 5800
F 0 "#PWR0227" H 7650 5550 50  0001 C CNN
F 1 "GND" H 7650 5650 50  0000 C CNN
F 2 "" H 7650 5800 50  0001 C CNN
F 3 "" H 7650 5800 50  0001 C CNN
	1    7650 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5750 7800 5750
Connection ~ 7650 5750
Wire Wire Line
	7650 5750 7650 5800
Wire Wire Line
	7500 5750 7650 5750
Wire Wire Line
	7850 5000 7600 5000
Wire Wire Line
	7600 5000 7600 5150
Wire Wire Line
	7600 5150 7200 5150
Connection ~ 6900 5150
Wire Wire Line
	6900 5150 6750 5150
Connection ~ 7200 5150
Wire Wire Line
	7200 5150 7050 5150
Wire Wire Line
	6550 5150 6450 5150
Wire Wire Line
	6450 5150 6450 5000
Wire Wire Line
	9750 5100 9450 5100
$Comp
L Device:R_Small R213
U 1 1 5EDAAE3A
P 9700 4800
F 0 "R213" V 9625 4725 50  0000 L CNN
F 1 "6.19k" V 9775 4725 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9700 4800 50  0001 C CNN
F 3 "~" H 9700 4800 50  0001 C CNN
	1    9700 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0219
U 1 1 5EDADF03
P 9950 4900
F 0 "#PWR0219" H 9950 4650 50  0001 C CNN
F 1 "GND" H 9950 4750 50  0000 C CNN
F 2 "" H 9950 4900 50  0001 C CNN
F 3 "" H 9950 4900 50  0001 C CNN
	1    9950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4900 9950 4800
Wire Wire Line
	9950 4800 9800 4800
Wire Wire Line
	9600 4800 9450 4800
$Comp
L power:GND #PWR0217
U 1 1 5EDAFD5C
P 4150 4150
F 0 "#PWR0217" H 4150 3900 50  0001 C CNN
F 1 "GND" H 4150 4000 50  0000 C CNN
F 2 "" H 4150 4150 50  0001 C CNN
F 3 "" H 4150 4150 50  0001 C CNN
	1    4150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4150 4150 3800
Wire Wire Line
	4150 3800 4050 3800
$Comp
L power:VDD #PWR0209
U 1 1 5EDB60BF
P 4500 2950
F 0 "#PWR0209" H 4500 2800 50  0001 C CNN
F 1 "VDD" H 4500 3075 50  0000 C CNN
F 2 "" H 4500 2950 50  0001 C CNN
F 3 "" H 4500 2950 50  0001 C CNN
	1    4500 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3100 4100 3100
Wire Wire Line
	4200 2950 4100 2950
Wire Wire Line
	4100 2950 4100 3100
Connection ~ 4100 3100
Wire Wire Line
	4100 3100 4650 3100
Wire Wire Line
	4400 2950 4500 2950
$Comp
L Device:R_Small R210
U 1 1 5EDBAC91
P 4200 3300
F 0 "R210" V 4125 3225 50  0000 L CNN
F 1 "0R" V 4275 3225 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4200 3300 50  0001 C CNN
F 3 "~" H 4200 3300 50  0001 C CNN
	1    4200 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3300 4100 3300
$Comp
L Device:C_Small C209
U 1 1 5EDC20FF
P 4850 3550
F 0 "C209" V 4900 3575 50  0000 L CNN
F 1 "27p" V 4800 3575 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4850 3550 50  0001 C CNN
F 3 "~" H 4850 3550 50  0001 C CNN
	1    4850 3550
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C208
U 1 1 5EDC3950
P 4850 3250
F 0 "C208" V 4900 3275 50  0000 L CNN
F 1 "27p" V 4800 3275 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4850 3250 50  0001 C CNN
F 3 "~" H 4850 3250 50  0001 C CNN
	1    4850 3250
	0    1    -1   0   
$EndComp
Wire Wire Line
	4200 3550 4200 3500
Wire Wire Line
	4200 3500 4050 3500
Wire Wire Line
	4400 3250 4400 3300
Wire Wire Line
	4400 3300 4300 3300
Wire Wire Line
	4950 3550 5050 3550
Wire Wire Line
	5050 3550 5050 3450
Wire Wire Line
	5050 3250 4950 3250
$Comp
L power:GND #PWR0214
U 1 1 5EDCED54
P 5150 3600
F 0 "#PWR0214" H 5150 3350 50  0001 C CNN
F 1 "GND" H 5150 3450 50  0000 C CNN
F 2 "" H 5150 3600 50  0001 C CNN
F 3 "" H 5150 3600 50  0001 C CNN
	1    5150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3400 5150 3400
Wire Wire Line
	5150 3400 5150 3600
Connection ~ 5050 3400
$Comp
L Device:C_Small C203
U 1 1 5EDD4B69
P 1700 1350
F 0 "C203" V 1600 1250 50  0000 L CNN
F 1 "100n" V 1800 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1700 1350 50  0001 C CNN
F 3 "~" H 1700 1350 50  0001 C CNN
	1    1700 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0202
U 1 1 5EDD53B6
P 1700 1550
F 0 "#PWR0202" H 1700 1300 50  0001 C CNN
F 1 "GND" H 1700 1425 50  0000 C CNN
F 2 "" H 1700 1550 50  0001 C CNN
F 3 "" H 1700 1550 50  0001 C CNN
	1    1700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1550 1700 1450
Wire Wire Line
	1700 1250 1700 1200
Wire Wire Line
	2050 1800 1900 1800
Wire Wire Line
	1900 1800 1900 1200
Wire Wire Line
	1900 1200 1700 1200
Wire Wire Line
	1200 1200 1700 1200
Connection ~ 1700 1200
Wire Wire Line
	1800 2000 2050 2000
Wire Wire Line
	1150 2100 1300 2100
Wire Wire Line
	1550 2300 2050 2300
Wire Wire Line
	1550 2900 2050 2900
Wire Wire Line
	1550 3000 2050 3000
Wire Wire Line
	1550 3300 2050 3300
Wire Wire Line
	1550 3400 2050 3400
Wire Wire Line
	1550 3600 2050 3600
NoConn ~ 2050 2800
NoConn ~ 2050 2700
NoConn ~ 2050 3100
NoConn ~ 2050 3200
NoConn ~ 2050 3500
NoConn ~ 2050 2400
Wire Wire Line
	2050 2500 1600 2500
Wire Wire Line
	1600 2600 2050 2600
$Comp
L Device:R_Small R211
U 1 1 5EE1EA49
P 1700 3750
F 0 "R211" V 1625 3675 50  0000 L CNN
F 1 "10k" V 1775 3675 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1700 3750 50  0001 C CNN
F 3 "~" H 1700 3750 50  0001 C CNN
	1    1700 3750
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR0215
U 1 1 5EE216D4
P 1400 3750
F 0 "#PWR0215" H 1400 3600 50  0001 C CNN
F 1 "VDD" H 1400 3875 50  0000 C CNN
F 2 "" H 1400 3750 50  0001 C CNN
F 3 "" H 1400 3750 50  0001 C CNN
	1    1400 3750
	0    -1   -1   0   
$EndComp
Text Label 1900 3700 0    50   ~ 0
RMII
Wire Wire Line
	1400 3750 1550 3750
Wire Wire Line
	2050 3700 1900 3700
Wire Wire Line
	1800 3750 1900 3750
Wire Wire Line
	1900 3750 1900 3700
$Comp
L Device:R_Small R212
U 1 1 5EE55580
P 1850 3950
F 0 "R212" V 1775 3875 50  0000 L CNN
F 1 "10k" V 1925 3875 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1850 3950 50  0001 C CNN
F 3 "~" H 1850 3950 50  0001 C CNN
	1    1850 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 3950 2000 3950
Wire Wire Line
	2000 3950 2000 3800
Wire Wire Line
	2000 3800 2050 3800
$Comp
L power:GND #PWR0216
U 1 1 5EE5AE71
P 1550 4150
F 0 "#PWR0216" H 1550 3900 50  0001 C CNN
F 1 "GND" H 1550 4000 50  0000 C CNN
F 2 "" H 1550 4150 50  0001 C CNN
F 3 "" H 1550 4150 50  0001 C CNN
	1    1550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4150 1550 4100
Wire Wire Line
	1650 3950 1700 3950
Wire Wire Line
	1550 3850 1550 3750
Connection ~ 1550 3750
Wire Wire Line
	1550 3750 1600 3750
Text Notes 2150 4300 2    60   ~ 0
LED-mode 1\nby default
Wire Notes Line
	1400 3850 2200 3850
Wire Notes Line
	2200 3850 2200 4350
Wire Notes Line
	2200 4350 1400 4350
Wire Notes Line
	1400 4350 1400 3850
Text Label 4900 2800 2    50   ~ 0
LED3_100M_LINK_ACT
Text Label 4900 2700 2    50   ~ 0
LED2_10M_LINK_ACT
Text Label 4900 2600 2    50   ~ 0
LED1_DUPLEX
Text Label 4900 2500 2    50   ~ 0
LED0_LINK
Wire Wire Line
	4050 2000 4550 2000
Wire Wire Line
	4050 2100 4550 2100
Wire Wire Line
	4050 2200 4550 2200
Wire Wire Line
	4050 2300 4550 2300
Text Label 4550 2000 2    50   ~ 0
TXN
Text Label 4550 2100 2    50   ~ 0
TXP
Text Label 4550 2200 2    50   ~ 0
RXN
Text Label 4550 2300 2    50   ~ 0
RXP
Text Label 8050 1050 0    50   ~ 0
TXP
Text Label 8050 1450 0    50   ~ 0
TXN
Text Label 8050 1650 0    50   ~ 0
RXP
Text Label 8050 2050 0    50   ~ 0
RXN
$Comp
L customlib_mj:EGND #PWR0206
U 1 1 5EECEC51
P 8050 2300
F 0 "#PWR0206" H 8050 2100 50  0001 C CNN
F 1 "EGND" H 8050 2175 50  0000 C CNN
F 2 "" H 8050 2250 50  0001 C CNN
F 3 "" H 8050 2250 50  0001 C CNN
	1    8050 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C207
U 1 1 5EED457B
P 7750 2000
F 0 "C207" H 7775 2075 50  0000 L CNN
F 1 "100n" H 7775 1925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7750 2000 50  0001 C CNN
F 3 "~" H 7750 2000 50  0001 C CNN
	1    7750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C206
U 1 1 5EED52F7
P 7400 2000
F 0 "C206" H 7425 2075 50  0000 L CNN
F 1 "100n" H 7425 1925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7400 2000 50  0001 C CNN
F 3 "~" H 7400 2000 50  0001 C CNN
	1    7400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0205
U 1 1 5EED9837
P 7600 2300
F 0 "#PWR0205" H 7600 2050 50  0001 C CNN
F 1 "GND" H 7600 2150 50  0000 C CNN
F 2 "" H 7600 2300 50  0001 C CNN
F 3 "" H 7600 2300 50  0001 C CNN
	1    7600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2100 7400 2200
Wire Wire Line
	7400 2200 7600 2200
Wire Wire Line
	7750 2200 7750 2100
Wire Wire Line
	7600 2300 7600 2200
Connection ~ 7600 2200
Wire Wire Line
	7600 2200 7750 2200
Wire Wire Line
	7750 1900 7750 1850
Wire Wire Line
	7750 1850 8250 1850
Wire Wire Line
	7400 1900 7400 1250
Wire Wire Line
	7400 1250 8250 1250
Text Label 7100 2650 0    50   ~ 0
LED3_100M_LINK_ACT
Text Label 7100 2850 0    50   ~ 0
LED2_10M_LINK_ACT
Text Label 10700 2650 2    50   ~ 0
LED0_LINK
$Comp
L power:GND #PWR0210
U 1 1 5EF06910
P 10850 3050
F 0 "#PWR0210" H 10850 2800 50  0001 C CNN
F 1 "GND" H 10850 2900 50  0000 C CNN
F 2 "" H 10850 3050 50  0001 C CNN
F 3 "" H 10850 3050 50  0001 C CNN
	1    10850 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2850 10350 2850
Wire Wire Line
	7900 2650 7100 2650
Wire Wire Line
	8250 2850 8200 2850
$Comp
L Device:R_Small R202
U 1 1 5EF1EF52
P 8000 2650
F 0 "R202" V 7925 2575 50  0000 L CNN
F 1 "330" V 8075 2575 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8000 2650 50  0001 C CNN
F 3 "~" H 8000 2650 50  0001 C CNN
	1    8000 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2650 8250 2650
Wire Wire Line
	7950 2850 7900 2850
Wire Wire Line
	8250 2350 8200 2350
Wire Wire Line
	8200 2350 8200 2250
Wire Wire Line
	8200 2250 8050 2250
Wire Wire Line
	8050 2250 8050 2300
$Comp
L Device:R_Small R203
U 1 1 5EF5F122
P 10450 2850
F 0 "R203" V 10375 2775 50  0000 L CNN
F 1 "330" V 10525 2775 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10450 2850 50  0001 C CNN
F 3 "~" H 10450 2850 50  0001 C CNN
	1    10450 2850
	0    1    1    0   
$EndComp
$Comp
L 74xGxx:74LVC1G126 U202
U 1 1 5EF61052
P 2100 5250
F 0 "U202" H 2250 5350 50  0000 C CNN
F 1 "74LVC1G126SE" H 1850 5100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5_Handsoldering" H 2100 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2100 5250 50  0001 C CNN
	1    2100 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0223
U 1 1 5EF74A66
P 2150 5400
F 0 "#PWR0223" H 2150 5150 50  0001 C CNN
F 1 "GND" H 2150 5250 50  0000 C CNN
F 2 "" H 2150 5400 50  0001 C CNN
F 3 "" H 2150 5400 50  0001 C CNN
	1    2150 5400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0220
U 1 1 5EF7602F
P 2100 4950
F 0 "#PWR0220" H 2100 4800 50  0001 C CNN
F 1 "VDD" H 2100 5075 50  0000 C CNN
F 2 "" H 2100 4950 50  0001 C CNN
F 3 "" H 2100 4950 50  0001 C CNN
	1    2100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4950 2100 5000
Wire Wire Line
	2100 5000 2150 5000
Connection ~ 2100 5000
Wire Wire Line
	2100 5000 2100 5050
Text Label 1600 2500 0    50   ~ 0
50M_CLKI
Text Label 1600 2600 0    50   ~ 0
50M_CLKO
Wire Wire Line
	1800 5250 1350 5250
Text Label 1350 5250 0    50   ~ 0
50M_CLKO
Wire Wire Line
	2350 5250 2500 5250
Wire Wire Line
	2500 5250 2500 5150
Wire Wire Line
	2500 5150 3400 5150
Text Label 2950 5350 2    50   ~ 0
50M_CLKI
Wire Wire Line
	2500 5250 2500 5350
Wire Wire Line
	2500 5350 2950 5350
Connection ~ 2500 5250
Text Notes 2550 5450 0    50   ~ 0
Loopback to Phy
Text Notes 2550 5050 0    50   ~ 0
Refclk for MCU MAC
Text Notes 1375 5875 0    70   ~ 0
NOTE: Match the lengths of 50M_CLKI (back to phy)\nso it equals RMII_REF_CLKO (routed to MCU MAC)
Wire Notes Line
	1250 4750 4600 4750
Wire Notes Line
	4600 4750 4600 5900
Wire Notes Line
	4600 5900 1250 5900
Wire Notes Line
	1250 5900 1250 4750
$Comp
L Device:R_Small R205
U 1 1 5F01284F
P 5350 2950
F 0 "R205" V 5275 2875 50  0000 L CNN
F 1 "5k1" V 5425 2875 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5350 2950 50  0001 C CNN
F 3 "~" H 5350 2950 50  0001 C CNN
	1    5350 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R206
U 1 1 5F013E4E
P 5550 2950
F 0 "R206" V 5475 2875 50  0000 L CNN
F 1 "5k1" V 5625 2875 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5550 2950 50  0001 C CNN
F 3 "~" H 5550 2950 50  0001 C CNN
	1    5550 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R207
U 1 1 5F01424A
P 5750 2950
F 0 "R207" V 5675 2875 50  0000 L CNN
F 1 "5k1" V 5825 2875 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5750 2950 50  0001 C CNN
F 3 "~" H 5750 2950 50  0001 C CNN
	1    5750 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 2650 10700 2650
$Comp
L Device:R_Small R208
U 1 1 5F0418FC
P 5950 2950
F 0 "R208" V 5875 2875 50  0000 L CNN
F 1 "5k1" V 6025 2875 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5950 2950 50  0001 C CNN
F 3 "~" H 5950 2950 50  0001 C CNN
	1    5950 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 2800 5350 2850
Wire Wire Line
	4050 2800 5350 2800
Wire Wire Line
	5550 2700 5550 2850
Wire Wire Line
	4050 2700 5550 2700
Wire Wire Line
	5750 2600 5750 2850
Wire Wire Line
	4050 2600 5750 2600
Wire Wire Line
	4050 2500 5950 2500
$Comp
L power:GND #PWR0211
U 1 1 5F05C9E5
P 5400 3150
F 0 "#PWR0211" H 5400 2900 50  0001 C CNN
F 1 "GND" H 5400 3000 50  0000 C CNN
F 2 "" H 5400 3150 50  0001 C CNN
F 3 "" H 5400 3150 50  0001 C CNN
	1    5400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3050 5350 3100
Wire Wire Line
	5350 3100 5400 3100
Wire Wire Line
	5750 3050 5750 3100
Wire Wire Line
	5550 3050 5550 3100
Connection ~ 5550 3100
Wire Wire Line
	5550 3100 5400 3100
Wire Wire Line
	5400 3150 5400 3100
Connection ~ 5400 3100
Text Notes 5300 2400 0    70   ~ 0
PHY addr \nset to \n"0000"b
Wire Wire Line
	5550 3100 5750 3100
Wire Notes Line
	5200 1950 6100 1950
Wire Notes Line
	6100 1950 6100 3350
Wire Notes Line
	6100 3350 5200 3350
Wire Notes Line
	5200 3350 5200 1950
$Comp
L customlib_mj:EGND #PWR0207
U 1 1 5F0D426B
P 10550 2350
F 0 "#PWR0207" H 10550 2150 50  0001 C CNN
F 1 "EGND" H 10550 2225 50  0000 C CNN
F 2 "" H 10550 2300 50  0001 C CNN
F 3 "" H 10550 2300 50  0001 C CNN
	1    10550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2250 10400 2250
Wire Wire Line
	10400 2250 10400 2300
Wire Wire Line
	10400 2350 10250 2350
Wire Wire Line
	10400 2300 10550 2300
Wire Wire Line
	10550 2300 10550 2350
Connection ~ 10400 2300
Wire Wire Line
	10400 2300 10400 2350
$Comp
L customlib_mj:EGND #PWR0213
U 1 1 5F0F4173
P 8600 3250
F 0 "#PWR0213" H 8600 3050 50  0001 C CNN
F 1 "EGND" H 8600 3125 50  0000 C CNN
F 2 "" H 8600 3200 50  0001 C CNN
F 3 "" H 8600 3200 50  0001 C CNN
	1    8600 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0212
U 1 1 5F0F5DFC
P 8000 3250
F 0 "#PWR0212" H 8000 3000 50  0001 C CNN
F 1 "GND" H 8000 3100 50  0000 C CNN
F 2 "" H 8000 3250 50  0001 C CNN
F 3 "" H 8000 3250 50  0001 C CNN
	1    8000 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3250 8000 3200
Wire Wire Line
	8000 3200 8200 3200
Wire Wire Line
	8400 3200 8600 3200
Wire Wire Line
	8600 3200 8600 3250
Text Notes 8750 3400 0    70   ~ 0
NOTE:\nCreate EGND copper pour\naround RJ-45 connector
Wire Notes Line
	7850 3050 10150 3050
Wire Notes Line
	10150 3050 10150 3500
Wire Notes Line
	10150 3500 7850 3500
Wire Notes Line
	7850 3500 7850 3050
$Comp
L Device:C_Small C205
U 1 1 5F1757D7
P 7050 1850
F 0 "C205" H 7075 1925 50  0000 L CNN
F 1 "DNP" H 7075 1775 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7050 1850 50  0001 C CNN
F 3 "~" H 7050 1850 50  0001 C CNN
	1    7050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C204
U 1 1 5F1769EC
P 6800 1850
F 0 "C204" H 6825 1925 50  0000 L CNN
F 1 "DNP" H 6825 1775 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6800 1850 50  0001 C CNN
F 3 "~" H 6800 1850 50  0001 C CNN
	1    6800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C202
U 1 1 5F17740F
P 7050 1300
F 0 "C202" H 7075 1375 50  0000 L CNN
F 1 "DNP" H 7075 1225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7050 1300 50  0001 C CNN
F 3 "~" H 7050 1300 50  0001 C CNN
	1    7050 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C201
U 1 1 5F1778C2
P 6800 1300
F 0 "C201" H 6825 1375 50  0000 L CNN
F 1 "DNP" H 6825 1225 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6800 1300 50  0001 C CNN
F 3 "~" H 6800 1300 50  0001 C CNN
	1    6800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1050 6800 1200
Wire Wire Line
	6800 1050 8250 1050
Wire Wire Line
	7300 1450 7300 1150
Wire Wire Line
	7300 1150 7050 1150
Wire Wire Line
	7050 1150 7050 1200
Wire Wire Line
	7300 1450 8250 1450
Wire Wire Line
	6800 1650 6800 1750
Wire Wire Line
	6800 1650 8250 1650
Wire Wire Line
	8000 2050 8000 1700
Wire Wire Line
	8000 1700 7050 1700
Wire Wire Line
	7050 1700 7050 1750
Wire Wire Line
	8000 2050 8250 2050
$Comp
L power:GND #PWR0204
U 1 1 5F1BA444
P 6950 2050
F 0 "#PWR0204" H 6950 1800 50  0001 C CNN
F 1 "GND" H 6950 1925 50  0000 C CNN
F 2 "" H 6950 2050 50  0001 C CNN
F 3 "" H 6950 2050 50  0001 C CNN
	1    6950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1950 6800 2000
Wire Wire Line
	6800 2000 6950 2000
Wire Wire Line
	7050 2000 7050 1950
Wire Wire Line
	6950 2050 6950 2000
Connection ~ 6950 2000
Wire Wire Line
	6950 2000 7050 2000
Wire Wire Line
	6800 1400 6800 1450
Wire Wire Line
	6800 1450 6950 1450
Wire Wire Line
	7050 1450 7050 1400
$Comp
L power:GND #PWR0201
U 1 1 5F1D6E81
P 6950 1450
F 0 "#PWR0201" H 6950 1200 50  0001 C CNN
F 1 "GND" H 6950 1325 50  0000 C CNN
F 2 "" H 6950 1450 50  0001 C CNN
F 3 "" H 6950 1450 50  0001 C CNN
	1    6950 1450
	1    0    0    -1  
$EndComp
Connection ~ 6950 1450
Wire Wire Line
	6950 1450 7050 1450
Text Notes 6775 1025 0    60   ~ 0
For EMI\nif needed
Wire Notes Line
	6700 825  7250 825 
Wire Notes Line
	7250 825  7250 2225
Wire Notes Line
	7250 2225 6700 2225
Wire Notes Line
	6700 2225 6700 825 
Wire Wire Line
	5750 3100 5950 3100
Wire Wire Line
	5950 3100 5950 3050
Connection ~ 5750 3100
Wire Wire Line
	5950 2850 5950 2500
$Comp
L Device:R_Small R201
U 1 1 5F2B41DA
P 1300 1900
F 0 "R201" V 1225 1825 50  0000 L CNN
F 1 "5k1" V 1375 1825 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1300 1900 50  0001 C CNN
F 3 "~" H 1300 1900 50  0001 C CNN
	1    1300 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 2000 1300 2100
Connection ~ 1300 2100
Wire Wire Line
	1300 2100 2050 2100
$Comp
L power:VDD #PWR0203
U 1 1 5F2DA1BC
P 1300 1700
F 0 "#PWR0203" H 1300 1550 50  0001 C CNN
F 1 "VDD" H 1300 1825 50  0000 C CNN
F 2 "" H 1300 1700 50  0001 C CNN
F 3 "" H 1300 1700 50  0001 C CNN
	1    1300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1800 1300 1700
$Comp
L Device:C_Small C211
U 1 1 5F332EE9
P 6450 5450
F 0 "C211" H 6450 5375 50  0000 L CNN
F 1 "100n" H 6450 5525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6450 5450 50  0001 C CNN
F 3 "~" H 6450 5450 50  0001 C CNN
	1    6450 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5150 6450 5350
Connection ~ 6450 5150
$Comp
L power:GND #PWR0225
U 1 1 5F33D0F2
P 6450 5800
F 0 "#PWR0225" H 6450 5550 50  0001 C CNN
F 1 "GND" H 6450 5650 50  0000 C CNN
F 2 "" H 6450 5800 50  0001 C CNN
F 3 "" H 6450 5800 50  0001 C CNN
	1    6450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5800 6450 5550
Wire Wire Line
	10550 2850 10700 2850
Wire Wire Line
	10850 2950 10850 3000
$Comp
L power:VDD #PWR0208
U 1 1 5F3A1620
P 10850 2650
F 0 "#PWR0208" H 10850 2500 50  0001 C CNN
F 1 "VDD" H 10850 2775 50  0000 C CNN
F 2 "" H 10850 2650 50  0001 C CNN
F 3 "" H 10850 2650 50  0001 C CNN
	1    10850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 2650 10850 2750
$Comp
L Device:R_Small R209
U 1 1 5F3D5C07
P 8300 3200
F 0 "R209" V 8225 3125 50  0000 L CNN
F 1 "0R" V 8375 3125 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8300 3200 50  0001 C CNN
F 3 "~" H 8300 3200 50  0001 C CNN
	1    8300 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3250 5050 3350
Wire Wire Line
	4400 3250 4650 3250
Wire Wire Line
	4200 3550 4650 3550
Wire Wire Line
	4650 3300 4650 3250
Connection ~ 4650 3250
Wire Wire Line
	4650 3250 4750 3250
Wire Wire Line
	4650 3500 4650 3550
Connection ~ 4650 3550
Wire Wire Line
	4650 3550 4750 3550
Wire Wire Line
	4750 3350 5050 3350
Connection ~ 5050 3350
Wire Wire Line
	5050 3350 5050 3400
Wire Wire Line
	4750 3450 5050 3450
Connection ~ 5050 3450
Wire Wire Line
	5050 3450 5050 3400
Wire Wire Line
	2150 5300 2150 5400
Wire Wire Line
	2150 5000 2150 5200
$Comp
L Device:C_Small C210
U 1 1 5F3FE8A4
P 4300 5250
F 0 "C210" H 4300 5175 50  0000 L CNN
F 1 "100n" H 4300 5325 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4300 5250 50  0001 C CNN
F 3 "~" H 4300 5250 50  0001 C CNN
	1    4300 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0222
U 1 1 5F4002B3
P 4300 5050
F 0 "#PWR0222" H 4300 4900 50  0001 C CNN
F 1 "VDD" H 4300 5175 50  0000 C CNN
F 2 "" H 4300 5050 50  0001 C CNN
F 3 "" H 4300 5050 50  0001 C CNN
	1    4300 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0224
U 1 1 5F400CAA
P 4300 5450
F 0 "#PWR0224" H 4300 5200 50  0001 C CNN
F 1 "GND" H 4300 5300 50  0000 C CNN
F 2 "" H 4300 5450 50  0001 C CNN
F 3 "" H 4300 5450 50  0001 C CNN
	1    4300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5450 4300 5350
Wire Wire Line
	4300 5150 4300 5050
Text GLabel 4650 3100 2    50   Output ~ 0
~PHY_IRQn~
Text GLabel 3400 5150 2    50   Output ~ 0
RMII_REF_CLK
Text Label 2500 5150 0    50   ~ 0
RMII_50M_REF_CLKO
Text GLabel 1550 3600 0    50   Output ~ 0
RMII_CRS_DV
Text GLabel 1550 3400 0    50   Output ~ 0
RMII_RX_D0
Text GLabel 1550 3300 0    50   Output ~ 0
RMII_RX_D1
Text GLabel 1550 3000 0    50   Input ~ 0
RMII_TX_D0
Text GLabel 1550 2900 0    50   Input ~ 0
RMII_TX_D1
Text GLabel 1550 2300 0    50   Input ~ 0
RMII_TX_EN
Text GLabel 1150 2100 0    50   BiDi ~ 0
ETH_MDIO
Text GLabel 1800 2000 0    50   Input ~ 0
ETH_MDC
Text GLabel 1200 1200 0    50   Input ~ 0
~SYS_RSTn~
$Comp
L customlib_mj:dogbone_3_ud JP202
U 1 1 5F4424EF
P 10850 2850
F 0 "JP202" V 10850 3006 50  0000 C CNN
F 1 "dogbone_3_ud" H 10875 3000 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0402" H 10850 2850 50  0001 C CNN
F 3 "" H 10850 2850 50  0001 C CNN
	1    10850 2850
	0    1    -1   0   
$EndComp
Wire Wire Line
	10700 2850 10700 3000
Wire Wire Line
	10700 3000 10850 3000
Connection ~ 10700 2850
Wire Wire Line
	10700 2850 10750 2850
Connection ~ 10850 3000
Wire Wire Line
	10850 3000 10850 3050
Wire Wire Line
	1700 3950 1700 4100
Wire Wire Line
	1700 4100 1550 4100
Connection ~ 1700 3950
Wire Wire Line
	1700 3950 1750 3950
Connection ~ 1550 4100
Wire Wire Line
	1550 4100 1550 4050
$Comp
L customlib_mj:dogbone_3_ud JP203
U 1 1 5F45B4D6
P 1550 3950
F 0 "JP203" V 1550 4106 50  0000 C CNN
F 1 "dogbone_3_ud" H 1575 4100 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0402" H 1550 3950 50  0001 C CNN
F 3 "" H 1550 3950 50  0001 C CNN
	1    1550 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0202
U 1 1 5F4DF18F
P 7050 5150
F 0 "#FLG0202" H 7050 5225 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 5300 50  0000 C CNN
F 2 "" H 7050 5150 50  0001 C CNN
F 3 "~" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
Connection ~ 7050 5150
Wire Wire Line
	7050 5150 6900 5150
$Comp
L customlib_mj:dogbone_2_ud JP201
U 1 1 5F4DFBC4
P 8050 2850
F 0 "JP201" H 8050 2750 50  0000 C CNN
F 1 "dogbone_2_ud" H 8050 2950 50  0001 C CNN
F 2 "customlib_mj_fp:db2_ud_0402" H 8050 2850 50  0001 C CNN
F 3 "" H 8050 2850 50  0001 C CNN
	1    8050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2850 7900 2900
Wire Wire Line
	7900 2900 8200 2900
Wire Wire Line
	8200 2900 8200 2850
Connection ~ 7900 2850
Wire Wire Line
	7900 2850 7100 2850
Connection ~ 8200 2850
Wire Wire Line
	8200 2850 8150 2850
$Comp
L power:PWR_FLAG #FLG0201
U 1 1 5F4FB7A6
P 10550 2300
F 0 "#FLG0201" H 10550 2375 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 2473 50  0000 C CNN
F 2 "" H 10550 2300 50  0001 C CNN
F 3 "~" H 10550 2300 50  0001 C CNN
	1    10550 2300
	1    0    0    -1  
$EndComp
Connection ~ 10550 2300
$Comp
L customlib_mj:Crystal_TSX3225_25MF10P-C Y201
U 1 1 5F3EC90A
P 4650 3400
F 0 "Y201" V 4750 3500 50  0000 L CNN
F 1 "TSX-3225 25.0000MF10P-C" V 4900 3050 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_TSX3225-4Pin_3.2x2.5mm_HandSoldering" H 4650 3400 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/137/FA-238_en-932914.pdf" H 4650 3400 50  0001 C CNN
	1    4650 3400
	0    -1   1    0   
$EndComp
$EndSCHEMATC
