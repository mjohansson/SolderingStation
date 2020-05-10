EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title "DC/DC Buck, LDOs & master load-switches"
Date "2020-05-08"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L customlib_mj:VIN #PWR?
U 1 1 5F475C43
P 900 1100
F 0 "#PWR?" H 900 950 50  0001 C CNN
F 1 "VIN" H 900 1250 50  0000 C CNN
F 2 "" H 900 1100 50  0001 C CNN
F 3 "" H 900 1100 50  0001 C CNN
	1    900  1100
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:UCL1V470MCL1GS C?
U 1 1 5F47609B
P 1500 1400
F 0 "C?" H 1588 1446 50  0000 L CNN
F 1 "UCL1V470MCL1GS" H 1588 1355 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 1500 1400 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/293/e-ucl-1513103.pdf" H 1500 1400 50  0001 C CNN
	1    1500 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F476A64
P 900 1400
F 0 "C?" H 992 1446 50  0000 L CNN
F 1 "100n" H 992 1355 50  0000 L CNN
F 2 "" H 900 1400 50  0001 C CNN
F 3 "~" H 900 1400 50  0001 C CNN
	1    900  1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F47714E
P 1500 1700
F 0 "#PWR?" H 1500 1450 50  0001 C CNN
F 1 "GND" H 1500 1550 50  0000 C CNN
F 2 "" H 1500 1700 50  0001 C CNN
F 3 "" H 1500 1700 50  0001 C CNN
	1    1500 1700
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VIN #PWR?
U 1 1 5F4779C0
P 1500 1100
F 0 "#PWR?" H 1500 950 50  0001 C CNN
F 1 "VIN" H 1500 1250 50  0000 C CNN
F 2 "" H 1500 1100 50  0001 C CNN
F 3 "" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F477DAD
P 900 1700
F 0 "#PWR?" H 900 1450 50  0001 C CNN
F 1 "GND" H 900 1550 50  0000 C CNN
F 2 "" H 900 1700 50  0001 C CNN
F 3 "" H 900 1700 50  0001 C CNN
	1    900  1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1100 900  1300
Wire Wire Line
	1500 1100 1500 1300
Wire Wire Line
	1500 1500 1500 1700
Wire Wire Line
	900  1500 900  1700
Text Notes 2300 1100 0    71   ~ 14
ToDo: VIN connector / solderable \nthrough-holes. Fuse?
$Comp
L customlib_mj:UCL1V470MCL1GS C?
U 1 1 5F478643
P 3600 4400
F 0 "C?" H 3500 4350 50  0000 R CNN
F 1 "UCL1V470MCL1GS" H 2838 4445 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 3600 4400 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/293/e-ucl-1513103.pdf" H 3600 4400 50  0001 C CNN
	1    3600 4400
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F47864D
P 3600 4900
F 0 "#PWR?" H 3600 4650 50  0001 C CNN
F 1 "GND" H 3600 4750 50  0000 C CNN
F 2 "" H 3600 4900 50  0001 C CNN
F 3 "" H 3600 4900 50  0001 C CNN
	1    3600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4000 3600 4300
Wire Wire Line
	3600 4500 3600 4900
$Comp
L Device:C_Small C?
U 1 1 5F47D328
P 4000 2600
F 0 "C?" H 4092 2646 50  0000 L CNN
F 1 "10u" H 4092 2555 50  0000 L CNN
F 2 "" H 4000 2600 50  0001 C CNN
F 3 "~" H 4000 2600 50  0001 C CNN
	1    4000 2600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VIN #PWR?
U 1 1 5F47DCB0
P 3800 2000
F 0 "#PWR?" H 3800 1850 50  0001 C CNN
F 1 "VIN" H 3800 2150 50  0000 C CNN
F 2 "" H 3800 2000 50  0001 C CNN
F 3 "" H 3800 2000 50  0001 C CNN
	1    3800 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F47FF6E
P 4300 2600
F 0 "C?" H 4392 2646 50  0000 L CNN
F 1 "10u" H 4392 2555 50  0000 L CNN
F 2 "" H 4300 2600 50  0001 C CNN
F 3 "~" H 4300 2600 50  0001 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F4805D1
P 4600 2300
F 0 "R?" H 4659 2346 50  0000 L CNN
F 1 "390k" H 4659 2255 50  0000 L CNN
F 2 "" H 4600 2300 50  0001 C CNN
F 3 "~" H 4600 2300 50  0001 C CNN
	1    4600 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F4813AA
P 4600 2700
F 0 "R?" H 4659 2746 50  0000 L CNN
F 1 "68k" H 4659 2655 50  0000 L CNN
F 2 "" H 4600 2700 50  0001 C CNN
F 3 "~" H 4600 2700 50  0001 C CNN
	1    4600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4824C4
P 5200 2700
F 0 "C?" H 5292 2746 50  0000 L CNN
F 1 "15n" H 5292 2655 50  0000 L CNN
F 2 "" H 5200 2700 50  0001 C CNN
F 3 "~" H 5200 2700 50  0001 C CNN
	1    5200 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F482D62
P 5600 2700
F 0 "C?" H 5692 2746 50  0000 L CNN
F 1 "4p7" H 5692 2655 50  0000 L CNN
F 2 "" H 5600 2700 50  0001 C CNN
F 3 "~" H 5600 2700 50  0001 C CNN
	1    5600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4831B5
P 6000 2700
F 0 "C?" H 6092 2746 50  0000 L CNN
F 1 "470p" H 6092 2655 50  0000 L CNN
F 2 "" H 6000 2700 50  0001 C CNN
F 3 "~" H 6000 2700 50  0001 C CNN
	1    6000 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F483485
P 6000 3000
F 0 "R?" H 6059 3046 50  0000 L CNN
F 1 "150k" H 6059 2955 50  0000 L CNN
F 2 "" H 6000 3000 50  0001 C CNN
F 3 "~" H 6000 3000 50  0001 C CNN
	1    6000 3000
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:TPS54332DDA U?
U 1 1 5F484368
P 7100 2300
F 0 "U?" H 7100 2767 50  0000 C CNN
F 1 "TPS54332DDA" H 7100 2676 50  0000 C CNN
F 2 "Package_SO:TI_SO-PowerPAD-8_ThermalVias" H 8000 1950 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tps54332" H 8100 1850 50  0001 C CNN
	1    7100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2100 3800 2000
Wire Wire Line
	6600 2500 6000 2500
Wire Wire Line
	6000 2500 6000 2600
Wire Wire Line
	6000 2500 5600 2500
Wire Wire Line
	5600 2500 5600 2600
Connection ~ 6000 2500
Wire Wire Line
	6000 2800 6000 2900
Wire Wire Line
	6600 2400 5200 2400
Wire Wire Line
	5200 2400 5200 2600
$Comp
L power:GND #PWR?
U 1 1 5F487430
P 6000 3200
F 0 "#PWR?" H 6000 2950 50  0001 C CNN
F 1 "GND" H 6000 3050 50  0000 C CNN
F 2 "" H 6000 3200 50  0001 C CNN
F 3 "" H 6000 3200 50  0001 C CNN
	1    6000 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F487804
P 5600 3200
F 0 "#PWR?" H 5600 2950 50  0001 C CNN
F 1 "GND" H 5600 3050 50  0000 C CNN
F 2 "" H 5600 3200 50  0001 C CNN
F 3 "" H 5600 3200 50  0001 C CNN
	1    5600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F487ABE
P 5200 3200
F 0 "#PWR?" H 5200 2950 50  0001 C CNN
F 1 "GND" H 5200 3050 50  0000 C CNN
F 2 "" H 5200 3200 50  0001 C CNN
F 3 "" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F487DBF
P 4600 2900
F 0 "#PWR?" H 4600 2650 50  0001 C CNN
F 1 "GND" H 4600 2750 50  0000 C CNN
F 2 "" H 4600 2900 50  0001 C CNN
F 3 "" H 4600 2900 50  0001 C CNN
	1    4600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F48801F
P 4300 2900
F 0 "#PWR?" H 4300 2650 50  0001 C CNN
F 1 "GND" H 4300 2750 50  0000 C CNN
F 2 "" H 4300 2900 50  0001 C CNN
F 3 "" H 4300 2900 50  0001 C CNN
	1    4300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4882BC
P 4000 2900
F 0 "#PWR?" H 4000 2650 50  0001 C CNN
F 1 "GND" H 4000 2750 50  0000 C CNN
F 2 "" H 4000 2900 50  0001 C CNN
F 3 "" H 4000 2900 50  0001 C CNN
	1    4000 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F48852C
P 7100 2900
F 0 "#PWR?" H 7100 2650 50  0001 C CNN
F 1 "GND" H 7100 2750 50  0000 C CNN
F 2 "" H 7100 2900 50  0001 C CNN
F 3 "" H 7100 2900 50  0001 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2700 7100 2800
Wire Wire Line
	7000 2700 7000 2800
Wire Wire Line
	7000 2800 7100 2800
Connection ~ 7100 2800
Wire Wire Line
	7100 2800 7100 2900
Wire Wire Line
	6000 3100 6000 3200
Wire Wire Line
	5600 2800 5600 3200
Wire Wire Line
	5200 2800 5200 3200
Wire Wire Line
	6600 2100 4600 2100
Wire Wire Line
	4600 2200 4600 2100
Connection ~ 4600 2100
Wire Wire Line
	4600 2100 4300 2100
Wire Wire Line
	4600 2600 4600 2500
Wire Wire Line
	4600 2900 4600 2800
Wire Wire Line
	4300 2900 4300 2700
Wire Wire Line
	4000 2900 4000 2700
Wire Wire Line
	4000 2500 4000 2100
Connection ~ 4000 2100
Wire Wire Line
	4000 2100 3800 2100
Wire Wire Line
	4300 2500 4300 2100
Connection ~ 4300 2100
Wire Wire Line
	4300 2100 4000 2100
Wire Wire Line
	4600 2500 5000 2500
Wire Wire Line
	5000 2500 5000 2200
Wire Wire Line
	5000 2200 6600 2200
Connection ~ 4600 2500
Wire Wire Line
	4600 2500 4600 2400
$Comp
L Device:C_Small C?
U 1 1 5F48FB24
P 7800 2100
F 0 "C?" V 7700 2100 50  0000 C CNN
F 1 "100n" V 7900 2000 50  0000 L CNN
F 2 "" H 7800 2100 50  0001 C CNN
F 3 "~" H 7800 2100 50  0001 C CNN
	1    7800 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F490BBA
P 8800 3000
F 0 "R?" H 8859 3046 50  0000 L CNN
F 1 "1k8" H 8859 2955 50  0000 L CNN
F 2 "" H 8800 3000 50  0001 C CNN
F 3 "~" H 8800 3000 50  0001 C CNN
	1    8800 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4924F5
P 8800 3200
F 0 "#PWR?" H 8800 2950 50  0001 C CNN
F 1 "GND" H 8800 3050 50  0000 C CNN
F 2 "" H 8800 3200 50  0001 C CNN
F 3 "" H 8800 3200 50  0001 C CNN
	1    8800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F4926FE
P 8800 2600
F 0 "R?" H 8859 2646 50  0000 L CNN
F 1 "10k" H 8859 2555 50  0000 L CNN
F 2 "" H 8800 2600 50  0001 C CNN
F 3 "~" H 8800 2600 50  0001 C CNN
	1    8800 2600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:MBRS340T3G D?
U 1 1 5F493375
P 8100 2500
F 0 "D?" V 8050 2600 50  0000 L CNN
F 1 "MBRS340T3G" V 8145 2824 50  0000 C CNN
F 2 "customlib_mj_fp:MBRS3xx_SMC_CASE_403AC" H 8100 2325 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MBRS340T3-D.PDF" H 8100 2500 50  0001 C CNN
	1    8100 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F494DAE
P 8100 2700
F 0 "#PWR?" H 8100 2450 50  0001 C CNN
F 1 "GND" H 8100 2550 50  0000 C CNN
F 2 "" H 8100 2700 50  0001 C CNN
F 3 "" H 8100 2700 50  0001 C CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:ASPI-0630LR-3R3M-T15 L?
U 1 1 5F495A03
P 8500 2300
F 0 "L?" H 8500 2526 50  0000 C CNN
F 1 "ASPI-0630LR-3R3M-T15" H 8500 2435 50  0000 C CNN
F 2 "customlib_mj_fp:ASPI-0603LR" V 8500 2300 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/3/ASPI-0630LR-1774844.pdf" V 8500 2300 50  0001 C CNN
	1    8500 2300
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:APXG160ARA101ME61G C?
U 1 1 5F497049
P 9200 2600
F 0 "C?" H 9288 2646 50  0000 L CNN
F 1 "APXG160ARA101ME61G" H 9288 2555 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.8" H 9200 2600 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/420/United-Chemi-Con-775864.pdf" H 9200 2600 50  0001 C CNN
	1    9200 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F497D32
P 10200 2600
F 0 "C?" H 10292 2646 50  0000 L CNN
F 1 "10u" H 10292 2555 50  0000 L CNN
F 2 "" H 10200 2600 50  0001 C CNN
F 3 "~" H 10200 2600 50  0001 C CNN
	1    10200 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F498580
P 9200 2900
F 0 "#PWR?" H 9200 2650 50  0001 C CNN
F 1 "GND" H 9200 2750 50  0000 C CNN
F 2 "" H 9200 2900 50  0001 C CNN
F 3 "" H 9200 2900 50  0001 C CNN
	1    9200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F499E9F
P 10200 2900
F 0 "#PWR?" H 10200 2650 50  0001 C CNN
F 1 "GND" H 10200 2750 50  0000 C CNN
F 2 "" H 10200 2900 50  0001 C CNN
F 3 "" H 10200 2900 50  0001 C CNN
	1    10200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2100 7700 2100
Wire Wire Line
	7600 2300 8000 2300
Wire Wire Line
	8100 2350 8100 2300
Connection ~ 8100 2300
Wire Wire Line
	8100 2300 8350 2300
Wire Wire Line
	8100 2700 8100 2650
Wire Wire Line
	7900 2100 8000 2100
Wire Wire Line
	8000 2100 8000 2300
Connection ~ 8000 2300
Wire Wire Line
	8000 2300 8100 2300
Wire Wire Line
	8800 2700 8800 2800
Wire Wire Line
	8800 3100 8800 3200
Wire Wire Line
	8800 2800 8400 2800
Wire Wire Line
	8400 2800 8400 3000
Wire Wire Line
	8400 3000 7800 3000
Wire Wire Line
	7800 3000 7800 2500
Wire Wire Line
	7800 2500 7600 2500
Connection ~ 8800 2800
Wire Wire Line
	8800 2800 8800 2900
$Comp
L customlib_mj:VMAIN #PWR?
U 1 1 5F4A6151
P 10300 2000
F 0 "#PWR?" H 10300 1850 50  0001 C CNN
F 1 "VMAIN" H 10300 2150 50  0000 C CNN
F 2 "" H 10300 2000 50  0001 C CNN
F 3 "" H 10300 2000 50  0001 C CNN
	1    10300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2300 8800 2300
Wire Wire Line
	10300 2300 10300 2000
Wire Wire Line
	8800 2500 8800 2300
Connection ~ 8800 2300
Wire Wire Line
	8800 2300 9200 2300
Wire Wire Line
	9200 2500 9200 2300
Connection ~ 9200 2300
Wire Wire Line
	9200 2300 10200 2300
Wire Wire Line
	9200 2900 9200 2700
Wire Wire Line
	10200 2900 10200 2700
Wire Wire Line
	10200 2500 10200 2300
Connection ~ 10200 2300
Wire Wire Line
	10200 2300 10300 2300
Text Notes 6400 3400 0    71   ~ 14
Pluto DC/DC BUCK\nValues TBD for 12V -> 5V
$Comp
L customlib_mj:TLV1117LV30DCY U?
U 1 1 5F4B89FD
P 5100 4500
F 0 "U?" H 4781 4742 50  0000 L CNN
F 1 "TLV1117LV30DCY" H 5100 4651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5100 4300 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv1117lv" H 5100 4500 50  0001 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4CA9C8
P 4600 4700
F 0 "C?" H 4692 4746 50  0000 L CNN
F 1 "10u" H 4692 4655 50  0000 L CNN
F 2 "" H 4600 4700 50  0001 C CNN
F 3 "~" H 4600 4700 50  0001 C CNN
	1    4600 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4CB6B7
P 5500 4700
F 0 "C?" H 5592 4746 50  0000 L CNN
F 1 "10u" H 5592 4655 50  0000 L CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "~" H 5500 4700 50  0001 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4CC2C8
P 4600 4900
F 0 "#PWR?" H 4600 4650 50  0001 C CNN
F 1 "GND" H 4600 4750 50  0000 C CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4CC8AD
P 5100 4900
F 0 "#PWR?" H 5100 4650 50  0001 C CNN
F 1 "GND" H 5100 4750 50  0000 C CNN
F 2 "" H 5100 4900 50  0001 C CNN
F 3 "" H 5100 4900 50  0001 C CNN
	1    5100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4CCC0B
P 5500 4900
F 0 "#PWR?" H 5500 4650 50  0001 C CNN
F 1 "GND" H 5500 4750 50  0000 C CNN
F 2 "" H 5500 4900 50  0001 C CNN
F 3 "" H 5500 4900 50  0001 C CNN
	1    5500 4900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VMAIN #PWR?
U 1 1 5F4CCEB4
P 4500 4400
F 0 "#PWR?" H 4500 4250 50  0001 C CNN
F 1 "VMAIN" H 4500 4550 50  0000 C CNN
F 2 "" H 4500 4400 50  0001 C CNN
F 3 "" H 4500 4400 50  0001 C CNN
	1    4500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4400 4500 4500
Wire Wire Line
	4500 4500 4600 4500
Wire Wire Line
	4600 4500 4600 4600
Connection ~ 4600 4500
Wire Wire Line
	4600 4500 4800 4500
Wire Wire Line
	4600 4800 4600 4900
Wire Wire Line
	5100 4800 5100 4900
$Comp
L power:VDD #PWR?
U 1 1 5F4E1119
P 5600 4400
F 0 "#PWR?" H 5600 4250 50  0001 C CNN
F 1 "VDD" H 5600 4550 50  0000 C CNN
F 2 "" H 5600 4400 50  0001 C CNN
F 3 "" H 5600 4400 50  0001 C CNN
	1    5600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4500 5500 4500
Wire Wire Line
	5600 4500 5600 4400
Wire Wire Line
	5500 4500 5500 4600
Connection ~ 5500 4500
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	5500 4800 5500 4900
$Comp
L customlib_mj:TLV1117LV30DCY U?
U 1 1 5F4E6E51
P 6900 4500
F 0 "U?" H 6581 4742 50  0000 L CNN
F 1 "TLV1117LV30DCY" H 6900 4651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6900 4300 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv1117lv" H 6900 4500 50  0001 C CNN
	1    6900 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4E6E5B
P 6400 4700
F 0 "C?" H 6492 4746 50  0000 L CNN
F 1 "10u" H 6492 4655 50  0000 L CNN
F 2 "" H 6400 4700 50  0001 C CNN
F 3 "~" H 6400 4700 50  0001 C CNN
	1    6400 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F4E6E65
P 7300 4700
F 0 "C?" H 7392 4746 50  0000 L CNN
F 1 "10u" H 7392 4655 50  0000 L CNN
F 2 "" H 7300 4700 50  0001 C CNN
F 3 "~" H 7300 4700 50  0001 C CNN
	1    7300 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4E6E6F
P 6400 4900
F 0 "#PWR?" H 6400 4650 50  0001 C CNN
F 1 "GND" H 6400 4750 50  0000 C CNN
F 2 "" H 6400 4900 50  0001 C CNN
F 3 "" H 6400 4900 50  0001 C CNN
	1    6400 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4E6E79
P 6900 4900
F 0 "#PWR?" H 6900 4650 50  0001 C CNN
F 1 "GND" H 6900 4750 50  0000 C CNN
F 2 "" H 6900 4900 50  0001 C CNN
F 3 "" H 6900 4900 50  0001 C CNN
	1    6900 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4E6E83
P 7300 4900
F 0 "#PWR?" H 7300 4650 50  0001 C CNN
F 1 "GND" H 7300 4750 50  0000 C CNN
F 2 "" H 7300 4900 50  0001 C CNN
F 3 "" H 7300 4900 50  0001 C CNN
	1    7300 4900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VMAIN #PWR?
U 1 1 5F4E6E8D
P 6300 4400
F 0 "#PWR?" H 6300 4250 50  0001 C CNN
F 1 "VMAIN" H 6300 4550 50  0000 C CNN
F 2 "" H 6300 4400 50  0001 C CNN
F 3 "" H 6300 4400 50  0001 C CNN
	1    6300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4400 6300 4500
Wire Wire Line
	6300 4500 6400 4500
Wire Wire Line
	6400 4500 6400 4600
Connection ~ 6400 4500
Wire Wire Line
	6400 4500 6600 4500
Wire Wire Line
	6400 4800 6400 4900
Wire Wire Line
	6900 4800 6900 4900
Wire Wire Line
	7200 4500 7300 4500
Wire Wire Line
	7400 4500 7400 4400
Wire Wire Line
	7300 4500 7300 4600
Connection ~ 7300 4500
Wire Wire Line
	7300 4500 7400 4500
Wire Wire Line
	7300 4800 7300 4900
$Comp
L power:VDDA #PWR?
U 1 1 5F4ED7D2
P 7400 4400
F 0 "#PWR?" H 7400 4250 50  0001 C CNN
F 1 "VDDA" H 7415 4573 50  0000 C CNN
F 2 "" H 7400 4400 50  0001 C CNN
F 3 "" H 7400 4400 50  0001 C CNN
	1    7400 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 5F4FD5B9
P 1000 6700
F 0 "D?" V 1050 6550 50  0000 L CNN
F 1 "Yellow" V 950 6400 50  0000 L CNN
F 2 "" V 1000 6700 50  0001 C CNN
F 3 "~" V 1000 6700 50  0001 C CNN
	1    1000 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F4FEBFD
P 1000 6300
F 0 "R?" H 1059 6346 50  0000 L CNN
F 1 "4k7" H 1059 6255 50  0000 L CNN
F 2 "" H 1000 6300 50  0001 C CNN
F 3 "~" H 1000 6300 50  0001 C CNN
	1    1000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F501C69
P 1000 6900
F 0 "#PWR?" H 1000 6650 50  0001 C CNN
F 1 "GND" H 1000 6750 50  0000 C CNN
F 2 "" H 1000 6900 50  0001 C CNN
F 3 "" H 1000 6900 50  0001 C CNN
	1    1000 6900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VIN #PWR?
U 1 1 5F502138
P 1000 6100
F 0 "#PWR?" H 1000 5950 50  0001 C CNN
F 1 "VIN" H 1000 6250 50  0000 C CNN
F 2 "" H 1000 6100 50  0001 C CNN
F 3 "" H 1000 6100 50  0001 C CNN
	1    1000 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6100 1000 6200
Wire Wire Line
	1000 6400 1000 6600
Wire Wire Line
	1000 6800 1000 6900
$Comp
L Device:LED_Small D?
U 1 1 5F50AA64
P 1500 6700
F 0 "D?" V 1550 6550 50  0000 L CNN
F 1 "Green" V 1450 6400 50  0000 L CNN
F 2 "" V 1500 6700 50  0001 C CNN
F 3 "~" V 1500 6700 50  0001 C CNN
	1    1500 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F50AA6E
P 1500 6300
F 0 "R?" H 1559 6346 50  0000 L CNN
F 1 "4k7" H 1559 6255 50  0000 L CNN
F 2 "" H 1500 6300 50  0001 C CNN
F 3 "~" H 1500 6300 50  0001 C CNN
	1    1500 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F50AA78
P 1500 6900
F 0 "#PWR?" H 1500 6650 50  0001 C CNN
F 1 "GND" H 1500 6750 50  0000 C CNN
F 2 "" H 1500 6900 50  0001 C CNN
F 3 "" H 1500 6900 50  0001 C CNN
	1    1500 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6100 1500 6200
Wire Wire Line
	1500 6400 1500 6600
Wire Wire Line
	1500 6800 1500 6900
$Comp
L Device:R_Small R?
U 1 1 5F50E71C
P 2000 6300
F 0 "R?" H 2059 6346 50  0000 L CNN
F 1 "1k" H 2059 6255 50  0000 L CNN
F 2 "" H 2000 6300 50  0001 C CNN
F 3 "~" H 2000 6300 50  0001 C CNN
	1    2000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F50E726
P 2000 6900
F 0 "#PWR?" H 2000 6650 50  0001 C CNN
F 1 "GND" H 2000 6750 50  0000 C CNN
F 2 "" H 2000 6900 50  0001 C CNN
F 3 "" H 2000 6900 50  0001 C CNN
	1    2000 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 6100 2000 6200
Wire Wire Line
	2000 6400 2000 6600
Wire Wire Line
	2000 6800 2000 6900
$Comp
L Device:R_Small R?
U 1 1 5F5125B5
P 3500 6300
F 0 "R?" H 3559 6346 50  0000 L CNN
F 1 "100R" H 3559 6255 50  0000 L CNN
F 2 "" H 3500 6300 50  0001 C CNN
F 3 "~" H 3500 6300 50  0001 C CNN
	1    3500 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5125BF
P 3500 6900
F 0 "#PWR?" H 3500 6650 50  0001 C CNN
F 1 "GND" H 3500 6750 50  0000 C CNN
F 2 "" H 3500 6900 50  0001 C CNN
F 3 "" H 3500 6900 50  0001 C CNN
	1    3500 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6100 3500 6200
Wire Wire Line
	3500 6400 3500 6600
Wire Wire Line
	3500 6800 3500 6900
$Comp
L Device:R_Small R?
U 1 1 5F5125E0
P 4000 6300
F 0 "R?" H 4059 6346 50  0000 L CNN
F 1 "100R" H 4059 6255 50  0000 L CNN
F 2 "" H 4000 6300 50  0001 C CNN
F 3 "~" H 4000 6300 50  0001 C CNN
	1    4000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5125EA
P 4000 6900
F 0 "#PWR?" H 4000 6650 50  0001 C CNN
F 1 "GND" H 4000 6750 50  0000 C CNN
F 2 "" H 4000 6900 50  0001 C CNN
F 3 "" H 4000 6900 50  0001 C CNN
	1    4000 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6100 4000 6200
Wire Wire Line
	4000 6400 4000 6600
Wire Wire Line
	4000 6800 4000 6900
$Comp
L Device:LED_Small D?
U 1 1 5F517EFA
P 2000 6700
F 0 "D?" V 2050 6550 50  0000 L CNN
F 1 "Green" V 1950 6400 50  0000 L CNN
F 2 "" V 2000 6700 50  0001 C CNN
F 3 "~" V 2000 6700 50  0001 C CNN
	1    2000 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 5F5183A2
P 3500 6700
F 0 "D?" V 3550 6550 50  0000 L CNN
F 1 "Green" V 3450 6400 50  0000 L CNN
F 2 "" V 3500 6700 50  0001 C CNN
F 3 "~" V 3500 6700 50  0001 C CNN
	1    3500 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 5F518928
P 4000 6700
F 0 "D?" V 4050 6550 50  0000 L CNN
F 1 "Green" V 3950 6400 50  0000 L CNN
F 2 "" V 4000 6700 50  0001 C CNN
F 3 "~" V 4000 6700 50  0001 C CNN
	1    4000 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5F519318
P 3500 6100
F 0 "#PWR?" H 3500 5950 50  0001 C CNN
F 1 "VDD" H 3500 6250 50  0000 C CNN
F 2 "" H 3500 6100 50  0001 C CNN
F 3 "" H 3500 6100 50  0001 C CNN
	1    3500 6100
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR?
U 1 1 5F519D08
P 4000 6100
F 0 "#PWR?" H 4000 5950 50  0001 C CNN
F 1 "VDDA" H 4000 6250 50  0000 C CNN
F 2 "" H 4000 6100 50  0001 C CNN
F 3 "" H 4000 6100 50  0001 C CNN
	1    4000 6100
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VMAIN #PWR?
U 1 1 5F51A70D
P 2000 6100
F 0 "#PWR?" H 2000 5950 50  0001 C CNN
F 1 "VMAIN" H 2000 6250 50  0000 C CNN
F 2 "" H 2000 6100 50  0001 C CNN
F 3 "" H 2000 6100 50  0001 C CNN
	1    2000 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F51B10F
P 1500 6100
F 0 "#PWR?" H 1500 5950 50  0001 C CNN
F 1 "+12V" H 1500 6250 50  0000 C CNN
F 2 "" H 1500 6100 50  0001 C CNN
F 3 "" H 1500 6100 50  0001 C CNN
	1    1500 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F521E5D
P 3000 6300
F 0 "R?" H 3059 6346 50  0000 L CNN
F 1 "1k" H 3059 6255 50  0000 L CNN
F 2 "" H 3000 6300 50  0001 C CNN
F 3 "~" H 3000 6300 50  0001 C CNN
	1    3000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F521E67
P 3000 6900
F 0 "#PWR?" H 3000 6650 50  0001 C CNN
F 1 "GND" H 3000 6750 50  0000 C CNN
F 2 "" H 3000 6900 50  0001 C CNN
F 3 "" H 3000 6900 50  0001 C CNN
	1    3000 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6100 3000 6200
Wire Wire Line
	3000 6400 3000 6600
Wire Wire Line
	3000 6800 3000 6900
$Comp
L Device:LED_Small D?
U 1 1 5F521E74
P 3000 6700
F 0 "D?" V 3050 6550 50  0000 L CNN
F 1 "Green" V 2950 6400 50  0000 L CNN
F 2 "" V 3000 6700 50  0001 C CNN
F 3 "~" V 3000 6700 50  0001 C CNN
	1    3000 6700
	0    -1   -1   0   
$EndComp
$Comp
L customlib_mj:VBUS_2 #PWR?
U 1 1 5F532881
P 3000 6100
F 0 "#PWR?" H 3000 5950 50  0001 C CNN
F 1 "VBUS_2" H 3000 6250 50  0000 C CNN
F 2 "" H 3000 6100 50  0001 C CNN
F 3 "" H 3000 6100 50  0001 C CNN
	1    3000 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F53B6D0
P 2500 6300
F 0 "R?" H 2559 6346 50  0000 L CNN
F 1 "1k" H 2559 6255 50  0000 L CNN
F 2 "" H 2500 6300 50  0001 C CNN
F 3 "~" H 2500 6300 50  0001 C CNN
	1    2500 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F53B6DA
P 2500 6900
F 0 "#PWR?" H 2500 6650 50  0001 C CNN
F 1 "GND" H 2500 6750 50  0000 C CNN
F 2 "" H 2500 6900 50  0001 C CNN
F 3 "" H 2500 6900 50  0001 C CNN
	1    2500 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6100 2500 6200
Wire Wire Line
	2500 6400 2500 6600
Wire Wire Line
	2500 6800 2500 6900
$Comp
L Device:LED_Small D?
U 1 1 5F53B6E7
P 2500 6700
F 0 "D?" V 2550 6550 50  0000 L CNN
F 1 "Green" V 2450 6400 50  0000 L CNN
F 2 "" V 2500 6700 50  0001 C CNN
F 3 "~" V 2500 6700 50  0001 C CNN
	1    2500 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:VBUS #PWR?
U 1 1 5F5411FC
P 2500 6100
F 0 "#PWR?" H 2500 5950 50  0001 C CNN
F 1 "VBUS" H 2500 6250 50  0000 C CNN
F 2 "" H 2500 6100 50  0001 C CNN
F 3 "" H 2500 6100 50  0001 C CNN
	1    2500 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F55BC30
P 3600 4000
F 0 "#PWR?" H 3600 3850 50  0001 C CNN
F 1 "+12V" H 3600 4150 50  0000 C CNN
F 2 "" H 3600 4000 50  0001 C CNN
F 3 "" H 3600 4000 50  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VIN #PWR?
U 1 1 5F562CD5
P 1600 4000
F 0 "#PWR?" H 1600 3850 50  0001 C CNN
F 1 "VIN" H 1600 4150 50  0000 C CNN
F 2 "" H 1600 4000 50  0001 C CNN
F 3 "" H 1600 4000 50  0001 C CNN
	1    1600 4000
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:AP22811AW5 U?
U 1 1 5F56DB7E
P 9300 4800
F 0 "U?" H 9300 5414 71  0000 C CNN
F 1 "AP22811AW5" H 9300 5291 71  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 9300 4700 71  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP22811.pdf" H 9300 4800 71  0001 C CNN
	1    9300 4800
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VMAIN #PWR?
U 1 1 5F576BDA
P 8100 4400
F 0 "#PWR?" H 8100 4250 50  0001 C CNN
F 1 "VMAIN" H 8100 4550 50  0000 C CNN
F 2 "" H 8100 4400 50  0001 C CNN
F 3 "" H 8100 4400 50  0001 C CNN
	1    8100 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F577E71
P 8200 4700
F 0 "C?" H 8292 4746 50  0000 L CNN
F 1 "1u" H 8292 4655 50  0000 L CNN
F 2 "" H 8200 4700 50  0001 C CNN
F 3 "~" H 8200 4700 50  0001 C CNN
	1    8200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4500 8800 4500
Wire Wire Line
	8100 4500 8100 4400
Wire Wire Line
	8200 4600 8200 4500
Connection ~ 8200 4500
Wire Wire Line
	8200 4500 8100 4500
$Comp
L power:GND #PWR?
U 1 1 5F58175F
P 8200 4900
F 0 "#PWR?" H 8200 4650 50  0001 C CNN
F 1 "GND" H 8200 4750 50  0000 C CNN
F 2 "" H 8200 4900 50  0001 C CNN
F 3 "" H 8200 4900 50  0001 C CNN
	1    8200 4900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:UCL1V470MCL1GS C?
U 1 1 5F581CA5
P 10300 4700
F 0 "C?" H 10200 4650 50  0000 R CNN
F 1 "UCL1V470MCL1GS" H 9538 4745 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 10300 4700 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/293/e-ucl-1513103.pdf" H 10300 4700 50  0001 C CNN
	1    10300 4700
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F583F0A
P 9900 4700
F 0 "C?" H 9992 4746 50  0000 L CNN
F 1 "100n" H 9992 4655 50  0000 L CNN
F 2 "" H 9900 4700 50  0001 C CNN
F 3 "~" H 9900 4700 50  0001 C CNN
	1    9900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5846E6
P 9800 5400
F 0 "#PWR?" H 9800 5150 50  0001 C CNN
F 1 "GND" H 9800 5250 50  0000 C CNN
F 2 "" H 9800 5400 50  0001 C CNN
F 3 "" H 9800 5400 50  0001 C CNN
	1    9800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5000 9800 5000
Wire Wire Line
	9800 5000 9800 5400
$Comp
L customlib_mj:VBUS_2 #PWR?
U 1 1 5F5896A8
P 10600 4400
F 0 "#PWR?" H 10600 4250 50  0001 C CNN
F 1 "VBUS_2" H 10600 4550 50  0000 C CNN
F 2 "" H 10600 4400 50  0001 C CNN
F 3 "" H 10600 4400 50  0001 C CNN
	1    10600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4500 9900 4500
Wire Wire Line
	10600 4500 10600 4400
Wire Wire Line
	10300 4600 10300 4500
Connection ~ 10300 4500
Wire Wire Line
	10300 4500 10600 4500
Wire Wire Line
	9900 4600 9900 4500
Connection ~ 9900 4500
Wire Wire Line
	9900 4500 10300 4500
Wire Wire Line
	9800 5000 9900 5000
Wire Wire Line
	10300 5000 10300 4800
Connection ~ 9800 5000
Wire Wire Line
	9900 4800 9900 5000
Connection ~ 9900 5000
Wire Wire Line
	9900 5000 10300 5000
$Comp
L Device:R_Small R?
U 1 1 5F5A16E3
P 8800 5200
F 0 "R?" H 8859 5246 50  0000 L CNN
F 1 "10k" H 8859 5155 50  0000 L CNN
F 2 "" H 8800 5200 50  0001 C CNN
F 3 "~" H 8800 5200 50  0001 C CNN
	1    8800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5A6927
P 8800 5400
F 0 "#PWR?" H 8800 5150 50  0001 C CNN
F 1 "GND" H 8800 5250 50  0000 C CNN
F 2 "" H 8800 5400 50  0001 C CNN
F 3 "" H 8800 5400 50  0001 C CNN
	1    8800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5300 8800 5400
Wire Wire Line
	8800 5100 8800 5000
Wire Wire Line
	8800 5000 8900 5000
$Comp
L Device:R_Small R?
U 1 1 5F5B9FD2
P 8800 4650
F 0 "R?" H 8599 4604 50  0000 L CNN
F 1 "10k" H 8599 4695 50  0000 L CNN
F 2 "" H 8800 4650 50  0001 C CNN
F 3 "~" H 8800 4650 50  0001 C CNN
	1    8800 4650
	1    0    0    1   
$EndComp
Wire Wire Line
	8800 4550 8800 4500
Connection ~ 8800 4500
Wire Wire Line
	8800 4500 8200 4500
Wire Wire Line
	8900 4800 8800 4800
Wire Wire Line
	8800 4800 8800 4750
Text HLabel 8300 5200 0    50   Output ~ 0
~VBUS2_FLG~
Wire Wire Line
	8200 4900 8200 4800
Text HLabel 8300 5400 0    50   Input ~ 0
VBUS2_EN
Wire Wire Line
	8300 5200 8500 5200
Wire Wire Line
	8500 5200 8500 4800
Wire Wire Line
	8500 4800 8800 4800
Connection ~ 8800 4800
Wire Wire Line
	8300 5400 8700 5400
Wire Wire Line
	8700 5400 8700 5000
Wire Wire Line
	8700 5000 8800 5000
Connection ~ 8800 5000
Text Notes 1700 4600 0    50   ~ 10
ToDo: High-side P-FET\nmaster-switch for  the\n+12V PWM rail. \nNeed rating Id >= 15A\n@ 12V Id, lowest RDS_on
Text Notes 4800 5400 0    71   ~ 14
3.0V digital
Text Notes 6500 5400 0    71   ~ 14
3.0V analogue
Text Notes 8900 5800 0    71   ~ 14
USB-2 VBUS
Text Notes 1800 7300 0    71   ~ 14
Power LED indicators
Text Notes 900  2200 0    71   ~ 14
12V Board\nsupply input
$Comp
L Device:R_Small R?
U 1 1 5F5E69B9
P 4500 6300
F 0 "R?" H 4559 6346 50  0000 L CNN
F 1 "470R" H 4559 6255 50  0000 L CNN
F 2 "" H 4500 6300 50  0001 C CNN
F 3 "~" H 4500 6300 50  0001 C CNN
	1    4500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6100 4500 6200
Wire Wire Line
	4500 6400 4500 6600
Wire Wire Line
	4500 6800 4500 7200
$Comp
L Device:LED_Small D?
U 1 1 5F5E69D0
P 4500 6700
F 0 "D?" V 4550 6550 50  0000 L CNN
F 1 "Red" V 4450 6400 50  0000 L CNN
F 2 "" V 4500 6700 50  0001 C CNN
F 3 "~" V 4500 6700 50  0001 C CNN
	1    4500 6700
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5F5F08CD
P 4500 6100
F 0 "#PWR?" H 4500 5950 50  0001 C CNN
F 1 "VDD" H 4500 6250 50  0000 C CNN
F 2 "" H 4500 6100 50  0001 C CNN
F 3 "" H 4500 6100 50  0001 C CNN
	1    4500 6100
	1    0    0    -1  
$EndComp
Text HLabel 4400 7200 0    50   Input ~ 0
~DRV_ERROR~
Wire Wire Line
	4500 7200 4400 7200
Text Notes 4600 7200 0    71   ~ 14
TBD: hi/low..?
$EndSCHEMATC
