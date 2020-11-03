EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 20 21
Title "Audio & FM-radio :)"
Date "2020-08-12"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_AM_FM:Si4735-D60-GU U?
U 1 1 5FB00D33
P 6500 2150
AR Path="/5FB00D33" Ref="U?"  Part="1" 
AR Path="/5FAFD5BA/5FB00D33" Ref="U2101"  Part="1" 
F 0 "U2101" H 6200 1450 50  0000 R CNN
F 1 "Si4735-D60-GU" H 6300 1350 50  0000 R CNN
F 2 "Package_SO:SSOP-24_3.9x8.7mm_P0.635mm" H 6750 1450 50  0001 L CNN
F 3 "http://www.silabs.com/Support%20Documents/TechnicalDocs/Si4730-31-34-35-D60.pdf" H 6550 1150 50  0001 C CNN
	1    6500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR02102
U 1 1 5FE242C1
P 6600 800
F 0 "#PWR02102" H 6600 650 50  0001 C CNN
F 1 "VDDA" H 6615 973 50  0000 C CNN
F 2 "" H 6600 800 50  0001 C CNN
F 3 "" H 6600 800 50  0001 C CNN
	1    6600 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02104
U 1 1 5FE24C35
P 5050 1500
F 0 "#PWR02104" H 5050 1350 50  0001 C CNN
F 1 "VDD" H 5065 1673 50  0000 C CNN
F 2 "" H 5050 1500 50  0001 C CNN
F 3 "" H 5050 1500 50  0001 C CNN
	1    5050 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2102
U 1 1 5FE24DB0
P 6800 1000
F 0 "C2102" H 6850 1100 50  0000 L CNN
F 1 "22n" H 6850 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 1000 50  0001 C CNN
F 3 "~" H 6800 1000 50  0001 C CNN
	1    6800 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2101
U 1 1 5FE25421
P 6200 1000
F 0 "C2101" H 6250 1100 50  0000 L CNN
F 1 "100n" H 6250 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6200 1000 50  0001 C CNN
F 3 "~" H 6200 1000 50  0001 C CNN
	1    6200 1000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR02103
U 1 1 5FE2655E
P 6200 1150
F 0 "#PWR02103" H 6200 900 50  0001 C CNN
F 1 "GND" H 6200 1000 50  0000 C CNN
F 2 "" H 6200 1150 50  0001 C CNN
F 3 "" H 6200 1150 50  0001 C CNN
	1    6200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 800  6400 850 
Wire Wire Line
	6200 1150 6200 1100
Wire Wire Line
	6200 900  6200 850 
Wire Wire Line
	6200 850  6400 850 
Connection ~ 6400 850 
Wire Wire Line
	6400 850  6400 1350
Wire Wire Line
	6600 800  6600 850 
Wire Wire Line
	6600 850  6800 850 
Wire Wire Line
	6800 850  6800 900 
Connection ~ 6600 850 
Wire Wire Line
	6600 850  6600 1350
Wire Wire Line
	6800 1100 6800 1200
Wire Wire Line
	6800 1200 7200 1200
Wire Wire Line
	7200 1200 7200 1650
Wire Wire Line
	7200 1650 7100 1650
Text GLabel 5600 1650 0    50   Input ~ 0
~SYS_RSTn~
Wire Wire Line
	5600 1650 5900 1650
$Comp
L power:GND #PWR02105
U 1 1 5FE2BD7A
P 4650 1850
F 0 "#PWR02105" H 4650 1600 50  0001 C CNN
F 1 "GND" H 4650 1700 50  0000 C CNN
F 2 "" H 4650 1850 50  0001 C CNN
F 3 "" H 4650 1850 50  0001 C CNN
	1    4650 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02113
U 1 1 5FE2C388
P 6600 3100
F 0 "#PWR02113" H 6600 2850 50  0001 C CNN
F 1 "GND" H 6600 2950 50  0000 C CNN
F 2 "" H 6600 3100 50  0001 C CNN
F 3 "" H 6600 3100 50  0001 C CNN
	1    6600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3100 6400 2950
Wire Wire Line
	6600 3100 6600 2950
Text Notes 4600 1200 0    50   ~ 10
~SEN~ = 0 : I2C addr=0010001\n~SEN~ = 1 : I2C addr=1100011
$Comp
L power:GND #PWR02112
U 1 1 5FE2E644
P 6400 3100
F 0 "#PWR02112" H 6400 2850 50  0001 C CNN
F 1 "GND" H 6400 2950 50  0000 C CNN
F 2 "" H 6400 3100 50  0001 C CNN
F 3 "" H 6400 3100 50  0001 C CNN
	1    6400 3100
	1    0    0    -1  
$EndComp
Text GLabel 5250 2050 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	5250 2050 5900 2050
Text GLabel 5250 1950 0    50   BiDi ~ 0
I2C1_SDA
Text GLabel 5250 2150 0    50   Input ~ 0
RCLKo_8M
Wire Wire Line
	5250 2150 5900 2150
$Comp
L Device:R_Small R2101
U 1 1 5FE30CD6
P 7350 1850
F 0 "R2101" V 7300 1950 50  0000 L CNN
F 1 "560" V 7400 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 1850 50  0001 C CNN
F 3 "~" H 7350 1850 50  0001 C CNN
	1    7350 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 1850 7250 1850
Wire Wire Line
	7450 1850 7750 1850
Text GLabel 7750 1850 2    50   Output ~ 0
FM_I2S_SD
$Comp
L Device:R_Small R2102
U 1 1 5FE3223E
P 7350 2150
F 0 "R2102" V 7300 2250 50  0000 L CNN
F 1 "1k" V 7400 2250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 2150 50  0001 C CNN
F 3 "~" H 7350 2150 50  0001 C CNN
	1    7350 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 2150 7250 2150
Text GLabel 8750 2150 2    50   Input ~ 0
FM_I2S_WS
$Comp
L Device:R_Small R2103
U 1 1 5FE3337D
P 5650 2350
F 0 "R2103" V 5600 2450 50  0000 L CNN
F 1 "1k" V 5700 2450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5650 2350 50  0001 C CNN
F 3 "~" H 5650 2350 50  0001 C CNN
	1    5650 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	5750 2350 5900 2350
Wire Wire Line
	5550 2350 5250 2350
Text GLabel 5250 2350 0    50   Input ~ 0
FM_I2S_CK
Wire Wire Line
	5900 2450 5650 2450
Text GLabel 5250 2500 0    50   Output ~ 0
~FM_INTn~
Wire Wire Line
	5650 2450 5650 2500
Wire Wire Line
	5650 2500 5250 2500
$Comp
L power:GND #PWR02114
U 1 1 5FE366E2
P 7200 3100
F 0 "#PWR02114" H 7200 2850 50  0001 C CNN
F 1 "GND" H 7200 2950 50  0000 C CNN
F 2 "" H 7200 3100 50  0001 C CNN
F 3 "" H 7200 3100 50  0001 C CNN
	1    7200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3100 7200 2550
Wire Wire Line
	7200 2550 7100 2550
$Comp
L Device:C_Small C2103
U 1 1 5FE37189
P 8400 1950
F 0 "C2103" H 8450 2050 50  0000 L CNN
F 1 "4p7" H 8450 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8400 1950 50  0001 C CNN
F 3 "~" H 8400 1950 50  0001 C CNN
	1    8400 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02106
U 1 1 5FE3843B
P 8800 1850
F 0 "#PWR02106" H 8800 1600 50  0001 C CNN
F 1 "GND" H 8800 1700 50  0000 C CNN
F 2 "" H 8800 1850 50  0001 C CNN
F 3 "" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1850 4650 1750
Wire Wire Line
	4650 1600 4750 1600
Wire Wire Line
	4950 1600 5050 1600
Wire Wire Line
	5050 1600 5050 1500
Wire Wire Line
	4850 1850 4850 1750
$Comp
L power:VDD #PWR02101
U 1 1 5FE4E1BC
P 6400 800
F 0 "#PWR02101" H 6400 650 50  0001 C CNN
F 1 "VDD" H 6415 973 50  0000 C CNN
F 2 "" H 6400 800 50  0001 C CNN
F 3 "" H 6400 800 50  0001 C CNN
	1    6400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1950 5900 1950
Wire Wire Line
	5900 1850 5850 1850
Wire Wire Line
	5600 1850 5550 1850
NoConn ~ 5900 2550
$Comp
L Device:C_Small C2105
U 1 1 5FE5A5A0
P 7750 2450
F 0 "C2105" V 7700 2500 50  0000 L CNN
F 1 "1n" V 7800 2500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7750 2450 50  0001 C CNN
F 3 "~" H 7750 2450 50  0001 C CNN
	1    7750 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 2450 7400 2450
Wire Wire Line
	7450 2150 8400 2150
Wire Wire Line
	8400 2050 8400 2150
Connection ~ 8400 2150
Wire Wire Line
	8400 2150 8750 2150
Wire Wire Line
	8400 1850 8400 1750
Wire Wire Line
	8400 1750 8800 1750
Wire Wire Line
	8800 1750 8800 1850
$Comp
L Connector_Generic:Conn_01x02 J2101
U 1 1 5FE60E68
P 10500 2300
F 0 "J2101" H 10600 2300 50  0000 L CNN
F 1 "Conn_01x02" H 10800 2200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10500 2300 50  0001 C CNN
F 3 "~" H 10500 2300 50  0001 C CNN
	1    10500 2300
	1    0    0    -1  
$EndComp
Text Notes 10350 2650 0    50   ~ 10
To ferrite loop stick,\napprx 180-450µH
Text Notes 8700 3000 0    50   ~ 10
To e.g. 1/4 FM wire-\nor screw telescope\n(whip) antenna
$Comp
L Device:C_Small C2104
U 1 1 5FE61AD3
P 8050 2300
F 0 "C2104" V 8000 2350 50  0000 L CNN
F 1 "470n" V 8100 2350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8050 2300 50  0001 C CNN
F 3 "~" H 8050 2300 50  0001 C CNN
	1    8050 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 2300 7600 2350
Wire Wire Line
	7600 2350 7100 2350
$Comp
L Device:L_Small L2101
U 1 1 5FE692D2
P 7400 2650
F 0 "L2101" H 7448 2696 50  0000 L CNN
F 1 "56nH(LQW18AN56NJ00D)" H 7448 2605 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H 7400 2650 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/281/JELF243A-0024-1380895.pdf" H 7400 2650 50  0001 C CNN
	1    7400 2650
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:CM1213A-01SO D2102
U 1 1 5FE697ED
P 8400 3000
F 0 "D2102" H 8400 3200 50  0000 C CNN
F 1 "CM1213A-01SO" H 8400 3350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8450 2830 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/CM1213A-D.PDF" V 8325 3080 50  0001 C CNN
	1    8400 3000
	1    0    0    1   
$EndComp
Wire Wire Line
	8150 2300 9900 2300
Wire Wire Line
	7600 2300 7950 2300
$Comp
L power:GND #PWR02115
U 1 1 5FE77054
P 7400 3100
F 0 "#PWR02115" H 7400 2850 50  0001 C CNN
F 1 "GND" H 7400 2950 50  0000 C CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "" H 7400 3100 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3100 7400 2750
Wire Wire Line
	7400 2550 7400 2450
Connection ~ 7400 2450
Wire Wire Line
	7400 2450 7650 2450
$Comp
L power:GND #PWR02116
U 1 1 5FE7BEB8
P 8150 3100
F 0 "#PWR02116" H 8150 2850 50  0001 C CNN
F 1 "GND" H 8150 2950 50  0000 C CNN
F 2 "" H 8150 3100 50  0001 C CNN
F 3 "" H 8150 3100 50  0001 C CNN
	1    8150 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02117
U 1 1 5FE7CBD6
P 8650 3100
F 0 "#PWR02117" H 8650 2850 50  0001 C CNN
F 1 "GND" H 8650 2950 50  0000 C CNN
F 2 "" H 8650 3100 50  0001 C CNN
F 3 "" H 8650 3100 50  0001 C CNN
	1    8650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3100 8150 3000
Wire Wire Line
	8150 3000 8200 3000
Wire Wire Line
	8650 3100 8650 3000
Wire Wire Line
	8650 3000 8600 3000
$Comp
L Power_Protection:CM1213A-01SO D2101
U 1 1 5FE82C0B
P 9900 2650
F 0 "D2101" H 9900 2850 50  0000 C CNN
F 1 "CM1213A-01SO" H 9900 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9950 2480 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/CM1213A-D.PDF" V 9825 2730 50  0001 C CNN
	1    9900 2650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR02109
U 1 1 5FE8518F
P 9650 2700
F 0 "#PWR02109" H 9650 2450 50  0001 C CNN
F 1 "GND" H 9650 2550 50  0000 C CNN
F 2 "" H 9650 2700 50  0001 C CNN
F 3 "" H 9650 2700 50  0001 C CNN
	1    9650 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02110
U 1 1 5FE8557E
P 10150 2700
F 0 "#PWR02110" H 10150 2450 50  0001 C CNN
F 1 "GND" H 10150 2550 50  0000 C CNN
F 2 "" H 10150 2700 50  0001 C CNN
F 3 "" H 10150 2700 50  0001 C CNN
	1    10150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2450 9900 2300
Connection ~ 9900 2300
Wire Wire Line
	9900 2300 10300 2300
Wire Wire Line
	9650 2700 9650 2650
Wire Wire Line
	9650 2650 9700 2650
Wire Wire Line
	10150 2700 10150 2650
Wire Wire Line
	10150 2650 10100 2650
$Comp
L power:GND #PWR02107
U 1 1 5FE888A6
P 10200 2450
F 0 "#PWR02107" H 10200 2200 50  0001 C CNN
F 1 "GND" H 10200 2300 50  0000 C CNN
F 2 "" H 10200 2450 50  0001 C CNN
F 3 "" H 10200 2450 50  0001 C CNN
	1    10200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2450 10200 2400
Wire Wire Line
	10200 2400 10300 2400
Wire Wire Line
	8400 2800 8400 2450
Connection ~ 8400 2450
Wire Wire Line
	8400 2450 7850 2450
Wire Wire Line
	8400 2450 8900 2450
$Comp
L customlib_mj:TS4990IDT U2102
U 1 1 5F38BA6A
P 2900 3750
F 0 "U2102" H 2350 4300 60  0000 L CNN
F 1 "TS4990IDT" H 2550 3150 60  0000 C CNN
F 2 "customlib_mj_fp:SOIC-8_3.9x4.9mm_P1.27mm" H 2500 3550 60  0001 C CNN
F 3 "" H 2500 3550 60  0001 C CNN
	1    2900 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2108
U 1 1 5F3BDCEE
P 1400 3350
F 0 "C2108" V 1500 3350 50  0000 C CNN
F 1 "470n" V 1300 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1400 3350 50  0001 C CNN
F 3 "~" H 1400 3350 50  0001 C CNN
	1    1400 3350
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R2104
U 1 1 5F3C0D25
P 2300 2200
F 0 "R2104" V 2200 2200 50  0000 C CNN
F 1 "15k" V 2400 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2300 2200 50  0001 C CNN
F 3 "~" H 2300 2200 50  0001 C CNN
	1    2300 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2105
U 1 1 5F3C3145
P 2650 2200
F 0 "R2105" V 2550 2200 50  0000 C CNN
F 1 "2k2" V 2750 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2650 2200 50  0001 C CNN
F 3 "~" H 2650 2200 50  0001 C CNN
	1    2650 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2106
U 1 1 5F3C4084
P 1800 3350
F 0 "R2106" V 1700 3350 50  0000 C CNN
F 1 "10k" V 1900 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1800 3350 50  0001 C CNN
F 3 "~" H 1800 3350 50  0001 C CNN
	1    1800 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2109
U 1 1 5F3C8295
P 1950 4200
F 0 "C2109" H 1975 4125 50  0000 L CNN
F 1 "2u2" H 1975 4275 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1950 4200 50  0001 C CNN
F 3 "~" H 1950 4200 50  0001 C CNN
	1    1950 4200
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C2106
U 1 1 5F3C9DDB
P 3100 2900
F 0 "C2106" H 3125 2825 50  0000 L CNN
F 1 "2u2" H 3125 2975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3100 2900 50  0001 C CNN
F 3 "~" H 3100 2900 50  0001 C CNN
	1    3100 2900
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR02121
U 1 1 5F3D4588
P 2900 4500
F 0 "#PWR02121" H 2900 4250 50  0001 C CNN
F 1 "GND" H 2900 4350 50  0000 C CNN
F 2 "" H 2900 4500 50  0001 C CNN
F 3 "" H 2900 4500 50  0001 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02120
U 1 1 5F3D4BD2
P 1950 4500
F 0 "#PWR02120" H 1950 4250 50  0001 C CNN
F 1 "GND" H 1950 4350 50  0000 C CNN
F 2 "" H 1950 4500 50  0001 C CNN
F 3 "" H 1950 4500 50  0001 C CNN
	1    1950 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02118
U 1 1 5F3D5A66
P 3100 3050
F 0 "#PWR02118" H 3100 2800 50  0001 C CNN
F 1 "GND" H 3100 2900 50  0000 C CNN
F 2 "" H 3100 3050 50  0001 C CNN
F 3 "" H 3100 3050 50  0001 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3050 2900 2750
Wire Wire Line
	2900 2750 3000 2750
Wire Wire Line
	3100 2750 3100 2800
Wire Wire Line
	3100 3000 3100 3050
Wire Wire Line
	2100 3350 2000 3350
Wire Wire Line
	1700 3350 1500 3350
Wire Wire Line
	2000 2200 2000 3350
Wire Wire Line
	2000 2200 2200 2200
Connection ~ 2000 3350
Wire Wire Line
	2000 3350 1900 3350
Wire Wire Line
	2400 2200 2550 2200
Wire Wire Line
	3700 3450 3800 3450
Wire Wire Line
	2750 2200 3800 2200
Wire Wire Line
	3800 2200 3800 3350
Connection ~ 3800 3450
Wire Wire Line
	3800 3450 4000 3450
Wire Wire Line
	2900 4450 2900 4500
Wire Wire Line
	2100 3950 1950 3950
Wire Wire Line
	1950 3950 1950 4100
Wire Wire Line
	1950 4300 1950 4500
Wire Wire Line
	2100 3550 1950 3550
Wire Wire Line
	1950 3550 1950 3950
Connection ~ 1950 3950
Wire Wire Line
	2100 3750 1550 3750
Text GLabel 1550 3750 0    50   Input ~ 0
~AUDIO_MUTEn~
Text GLabel 1150 3350 0    50   Input ~ 0
DAC_OUT2
Wire Wire Line
	1150 3350 1300 3350
$Comp
L customlib_mj:TS4990IDT U2103
U 1 1 5F416928
P 2900 6750
F 0 "U2103" H 2350 7300 60  0000 L CNN
F 1 "TS4990IDT" H 2550 6150 60  0000 C CNN
F 2 "customlib_mj_fp:SOIC-8_3.9x4.9mm_P1.27mm" H 2500 6550 60  0001 C CNN
F 3 "" H 2500 6550 60  0001 C CNN
	1    2900 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2112
U 1 1 5F416932
P 1400 6350
F 0 "C2112" V 1500 6350 50  0000 C CNN
F 1 "470n" V 1300 6350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1400 6350 50  0001 C CNN
F 3 "~" H 1400 6350 50  0001 C CNN
	1    1400 6350
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R2107
U 1 1 5F41693C
P 2300 5200
F 0 "R2107" V 2200 5200 50  0000 C CNN
F 1 "15k" V 2400 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2300 5200 50  0001 C CNN
F 3 "~" H 2300 5200 50  0001 C CNN
	1    2300 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2108
U 1 1 5F416946
P 2650 5200
F 0 "R2108" V 2550 5200 50  0000 C CNN
F 1 "2k2" V 2750 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2650 5200 50  0001 C CNN
F 3 "~" H 2650 5200 50  0001 C CNN
	1    2650 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2109
U 1 1 5F416950
P 1800 6350
F 0 "R2109" V 1700 6350 50  0000 C CNN
F 1 "10k" V 1900 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1800 6350 50  0001 C CNN
F 3 "~" H 1800 6350 50  0001 C CNN
	1    1800 6350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2113
U 1 1 5F416964
P 1950 7200
F 0 "C2113" H 1975 7125 50  0000 L CNN
F 1 "2u2" H 1975 7275 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1950 7200 50  0001 C CNN
F 3 "~" H 1950 7200 50  0001 C CNN
	1    1950 7200
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C2110
U 1 1 5F41696E
P 3100 5900
F 0 "C2110" H 3125 5825 50  0000 L CNN
F 1 "2u2" H 3125 5975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3100 5900 50  0001 C CNN
F 3 "~" H 3100 5900 50  0001 C CNN
	1    3100 5900
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR02126
U 1 1 5F416982
P 2900 7500
F 0 "#PWR02126" H 2900 7250 50  0001 C CNN
F 1 "GND" H 2900 7350 50  0000 C CNN
F 2 "" H 2900 7500 50  0001 C CNN
F 3 "" H 2900 7500 50  0001 C CNN
	1    2900 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02125
U 1 1 5F41698C
P 1950 7500
F 0 "#PWR02125" H 1950 7250 50  0001 C CNN
F 1 "GND" H 1950 7350 50  0000 C CNN
F 2 "" H 1950 7500 50  0001 C CNN
F 3 "" H 1950 7500 50  0001 C CNN
	1    1950 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02123
U 1 1 5F416996
P 3100 6050
F 0 "#PWR02123" H 3100 5800 50  0001 C CNN
F 1 "GND" H 3100 5900 50  0000 C CNN
F 2 "" H 3100 6050 50  0001 C CNN
F 3 "" H 3100 6050 50  0001 C CNN
	1    3100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6050 2900 5750
Wire Wire Line
	2900 5750 3000 5750
Wire Wire Line
	3100 5750 3100 5800
Wire Wire Line
	3100 6000 3100 6050
$Comp
L customlib_mj:VMAIN #PWR02122
U 1 1 5F4169A4
P 2800 5550
F 0 "#PWR02122" H 2800 5400 50  0001 C CNN
F 1 "VMAIN" H 2800 5700 50  0000 C CNN
F 2 "" H 2800 5550 50  0001 C CNN
F 3 "" H 2800 5550 50  0001 C CNN
	1    2800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6350 1500 6350
Wire Wire Line
	2000 5200 2000 6350
Wire Wire Line
	2000 5200 2200 5200
Wire Wire Line
	2400 5200 2550 5200
Wire Wire Line
	3700 6450 3800 6450
Wire Wire Line
	2750 5200 3800 5200
Wire Wire Line
	3800 5200 3800 6350
Connection ~ 3800 6450
Wire Wire Line
	3800 6450 4000 6450
Wire Wire Line
	2900 7450 2900 7500
Wire Wire Line
	2100 6950 1950 6950
Wire Wire Line
	1950 6950 1950 7100
Wire Wire Line
	1950 7300 1950 7500
Wire Wire Line
	2100 6550 1950 6550
Wire Wire Line
	1950 6550 1950 6950
Connection ~ 1950 6950
Wire Wire Line
	2100 6750 1550 6750
Text GLabel 1550 6750 0    50   Input ~ 0
~AUDIO_MUTEn~
Text GLabel 1150 6350 0    50   Input ~ 0
DAC_OUT1
Wire Wire Line
	1150 6350 1300 6350
$Comp
L Connector_Generic:Conn_01x02 J2102
U 1 1 5F5B2BFC
P 9100 2450
F 0 "J2102" H 9100 2250 50  0000 C CNN
F 1 "Molex_PicoBlade-53398-0271" H 9100 2550 50  0000 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53398-0271_1x02-1MP_P1.25mm_Vertical" H 9100 2450 50  0001 C CNN
F 3 "https://www.molex.com/molex/products/part-detail/pcb_headers/0533980271" H 9100 2450 50  0001 C CNN
	1    9100 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02108
U 1 1 5F5B3589
P 8550 2650
F 0 "#PWR02108" H 8550 2400 50  0001 C CNN
F 1 "GND" H 8550 2500 50  0000 C CNN
F 2 "" H 8550 2650 50  0001 C CNN
F 3 "" H 8550 2650 50  0001 C CNN
	1    8550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3850 3800 3850
Wire Wire Line
	3800 3850 3800 4250
Wire Wire Line
	3800 4250 5000 4250
Wire Wire Line
	3700 6850 3800 6850
Wire Wire Line
	3800 6850 3800 7250
Wire Wire Line
	3800 7250 5000 7250
Wire Wire Line
	4000 6850 3950 6850
Wire Wire Line
	3950 6850 3950 6950
Wire Wire Line
	4000 3850 3950 3850
Wire Wire Line
	3950 3850 3950 3950
Text Notes 1000 6000 0    50   ~ 10
Left channel
Text Notes 1000 3150 0    50   ~ 10
Right channel
Wire Wire Line
	4550 6600 4550 6350
Wire Wire Line
	4550 6350 3800 6350
Connection ~ 3800 6350
Wire Wire Line
	3800 6350 3800 6450
Wire Wire Line
	3950 6950 4400 6950
Connection ~ 3950 6950
Wire Wire Line
	3950 6950 3950 7050
Wire Wire Line
	4400 6950 4400 6700
Wire Wire Line
	4400 6700 4550 6700
Wire Wire Line
	4550 3700 4450 3700
Wire Wire Line
	4450 3700 4450 3950
Wire Wire Line
	4450 3950 3950 3950
Connection ~ 3950 3950
Wire Wire Line
	3950 3950 3950 4050
Wire Wire Line
	3800 3350 4450 3350
Wire Wire Line
	4450 3350 4450 3600
Wire Wire Line
	4450 3600 4550 3600
Connection ~ 3800 3350
Wire Wire Line
	3800 3350 3800 3450
Text Notes 3750 3850 0    50   ~ 0
-\n\n\n\n+
Text Notes 3750 6850 0    50   ~ 0
-\n\n\n\n+
$Comp
L Device:C_Small C2107
U 1 1 5F6FDEE0
P 3400 2900
F 0 "C2107" H 3425 2825 50  0000 L CNN
F 1 "100n" H 3425 2975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3400 2900 50  0001 C CNN
F 3 "~" H 3400 2900 50  0001 C CNN
	1    3400 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	3400 2800 3400 2750
Wire Wire Line
	3400 2750 3100 2750
Connection ~ 3100 2750
$Comp
L power:GND #PWR02119
U 1 1 5F70610F
P 3400 3050
F 0 "#PWR02119" H 3400 2800 50  0001 C CNN
F 1 "GND" H 3400 2900 50  0000 C CNN
F 2 "" H 3400 3050 50  0001 C CNN
F 3 "" H 3400 3050 50  0001 C CNN
	1    3400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3000 3400 3050
$Comp
L Device:C_Small C2111
U 1 1 5F70E360
P 3400 5900
F 0 "C2111" H 3425 5825 50  0000 L CNN
F 1 "100n" H 3425 5975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3400 5900 50  0001 C CNN
F 3 "~" H 3400 5900 50  0001 C CNN
	1    3400 5900
	1    0    0    1   
$EndComp
Wire Wire Line
	3100 5750 3400 5750
Wire Wire Line
	3400 5750 3400 5800
Connection ~ 3100 5750
$Comp
L power:GND #PWR02124
U 1 1 5F7167E2
P 3400 6050
F 0 "#PWR02124" H 3400 5800 50  0001 C CNN
F 1 "GND" H 3400 5900 50  0000 C CNN
F 2 "" H 3400 6050 50  0001 C CNN
F 3 "" H 3400 6050 50  0001 C CNN
	1    3400 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6050 3400 6000
Text Notes 4050 4800 0    50   ~ 10
Using internal speakers until a\n3.5mm plug is inserted; then\nswitching to the external load.\nThe switch is integrated in the\nheadphone connector (rear panel)
Text HLabel 5000 4250 2    50   Output ~ 0
Audio_R_o
Text HLabel 5000 7250 2    50   Output ~ 0
Audio_L_o
Text HLabel 5000 4050 2    50   Input ~ 0
Audio_R_int
Text HLabel 5000 7050 2    50   Input ~ 0
Audio_L_int
Text Notes 8450 2300 0    50   ~ 0
(OTS cable assm: e.g. 151340203)
Wire Wire Line
	8550 2650 8550 2600
Wire Wire Line
	8550 2550 8600 2550
Wire Wire Line
	8800 2550 8850 2550
Wire Wire Line
	4650 1750 4850 1750
Connection ~ 4650 1750
Wire Wire Line
	4650 1750 4650 1600
Connection ~ 4850 1750
Wire Wire Line
	4850 1750 4850 1700
$Comp
L customlib_mj:dogbone_3_ud JP2101
U 1 1 5F493E0C
P 4850 1600
F 0 "JP2101" H 4850 1733 50  0000 C CNN
F 1 "dogbone_3_ud" H 4875 1750 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0402" H 4850 1600 50  0001 C CNN
F 3 "" H 4850 1600 50  0001 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:dogbone_2_ud JP2102
U 1 1 5F494863
P 5700 1850
F 0 "JP2102" H 5700 1984 50  0000 C CNN
F 1 "dogbone_2_ud" H 5700 1950 50  0001 C CNN
F 2 "customlib_mj_fp:db2_ud_0402" H 5700 1850 50  0001 C CNN
F 3 "" H 5700 1850 50  0001 C CNN
	1    5700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1850 5550 1900
Wire Wire Line
	5550 1900 5850 1900
Wire Wire Line
	5850 1900 5850 1850
Connection ~ 5550 1850
Wire Wire Line
	5550 1850 4850 1850
Connection ~ 5850 1850
Wire Wire Line
	5850 1850 5800 1850
$Comp
L customlib_mj:dogbone_2_ud JP2103
U 1 1 5F49CC1B
P 8700 2550
F 0 "JP2103" H 8750 2450 50  0000 C CNN
F 1 "dogbone_2_ud" H 8700 2650 50  0001 C CNN
F 2 "customlib_mj_fp:db2_ud_0402" H 8700 2550 50  0001 C CNN
F 3 "" H 8700 2550 50  0001 C CNN
	1    8700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2600 8850 2600
Wire Wire Line
	8850 2600 8850 2550
Connection ~ 8550 2600
Wire Wire Line
	8550 2600 8550 2550
Connection ~ 8850 2550
Wire Wire Line
	8850 2550 8900 2550
NoConn ~ 7100 1950
NoConn ~ 7100 2050
Wire Wire Line
	1900 6350 2000 6350
Connection ~ 2000 6350
Wire Wire Line
	2000 6350 2100 6350
$Comp
L customlib_mj:dogbone_3_ud JP2105
U 1 1 5F536DD6
P 3000 5600
F 0 "JP2105" H 3000 5733 50  0000 C CNN
F 1 "dogbone_3_ud" H 3025 5750 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0402" H 3000 5600 50  0001 C CNN
F 3 "" H 3000 5600 50  0001 C CNN
	1    3000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5700 3000 5750
Connection ~ 3000 5750
Wire Wire Line
	3000 5750 3100 5750
Wire Wire Line
	2800 5550 2800 5600
Wire Wire Line
	2800 5600 2850 5600
$Comp
L power:VDD #PWR02128
U 1 1 5F5482E0
P 3200 5550
F 0 "#PWR02128" H 3200 5400 50  0001 C CNN
F 1 "VDD" H 3200 5700 50  0000 C CNN
F 2 "" H 3200 5550 50  0001 C CNN
F 3 "" H 3200 5550 50  0001 C CNN
	1    3200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5550 3200 5600
Wire Wire Line
	3200 5600 3100 5600
$Comp
L customlib_mj:VMAIN #PWR02111
U 1 1 5F55135F
P 2800 2550
F 0 "#PWR02111" H 2800 2400 50  0001 C CNN
F 1 "VMAIN" H 2800 2700 50  0000 C CNN
F 2 "" H 2800 2550 50  0001 C CNN
F 3 "" H 2800 2550 50  0001 C CNN
	1    2800 2550
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:dogbone_3_ud JP2104
U 1 1 5F551369
P 3000 2600
F 0 "JP2104" H 3000 2733 50  0000 C CNN
F 1 "dogbone_3_ud" H 3025 2750 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0402" H 3000 2600 50  0001 C CNN
F 3 "" H 3000 2600 50  0001 C CNN
	1    3000 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2550 2800 2600
Wire Wire Line
	2800 2600 2850 2600
$Comp
L power:VDD #PWR02127
U 1 1 5F551375
P 3200 2550
F 0 "#PWR02127" H 3200 2400 50  0001 C CNN
F 1 "VDD" H 3200 2700 50  0000 C CNN
F 2 "" H 3200 2550 50  0001 C CNN
F 3 "" H 3200 2550 50  0001 C CNN
	1    3200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2550 3200 2600
Wire Wire Line
	3200 2600 3100 2600
Wire Wire Line
	3000 2700 3000 2750
Connection ~ 3000 2750
Wire Wire Line
	3000 2750 3100 2750
Wire Wire Line
	2850 2600 2850 2750
Wire Wire Line
	2850 2750 2900 2750
Connection ~ 2850 2600
Wire Wire Line
	2850 2600 2900 2600
Connection ~ 2900 2750
Wire Wire Line
	2900 5750 2850 5750
Wire Wire Line
	2850 5750 2850 5600
Connection ~ 2900 5750
Connection ~ 2850 5600
Wire Wire Line
	2850 5600 2900 5600
Wire Wire Line
	4000 3450 4000 3600
Wire Wire Line
	4000 3850 4000 3700
Wire Wire Line
	4000 6450 4000 6600
Wire Wire Line
	4000 6850 4000 6700
Text Notes 4700 3300 2    50   ~ 0
Molex Picoblade 53398-0271\nfor CES-30207
Text Notes 4600 3500 0    50   ~ 0
JST JST_PH_S2B-PH-SM4-TB\nfor CES-703116
$Comp
L customlib_mj:CES-30207-158L120-67_Molex-PicoBlade_conn J2103
U 1 1 5F5CC286
P 4150 3650
F 0 "J2103" H 4150 3800 50  0000 C CNN
F 1 "CES-30207-158L120-67_Molex-PicoBlade_conn" H 4150 3450 90  0001 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53398-0271_1x02-1MP_P1.25mm_Vertical" H 4150 3300 90  0001 C CNN
F 3 "https://www.molex.com/molex/products/part-detail/pcb_headers/0533980271" H 4150 3650 90  0001 C CNN
	1    4150 3650
	1    0    0    1   
$EndComp
$Comp
L customlib_mj:CES-30207-158L120-67_Molex-PicoBlade_conn J2105
U 1 1 5F5CCC1E
P 4150 6650
F 0 "J2105" H 4150 6500 50  0000 C CNN
F 1 "CES-30207-158L120-67_Molex-PicoBlade_conn" H 4150 6450 90  0001 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53398-0271_1x02-1MP_P1.25mm_Vertical" H 4150 6300 90  0001 C CNN
F 3 "https://www.molex.com/molex/products/part-detail/pcb_headers/0533980271" H 4150 6650 90  0001 C CNN
	1    4150 6650
	1    0    0    1   
$EndComp
$Comp
L customlib_mj:CES-703116-28PM_JST-conn J2106
U 1 1 5F5D9839
P 4700 6650
F 0 "J2106" H 4700 6500 50  0000 C CNN
F 1 "CES-703116-28PM_JST-conn" H 4700 6300 90  0001 C CNN
F 2 "customlib_mj_fp:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 4700 6150 90  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf?5f53c6b596f2a" H 4700 6650 90  0001 C CNN
	1    4700 6650
	1    0    0    1   
$EndComp
$Comp
L customlib_mj:CES-703116-28PM_JST-conn J2104
U 1 1 5F5D9D8B
P 4700 3650
F 0 "J2104" H 4700 3800 50  0000 C CNN
F 1 "CES-703116-28PM_JST-conn" H 4700 3300 90  0001 C CNN
F 2 "customlib_mj_fp:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 4700 3150 90  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf?5f53c6b596f2a" H 4700 3650 90  0001 C CNN
	1    4700 3650
	1    0    0    1   
$EndComp
$Comp
L customlib_mj:CES-30207-158L120-67 LS2101
U 1 1 5F5E9E8B
P 6500 4000
F 0 "LS2101" H 6550 4250 50  0000 R CNN
F 1 "CES-30207-158L120-67" H 6500 3650 75  0000 C CNN
F 2 "customlib_mj_fp:CUI_CES-30207" H 6500 3600 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/audio/speakers/miniature-(10-mm~40-mm)/ces-30207-158l120-67" H 6500 4000 90  0001 C CNN
	1    6500 4000
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:CES-30207-158L120-67 LS2103
U 1 1 5F5EA826
P 6500 6000
F 0 "LS2103" H 6550 6250 50  0000 R CNN
F 1 "CES-30207-158L120-67" H 6500 5700 75  0000 C CNN
F 2 "customlib_mj_fp:CUI_CES-30207" H 6500 5600 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/audio/speakers/miniature-(10-mm~40-mm)/ces-30207-158l120-67" H 6500 6000 90  0001 C CNN
	1    6500 6000
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:CES-703116-28PM LS2102
U 1 1 5F5EB7EB
P 8450 4000
F 0 "LS2102" H 8500 4250 50  0000 R CNN
F 1 "CES-703116-28PM" H 8450 3700 75  0000 C CNN
F 2 "customlib_mj_fp:CUI_CES-703116-28PM" H 8600 3550 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/audio/speakers/standard-(41-mm~205-mm)/ces-703116-28pm" H 8450 4000 90  0001 C CNN
	1    8450 4000
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:CES-703116-28PM LS2104
U 1 1 5F5EC280
P 8450 6000
F 0 "LS2104" H 8500 6250 50  0000 R CNN
F 1 "CES-703116-28PM" H 8450 5700 75  0000 C CNN
F 2 "customlib_mj_fp:CUI_CES-703116-28PM" H 8600 5550 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/audio/speakers/standard-(41-mm~205-mm)/ces-703116-28pm" H 8450 6000 90  0001 C CNN
	1    8450 6000
	1    0    0    -1  
$EndComp
Text Notes 4500 7450 2    50   ~ 0
Header for CES-30207 :\nMolex Picoblade 53398-0271\n
Text Notes 4450 7000 0    50   ~ 0
JST JST_PH_S2B-PH-SM4-TB\nfor CES-703116
Text Notes 6800 4750 0    50   ~ 10
Alternative interior enclosed speakers,\nCUI Devices CES-series; either 30x20x7mm\nor 70x31x16.5mm
$Comp
L Device:R_Small R2110
U 1 1 5F5F9995
P 4600 4050
F 0 "R2110" V 4500 4050 50  0000 C CNN
F 1 "0R" V 4600 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4600 4050 50  0001 C CNN
F 3 "~" H 4600 4050 50  0001 C CNN
	1    4600 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 4050 3950 4050
Wire Wire Line
	4700 4050 5000 4050
$Comp
L Device:R_Small R2111
U 1 1 5F620F17
P 4550 7050
F 0 "R2111" V 4650 7050 50  0000 C CNN
F 1 "0R" V 4550 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 4550 7050 50  0001 C CNN
F 3 "~" H 4550 7050 50  0001 C CNN
	1    4550 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 7050 5000 7050
Wire Wire Line
	4450 7050 3950 7050
$Comp
L Connector:Conn_Coaxial J2107
U 1 1 5F81D28D
P 10050 3500
F 0 "J2107" H 10403 3475 50  0000 C CNN
F 1 "Conn_Coaxial" H 10403 3384 50  0000 C CNN
F 2 "customlib_mj_fp:SMA_Molex_73251-2200_Horizontal" H 10050 3500 50  0001 C CNN
F 3 " ~" H 10050 3500 50  0001 C CNN
	1    10050 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02129
U 1 1 5F81D746
P 10050 3800
F 0 "#PWR02129" H 10050 3550 50  0001 C CNN
F 1 "GND" H 10050 3650 50  0000 C CNN
F 2 "" H 10050 3800 50  0001 C CNN
F 3 "" H 10050 3800 50  0001 C CNN
	1    10050 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3800 10050 3700
Text Label 8400 2450 0    50   ~ 0
FMI
Wire Wire Line
	9850 3500 9750 3500
Text Label 9350 3500 0    50   ~ 0
FMI
$Comp
L customlib_mj:dogbone_2_ud JP2106
U 1 1 5F832C0D
P 9650 3500
F 0 "JP2106" H 9700 3400 50  0000 C CNN
F 1 "dogbone_2_ud" H 9650 3600 50  0001 C CNN
F 2 "customlib_mj_fp:db2_ud_0402" H 9650 3500 50  0001 C CNN
F 3 "" H 9650 3500 50  0001 C CNN
	1    9650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3500 9350 3500
$EndSCHEMATC
