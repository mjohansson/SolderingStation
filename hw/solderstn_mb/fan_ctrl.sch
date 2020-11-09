EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 21
Title "Fan controller"
Date "2020-08-09"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L customlib_mj:74LVC2G17 U601
U 1 1 5F477A60
P 3250 4150
AR Path="/5F472FC2/5F4722BA/5F477A60" Ref="U601"  Part="1" 
AR Path="/5F472FC2/5F472468/5F477A60" Ref="U701"  Part="1" 
AR Path="/5F472FC2/5F472567/5F477A60" Ref="U801"  Part="1" 
F 0 "U601" H 3225 3883 50  0000 C CNN
F 1 "74LVC2G17gw" H 3225 3974 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 3250 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3250 4150 50  0001 C CNN
	1    3250 4150
	-1   0    0    1   
$EndComp
$Comp
L Motor:Fan_4pin M601
U 1 1 5F47830A
P 5500 4250
AR Path="/5F472FC2/5F4722BA/5F47830A" Ref="M601"  Part="1" 
AR Path="/5F472FC2/5F472468/5F47830A" Ref="M701"  Part="1" 
AR Path="/5F472FC2/5F472567/5F47830A" Ref="M801"  Part="1" 
F 0 "M601" H 5658 4346 50  0000 L CNN
F 1 "Fan_4pin" H 5658 4255 50  0000 L TNN
F 2 "Connector:FanPinHeader_1x04_P2.54mm_Vertical" H 5500 4260 50  0001 C CNN
F 3 "http://www.formfactors.org/developer%5Cspecs%5Crev1_2_public.pdf" H 5500 4260 50  0001 C CNN
	1    5500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3700 5500 3750
$Comp
L power:GND #PWR0607
U 1 1 5F47BC77
P 5500 4950
AR Path="/5F472FC2/5F4722BA/5F47BC77" Ref="#PWR0607"  Part="1" 
AR Path="/5F472FC2/5F472468/5F47BC77" Ref="#PWR0707"  Part="1" 
AR Path="/5F472FC2/5F472567/5F47BC77" Ref="#PWR0807"  Part="1" 
F 0 "#PWR0607" H 5500 4700 50  0001 C CNN
F 1 "GND" H 5500 4800 50  0000 C CNN
F 2 "" H 5500 4950 50  0001 C CNN
F 3 "" H 5500 4950 50  0001 C CNN
	1    5500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4450 5500 4600
$Comp
L customlib_mj:VIN #PWR0602
U 1 1 5F47C1EF
P 5700 3450
AR Path="/5F472FC2/5F4722BA/5F47C1EF" Ref="#PWR0602"  Part="1" 
AR Path="/5F472FC2/5F472468/5F47C1EF" Ref="#PWR0702"  Part="1" 
AR Path="/5F472FC2/5F472567/5F47C1EF" Ref="#PWR0802"  Part="1" 
F 0 "#PWR0602" H 5700 3300 50  0001 C CNN
F 1 "VIN" H 5700 3600 50  0000 C CNN
F 2 "" H 5700 3450 50  0001 C CNN
F 3 "" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VMAIN #PWR0601
U 1 1 5F47C86B
P 5300 3450
AR Path="/5F472FC2/5F4722BA/5F47C86B" Ref="#PWR0601"  Part="1" 
AR Path="/5F472FC2/5F472468/5F47C86B" Ref="#PWR0701"  Part="1" 
AR Path="/5F472FC2/5F472567/5F47C86B" Ref="#PWR0801"  Part="1" 
F 0 "#PWR0601" H 5300 3300 50  0001 C CNN
F 1 "VMAIN" H 5300 3600 50  0000 C CNN
F 2 "" H 5300 3450 50  0001 C CNN
F 3 "" H 5300 3450 50  0001 C CNN
	1    5300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3450 5300 3600
Wire Wire Line
	5300 3600 5350 3600
Wire Wire Line
	5700 3450 5700 3600
Wire Wire Line
	5700 3600 5600 3600
Text Notes 5150 3200 0    50   ~ 0
(5V fan)
Text Notes 5550 3200 0    50   ~ 0
(12V fan)
Wire Wire Line
	4800 4450 4800 4350
Wire Wire Line
	4800 4350 5200 4350
$Comp
L power:GND #PWR0606
U 1 1 5F47F331
P 4800 4950
AR Path="/5F472FC2/5F4722BA/5F47F331" Ref="#PWR0606"  Part="1" 
AR Path="/5F472FC2/5F472468/5F47F331" Ref="#PWR0706"  Part="1" 
AR Path="/5F472FC2/5F472567/5F47F331" Ref="#PWR0806"  Part="1" 
F 0 "#PWR0606" H 4800 4700 50  0001 C CNN
F 1 "GND" H 4800 4800 50  0000 C CNN
F 2 "" H 4800 4950 50  0001 C CNN
F 3 "" H 4800 4950 50  0001 C CNN
	1    4800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4950 4800 4850
$Comp
L Device:R_Small R603
U 1 1 5F4806DE
P 4400 4800
AR Path="/5F472FC2/5F4722BA/5F4806DE" Ref="R603"  Part="1" 
AR Path="/5F472FC2/5F472468/5F4806DE" Ref="R703"  Part="1" 
AR Path="/5F472FC2/5F472567/5F4806DE" Ref="R803"  Part="1" 
F 0 "R603" H 4450 4750 50  0000 L CNN
F 1 "10k" H 4450 4850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 4800 50  0001 C CNN
F 3 "~" H 4400 4800 50  0001 C CNN
	1    4400 4800
	-1   0    0    1   
$EndComp
$Comp
L customlib_mj:DMG1012T Q601
U 1 1 5F473D01
P 4700 4650
AR Path="/5F472FC2/5F4722BA/5F473D01" Ref="Q601"  Part="1" 
AR Path="/5F472FC2/5F472468/5F473D01" Ref="Q701"  Part="1" 
AR Path="/5F472FC2/5F472567/5F473D01" Ref="Q801"  Part="1" 
F 0 "Q601" H 4906 4696 50  0000 L CNN
F 1 "DMG1012T" H 5102 4605 50  0000 C CNN
F 2 "customlib_mj_fp:SOT-523_handsoldering" H 4900 4750 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds31783.pdf" H 4700 4650 50  0001 C CNN
	1    4700 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0605
U 1 1 5F4818C3
P 4400 4950
AR Path="/5F472FC2/5F4722BA/5F4818C3" Ref="#PWR0605"  Part="1" 
AR Path="/5F472FC2/5F472468/5F4818C3" Ref="#PWR0705"  Part="1" 
AR Path="/5F472FC2/5F472567/5F4818C3" Ref="#PWR0805"  Part="1" 
F 0 "#PWR0605" H 4400 4700 50  0001 C CNN
F 1 "GND" H 4400 4800 50  0000 C CNN
F 2 "" H 4400 4950 50  0001 C CNN
F 3 "" H 4400 4950 50  0001 C CNN
	1    4400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4950 4400 4900
Wire Wire Line
	4400 4700 4400 4650
Wire Wire Line
	4400 4650 4500 4650
$Comp
L Device:R_Small R601
U 1 1 5F483E98
P 4800 3800
AR Path="/5F472FC2/5F4722BA/5F483E98" Ref="R601"  Part="1" 
AR Path="/5F472FC2/5F472468/5F483E98" Ref="R701"  Part="1" 
AR Path="/5F472FC2/5F472567/5F483E98" Ref="R801"  Part="1" 
F 0 "R601" V 4900 3800 50  0000 C CNN
F 1 "12k" V 4700 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4800 3800 50  0001 C CNN
F 3 "~" H 4800 3800 50  0001 C CNN
	1    4800 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3800 5500 3800
Connection ~ 5500 3800
Wire Wire Line
	5500 3800 5500 3900
$Comp
L Device:R_Small R602
U 1 1 5F4863E6
P 3800 4550
AR Path="/5F472FC2/5F4722BA/5F4863E6" Ref="R602"  Part="1" 
AR Path="/5F472FC2/5F472468/5F4863E6" Ref="R702"  Part="1" 
AR Path="/5F472FC2/5F472567/5F4863E6" Ref="R802"  Part="1" 
F 0 "R602" H 3850 4500 50  0000 L CNN
F 1 "10k" H 3850 4600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 4550 50  0001 C CNN
F 3 "~" H 3800 4550 50  0001 C CNN
	1    3800 4550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0604
U 1 1 5F487FE0
P 3800 4950
AR Path="/5F472FC2/5F4722BA/5F487FE0" Ref="#PWR0604"  Part="1" 
AR Path="/5F472FC2/5F472468/5F487FE0" Ref="#PWR0704"  Part="1" 
AR Path="/5F472FC2/5F472567/5F487FE0" Ref="#PWR0804"  Part="1" 
F 0 "#PWR0604" H 3800 4700 50  0001 C CNN
F 1 "GND" H 3800 4800 50  0000 C CNN
F 2 "" H 3800 4950 50  0001 C CNN
F 3 "" H 3800 4950 50  0001 C CNN
	1    3800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4950 3800 4650
Wire Wire Line
	3800 4150 4200 4150
Wire Wire Line
	4700 3800 4200 3800
Wire Wire Line
	4200 3800 4200 4150
Connection ~ 4200 4150
Wire Wire Line
	4200 4150 5200 4150
Wire Wire Line
	3550 4150 3800 4150
Wire Wire Line
	3000 4150 2850 4150
$Comp
L customlib_mj:74LVC2G17 U601
U 3 1 5F48A695
P 3000 5150
AR Path="/5F472FC2/5F4722BA/5F48A695" Ref="U601"  Part="3" 
AR Path="/5F472FC2/5F472468/5F48A695" Ref="U701"  Part="3" 
AR Path="/5F472FC2/5F472567/5F48A695" Ref="U801"  Part="3" 
F 0 "U601" H 3266 5196 50  0000 C CNN
F 1 "74LVC2G17gw" H 3266 5105 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 3000 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3000 5150 50  0001 C CNN
	3    3000 5150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0603
U 1 1 5F48C2EA
P 3000 4700
AR Path="/5F472FC2/5F4722BA/5F48C2EA" Ref="#PWR0603"  Part="1" 
AR Path="/5F472FC2/5F472468/5F48C2EA" Ref="#PWR0703"  Part="1" 
AR Path="/5F472FC2/5F472567/5F48C2EA" Ref="#PWR0803"  Part="1" 
F 0 "#PWR0603" H 3000 4550 50  0001 C CNN
F 1 "VDD" H 3000 4850 50  0000 C CNN
F 2 "" H 3000 4700 50  0001 C CNN
F 3 "" H 3000 4700 50  0001 C CNN
	1    3000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4700 3000 4800
$Comp
L power:GND #PWR0608
U 1 1 5F48D304
P 3000 5600
AR Path="/5F472FC2/5F4722BA/5F48D304" Ref="#PWR0608"  Part="1" 
AR Path="/5F472FC2/5F472468/5F48D304" Ref="#PWR0708"  Part="1" 
AR Path="/5F472FC2/5F472567/5F48D304" Ref="#PWR0808"  Part="1" 
F 0 "#PWR0608" H 3000 5350 50  0001 C CNN
F 1 "GND" H 3000 5450 50  0000 C CNN
F 2 "" H 3000 5600 50  0001 C CNN
F 3 "" H 3000 5600 50  0001 C CNN
	1    3000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5600 3000 5500
$Comp
L Device:C_Small C602
U 1 1 5F493FAA
P 2500 5150
AR Path="/5F472FC2/5F4722BA/5F493FAA" Ref="C602"  Part="1" 
AR Path="/5F472FC2/5F472468/5F493FAA" Ref="C702"  Part="1" 
AR Path="/5F472FC2/5F472567/5F493FAA" Ref="C802"  Part="1" 
F 0 "C602" H 2550 5050 50  0000 L CNN
F 1 "100n" H 2550 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2500 5150 50  0001 C CNN
F 3 "~" H 2500 5150 50  0001 C CNN
	1    2500 5150
	1    0    0    1   
$EndComp
Wire Wire Line
	2500 5050 2500 4800
Wire Wire Line
	2500 4800 3000 4800
Connection ~ 3000 4800
Wire Wire Line
	3000 4800 3000 4850
Wire Wire Line
	3000 5500 2500 5500
Wire Wire Line
	2500 5500 2500 5250
Connection ~ 3000 5500
Wire Wire Line
	3000 5500 3000 5450
Connection ~ 3800 4150
Wire Wire Line
	3800 4150 3800 4450
$Comp
L Device:C_Small C601
U 1 1 5F4A2418
P 6200 4250
AR Path="/5F472FC2/5F4722BA/5F4A2418" Ref="C601"  Part="1" 
AR Path="/5F472FC2/5F472468/5F4A2418" Ref="C701"  Part="1" 
AR Path="/5F472FC2/5F472567/5F4A2418" Ref="C801"  Part="1" 
F 0 "C601" H 6250 4150 50  0000 L CNN
F 1 "10u/16V" H 6250 4350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6200 4250 50  0001 C CNN
F 3 "~" H 6200 4250 50  0001 C CNN
	1    6200 4250
	1    0    0    1   
$EndComp
Wire Wire Line
	5500 3900 6200 3900
Wire Wire Line
	6200 3900 6200 4150
Connection ~ 5500 3900
Wire Wire Line
	5500 3900 5500 3950
Wire Wire Line
	6200 4350 6200 4600
Wire Wire Line
	6200 4600 5500 4600
Connection ~ 5500 4600
Wire Wire Line
	5500 4600 5500 4950
Text HLabel 4250 4650 0    50   Input ~ 0
PWM
Text HLabel 2850 4150 0    50   Output ~ 0
Tacho
Wire Wire Line
	4250 4650 4400 4650
Connection ~ 4400 4650
Text Notes 4200 5550 0    70   ~ 14
Fan pin4 (PWM) supplies \npull-up resistor in fan hub\n(max 5.5V)
Text Notes 2450 3700 0    70   ~ 14
Fan pin3 (Tacho) is open-drain,\n2 pulses/revolution. The voltage\ndivider should ensure that the\ninactive (high) level is between\n2.2 .. 5.5V for the Schmitt buffer\ninput, regardless of 12V or 5V fan
Wire Wire Line
	5350 3750 5500 3750
Wire Wire Line
	5350 3600 5350 3750
Connection ~ 5350 3600
Wire Wire Line
	5350 3600 5400 3600
Connection ~ 5500 3750
Wire Wire Line
	5500 3750 5500 3800
$Comp
L customlib_mj:dogbone_3_ud JP601
U 1 1 5F478739
P 5500 3600
AR Path="/5F472FC2/5F4722BA/5F478739" Ref="JP601"  Part="1" 
AR Path="/5F472FC2/5F472468/5F478739" Ref="JP701"  Part="1" 
AR Path="/5F472FC2/5F472567/5F478739" Ref="JP801"  Part="1" 
F 0 "JP601" H 5500 3733 50  0000 C CNN
F 1 "dogbone_3_ud" H 5525 3750 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0402" H 5500 3600 50  0001 C CNN
F 3 "" H 5500 3600 50  0001 C CNN
	1    5500 3600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:74LVC2G17 U601
U 2 1 5F7058CA
P 3150 6400
AR Path="/5F472FC2/5F4722BA/5F7058CA" Ref="U601"  Part="2" 
AR Path="/5F472FC2/5F472468/5F7058CA" Ref="U701"  Part="2" 
AR Path="/5F472FC2/5F472567/5F7058CA" Ref="U801"  Part="2" 
F 0 "U601" H 3125 6133 50  0000 C CNN
F 1 "74LVC2G17gw" H 3125 6224 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 3150 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3150 6400 50  0001 C CNN
	2    3150 6400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0609
U 1 1 5F706B43
P 3600 6500
AR Path="/5F472FC2/5F4722BA/5F706B43" Ref="#PWR0609"  Part="1" 
AR Path="/5F472FC2/5F472468/5F706B43" Ref="#PWR0709"  Part="1" 
AR Path="/5F472FC2/5F472567/5F706B43" Ref="#PWR0809"  Part="1" 
F 0 "#PWR0609" H 3600 6250 50  0001 C CNN
F 1 "GND" H 3600 6350 50  0000 C CNN
F 2 "" H 3600 6500 50  0001 C CNN
F 3 "" H 3600 6500 50  0001 C CNN
	1    3600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6500 3600 6400
Wire Wire Line
	3600 6400 3450 6400
NoConn ~ 2900 6400
$EndSCHEMATC
