EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 22 23
Title "FM radio receiver"
Date "2020-11-04"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_AM_FM:Si4735-D60-GU U?
U 1 1 5FE6F46C
P 4450 3050
AR Path="/5FE6F46C" Ref="U?"  Part="1" 
AR Path="/5FAFD5BA/5FE6F46C" Ref="U?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F46C" Ref="U?"  Part="1" 
F 0 "U?" H 4150 2350 50  0000 R CNN
F 1 "Si4735-D60-GU" H 4250 2250 50  0000 R CNN
F 2 "Package_SO:SSOP-24_3.9x8.7mm_P0.635mm" H 4700 2350 50  0001 L CNN
F 3 "http://www.silabs.com/Support%20Documents/TechnicalDocs/Si4730-31-34-35-D60.pdf" H 4500 2050 50  0001 C CNN
	1    4450 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR?
U 1 1 5FE6F472
P 4550 1700
AR Path="/5FAFD5BA/5FE6F472" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F472" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 1550 50  0001 C CNN
F 1 "VDDA" H 4565 1873 50  0000 C CNN
F 2 "" H 4550 1700 50  0001 C CNN
F 3 "" H 4550 1700 50  0001 C CNN
	1    4550 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5FE6F478
P 3000 2400
AR Path="/5FAFD5BA/5FE6F478" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F478" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 2250 50  0001 C CNN
F 1 "VDD" H 3015 2573 50  0000 C CNN
F 2 "" H 3000 2400 50  0001 C CNN
F 3 "" H 3000 2400 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FE6F47E
P 4750 1900
AR Path="/5FAFD5BA/5FE6F47E" Ref="C?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F47E" Ref="C?"  Part="1" 
F 0 "C?" H 4800 2000 50  0000 L CNN
F 1 "22n" H 4800 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4750 1900 50  0001 C CNN
F 3 "~" H 4750 1900 50  0001 C CNN
	1    4750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FE6F484
P 4150 1900
AR Path="/5FAFD5BA/5FE6F484" Ref="C?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F484" Ref="C?"  Part="1" 
F 0 "C?" H 4200 2000 50  0000 L CNN
F 1 "100n" H 4200 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4150 1900 50  0001 C CNN
F 3 "~" H 4150 1900 50  0001 C CNN
	1    4150 1900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F48A
P 4150 2050
AR Path="/5FAFD5BA/5FE6F48A" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F48A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4150 1800 50  0001 C CNN
F 1 "GND" H 4150 1900 50  0000 C CNN
F 2 "" H 4150 2050 50  0001 C CNN
F 3 "" H 4150 2050 50  0001 C CNN
	1    4150 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4350 1750
Wire Wire Line
	4150 2050 4150 2000
Wire Wire Line
	4150 1800 4150 1750
Wire Wire Line
	4150 1750 4350 1750
Connection ~ 4350 1750
Wire Wire Line
	4350 1750 4350 2250
Wire Wire Line
	4550 1700 4550 1750
Wire Wire Line
	4550 1750 4750 1750
Wire Wire Line
	4750 1750 4750 1800
Connection ~ 4550 1750
Wire Wire Line
	4550 1750 4550 2250
Wire Wire Line
	4750 2000 4750 2100
Wire Wire Line
	4750 2100 5150 2100
Wire Wire Line
	5150 2100 5150 2550
Wire Wire Line
	5150 2550 5050 2550
Text GLabel 3550 2550 0    50   Input ~ 0
~SYS_RSTn~
Wire Wire Line
	3550 2550 3850 2550
$Comp
L power:GND #PWR?
U 1 1 5FE6F4A1
P 2600 2750
AR Path="/5FAFD5BA/5FE6F4A1" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2600 2500 50  0001 C CNN
F 1 "GND" H 2600 2600 50  0000 C CNN
F 2 "" H 2600 2750 50  0001 C CNN
F 3 "" H 2600 2750 50  0001 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F4A7
P 4550 4000
AR Path="/5FAFD5BA/5FE6F4A7" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 3750 50  0001 C CNN
F 1 "GND" H 4550 3850 50  0000 C CNN
F 2 "" H 4550 4000 50  0001 C CNN
F 3 "" H 4550 4000 50  0001 C CNN
	1    4550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4000 4350 3850
Wire Wire Line
	4550 4000 4550 3850
Text Notes 2550 2100 0    50   ~ 10
~SEN~ = 0 : I2C addr=0010001\n~SEN~ = 1 : I2C addr=1100011
$Comp
L power:GND #PWR?
U 1 1 5FE6F4B0
P 4350 4000
AR Path="/5FAFD5BA/5FE6F4B0" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4B0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 3750 50  0001 C CNN
F 1 "GND" H 4350 3850 50  0000 C CNN
F 2 "" H 4350 4000 50  0001 C CNN
F 3 "" H 4350 4000 50  0001 C CNN
	1    4350 4000
	1    0    0    -1  
$EndComp
Text GLabel 3200 2950 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	3200 2950 3850 2950
Text GLabel 3200 2850 0    50   BiDi ~ 0
I2C1_SDA
Text GLabel 3200 3050 0    50   Input ~ 0
RCLKo_8M
Wire Wire Line
	3200 3050 3850 3050
$Comp
L Device:R_Small R?
U 1 1 5FE6F4BB
P 5300 2750
AR Path="/5FAFD5BA/5FE6F4BB" Ref="R?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4BB" Ref="R?"  Part="1" 
F 0 "R?" V 5250 2850 50  0000 L CNN
F 1 "560" V 5350 2850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 2750 50  0001 C CNN
F 3 "~" H 5300 2750 50  0001 C CNN
	1    5300 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2750 5200 2750
Wire Wire Line
	5400 2750 5700 2750
Text GLabel 5700 2750 2    50   Output ~ 0
FM_I2S_SD
$Comp
L Device:R_Small R?
U 1 1 5FE6F4C4
P 5300 3050
AR Path="/5FAFD5BA/5FE6F4C4" Ref="R?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4C4" Ref="R?"  Part="1" 
F 0 "R?" V 5250 3150 50  0000 L CNN
F 1 "1k" V 5350 3150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 3050 50  0001 C CNN
F 3 "~" H 5300 3050 50  0001 C CNN
	1    5300 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3050 5200 3050
Text GLabel 6700 3050 2    50   Input ~ 0
FM_I2S_WS
$Comp
L Device:R_Small R?
U 1 1 5FE6F4CC
P 3600 3250
AR Path="/5FAFD5BA/5FE6F4CC" Ref="R?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4CC" Ref="R?"  Part="1" 
F 0 "R?" V 3550 3350 50  0000 L CNN
F 1 "1k" V 3650 3350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3600 3250 50  0001 C CNN
F 3 "~" H 3600 3250 50  0001 C CNN
	1    3600 3250
	0    -1   1    0   
$EndComp
Wire Wire Line
	3700 3250 3850 3250
Wire Wire Line
	3500 3250 3200 3250
Text GLabel 3200 3250 0    50   Input ~ 0
FM_I2S_CK
Wire Wire Line
	3850 3350 3600 3350
Text GLabel 3200 3400 0    50   Output ~ 0
~FM_INTn~
Wire Wire Line
	3600 3350 3600 3400
Wire Wire Line
	3600 3400 3200 3400
$Comp
L power:GND #PWR?
U 1 1 5FE6F4D9
P 5150 4000
AR Path="/5FAFD5BA/5FE6F4D9" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4D9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 3750 50  0001 C CNN
F 1 "GND" H 5150 3850 50  0000 C CNN
F 2 "" H 5150 4000 50  0001 C CNN
F 3 "" H 5150 4000 50  0001 C CNN
	1    5150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4000 5150 3450
Wire Wire Line
	5150 3450 5050 3450
$Comp
L Device:C_Small C?
U 1 1 5FE6F4E1
P 6350 2850
AR Path="/5FAFD5BA/5FE6F4E1" Ref="C?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4E1" Ref="C?"  Part="1" 
F 0 "C?" H 6400 2950 50  0000 L CNN
F 1 "4p7" H 6400 2800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6350 2850 50  0001 C CNN
F 3 "~" H 6350 2850 50  0001 C CNN
	1    6350 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F4E7
P 6750 2750
AR Path="/5FAFD5BA/5FE6F4E7" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 2500 50  0001 C CNN
F 1 "GND" H 6750 2600 50  0000 C CNN
F 2 "" H 6750 2750 50  0001 C CNN
F 3 "" H 6750 2750 50  0001 C CNN
	1    6750 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2750 2600 2650
Wire Wire Line
	2600 2500 2700 2500
Wire Wire Line
	2900 2500 3000 2500
Wire Wire Line
	3000 2500 3000 2400
Wire Wire Line
	2800 2750 2800 2650
$Comp
L power:VDD #PWR?
U 1 1 5FE6F4F2
P 4350 1700
AR Path="/5FAFD5BA/5FE6F4F2" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4F2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 1550 50  0001 C CNN
F 1 "VDD" H 4365 1873 50  0000 C CNN
F 2 "" H 4350 1700 50  0001 C CNN
F 3 "" H 4350 1700 50  0001 C CNN
	1    4350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2850 3850 2850
Wire Wire Line
	3850 2750 3800 2750
Wire Wire Line
	3550 2750 3500 2750
NoConn ~ 3850 3450
$Comp
L Device:C_Small C?
U 1 1 5FE6F4FC
P 5700 3350
AR Path="/5FAFD5BA/5FE6F4FC" Ref="C?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F4FC" Ref="C?"  Part="1" 
F 0 "C?" V 5650 3400 50  0000 L CNN
F 1 "1n" V 5750 3400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5700 3350 50  0001 C CNN
F 3 "~" H 5700 3350 50  0001 C CNN
	1    5700 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3350 5350 3350
Wire Wire Line
	5400 3050 6350 3050
Wire Wire Line
	6350 2950 6350 3050
Connection ~ 6350 3050
Wire Wire Line
	6350 3050 6700 3050
Wire Wire Line
	6350 2750 6350 2650
Wire Wire Line
	6350 2650 6750 2650
Wire Wire Line
	6750 2650 6750 2750
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FE6F50A
P 8450 3200
AR Path="/5FAFD5BA/5FE6F50A" Ref="J?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F50A" Ref="J?"  Part="1" 
F 0 "J?" H 8550 3200 50  0000 L CNN
F 1 "Conn_01x02" H 8750 3100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8450 3200 50  0001 C CNN
F 3 "~" H 8450 3200 50  0001 C CNN
	1    8450 3200
	1    0    0    -1  
$EndComp
Text Notes 8300 3550 0    50   ~ 10
To ferrite loop stick,\napprx 180-450µH
Text Notes 6650 3900 0    50   ~ 10
To e.g. 1/4 FM wire-\nor screw telescope\n(whip) antenna
$Comp
L Device:C_Small C?
U 1 1 5FE6F512
P 6000 3200
AR Path="/5FAFD5BA/5FE6F512" Ref="C?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F512" Ref="C?"  Part="1" 
F 0 "C?" V 5950 3250 50  0000 L CNN
F 1 "470n" V 6050 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6000 3200 50  0001 C CNN
F 3 "~" H 6000 3200 50  0001 C CNN
	1    6000 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 3200 5550 3250
Wire Wire Line
	5550 3250 5050 3250
$Comp
L Device:L_Small L?
U 1 1 5FE6F51A
P 5350 3550
AR Path="/5FAFD5BA/5FE6F51A" Ref="L?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F51A" Ref="L?"  Part="1" 
F 0 "L?" H 5398 3596 50  0000 L CNN
F 1 "56nH(LQW18AN56NJ00D)" H 5398 3505 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H 5350 3550 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/281/JELF243A-0024-1380895.pdf" H 5350 3550 50  0001 C CNN
	1    5350 3550
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:CM1213A-01SO D?
U 1 1 5FE6F520
P 6350 3900
AR Path="/5FAFD5BA/5FE6F520" Ref="D?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F520" Ref="D?"  Part="1" 
F 0 "D?" H 6350 4100 50  0000 C CNN
F 1 "CM1213A-01SO" H 6350 4250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 3730 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/CM1213A-D.PDF" V 6275 3980 50  0001 C CNN
	1    6350 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	6100 3200 7850 3200
Wire Wire Line
	5550 3200 5900 3200
$Comp
L power:GND #PWR?
U 1 1 5FE6F528
P 5350 4000
AR Path="/5FAFD5BA/5FE6F528" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F528" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 3750 50  0001 C CNN
F 1 "GND" H 5350 3850 50  0000 C CNN
F 2 "" H 5350 4000 50  0001 C CNN
F 3 "" H 5350 4000 50  0001 C CNN
	1    5350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4000 5350 3650
Wire Wire Line
	5350 3450 5350 3350
Connection ~ 5350 3350
Wire Wire Line
	5350 3350 5600 3350
$Comp
L power:GND #PWR?
U 1 1 5FE6F532
P 6100 4000
AR Path="/5FAFD5BA/5FE6F532" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F532" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 3750 50  0001 C CNN
F 1 "GND" H 6100 3850 50  0000 C CNN
F 2 "" H 6100 4000 50  0001 C CNN
F 3 "" H 6100 4000 50  0001 C CNN
	1    6100 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F538
P 6600 4000
AR Path="/5FAFD5BA/5FE6F538" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F538" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6600 3750 50  0001 C CNN
F 1 "GND" H 6600 3850 50  0000 C CNN
F 2 "" H 6600 4000 50  0001 C CNN
F 3 "" H 6600 4000 50  0001 C CNN
	1    6600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4000 6100 3900
Wire Wire Line
	6100 3900 6150 3900
Wire Wire Line
	6600 4000 6600 3900
Wire Wire Line
	6600 3900 6550 3900
$Comp
L Power_Protection:CM1213A-01SO D?
U 1 1 5FE6F542
P 7850 3550
AR Path="/5FAFD5BA/5FE6F542" Ref="D?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F542" Ref="D?"  Part="1" 
F 0 "D?" H 7850 3750 50  0000 C CNN
F 1 "CM1213A-01SO" H 7850 3900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7900 3380 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/CM1213A-D.PDF" V 7775 3630 50  0001 C CNN
	1    7850 3550
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F548
P 7600 3600
AR Path="/5FAFD5BA/5FE6F548" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F548" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 3350 50  0001 C CNN
F 1 "GND" H 7600 3450 50  0000 C CNN
F 2 "" H 7600 3600 50  0001 C CNN
F 3 "" H 7600 3600 50  0001 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F54E
P 8100 3600
AR Path="/5FAFD5BA/5FE6F54E" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F54E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 3350 50  0001 C CNN
F 1 "GND" H 8100 3450 50  0000 C CNN
F 2 "" H 8100 3600 50  0001 C CNN
F 3 "" H 8100 3600 50  0001 C CNN
	1    8100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3350 7850 3200
Connection ~ 7850 3200
Wire Wire Line
	7850 3200 8250 3200
Wire Wire Line
	7600 3600 7600 3550
Wire Wire Line
	7600 3550 7650 3550
Wire Wire Line
	8100 3600 8100 3550
Wire Wire Line
	8100 3550 8050 3550
$Comp
L power:GND #PWR?
U 1 1 5FE6F55B
P 8150 3350
AR Path="/5FAFD5BA/5FE6F55B" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F55B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8150 3100 50  0001 C CNN
F 1 "GND" H 8150 3200 50  0000 C CNN
F 2 "" H 8150 3350 50  0001 C CNN
F 3 "" H 8150 3350 50  0001 C CNN
	1    8150 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3350 8150 3300
Wire Wire Line
	8150 3300 8250 3300
Wire Wire Line
	6350 3700 6350 3350
Connection ~ 6350 3350
Wire Wire Line
	6350 3350 5800 3350
Wire Wire Line
	6350 3350 6850 3350
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FE6F567
P 7050 3350
AR Path="/5FAFD5BA/5FE6F567" Ref="J?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F567" Ref="J?"  Part="1" 
F 0 "J?" H 7050 3150 50  0000 C CNN
F 1 "Molex_PicoBlade-53398-0271" H 7050 3450 50  0000 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53398-0271_1x02-1MP_P1.25mm_Vertical" H 7050 3350 50  0001 C CNN
F 3 "https://www.molex.com/molex/products/part-detail/pcb_headers/0533980271" H 7050 3350 50  0001 C CNN
	1    7050 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F56D
P 6500 3550
AR Path="/5FAFD5BA/5FE6F56D" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F56D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 3300 50  0001 C CNN
F 1 "GND" H 6500 3400 50  0000 C CNN
F 2 "" H 6500 3550 50  0001 C CNN
F 3 "" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
Text Notes 6400 3200 0    50   ~ 0
(OTS cable assm: e.g. 151340203)
Wire Wire Line
	6500 3550 6500 3500
Wire Wire Line
	6500 3450 6550 3450
Wire Wire Line
	6750 3450 6800 3450
Wire Wire Line
	2600 2650 2800 2650
Connection ~ 2600 2650
Wire Wire Line
	2600 2650 2600 2500
Connection ~ 2800 2650
Wire Wire Line
	2800 2650 2800 2600
$Comp
L customlib_mj:dogbone_3_ud JP?
U 1 1 5FE6F57C
P 2800 2500
AR Path="/5FAFD5BA/5FE6F57C" Ref="JP?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F57C" Ref="JP?"  Part="1" 
F 0 "JP?" H 2800 2633 50  0000 C CNN
F 1 "dogbone_3_ud" H 2825 2650 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0402" H 2800 2500 50  0001 C CNN
F 3 "" H 2800 2500 50  0001 C CNN
	1    2800 2500
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:dogbone_2_ud JP?
U 1 1 5FE6F582
P 3650 2750
AR Path="/5FAFD5BA/5FE6F582" Ref="JP?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F582" Ref="JP?"  Part="1" 
F 0 "JP?" H 3650 2884 50  0000 C CNN
F 1 "dogbone_2_ud" H 3650 2850 50  0001 C CNN
F 2 "customlib_mj_fp:db2_ud_0402" H 3650 2750 50  0001 C CNN
F 3 "" H 3650 2750 50  0001 C CNN
	1    3650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2750 3500 2800
Wire Wire Line
	3500 2800 3800 2800
Wire Wire Line
	3800 2800 3800 2750
Connection ~ 3500 2750
Wire Wire Line
	3500 2750 2800 2750
Connection ~ 3800 2750
Wire Wire Line
	3800 2750 3750 2750
$Comp
L customlib_mj:dogbone_2_ud JP?
U 1 1 5FE6F58F
P 6650 3450
AR Path="/5FAFD5BA/5FE6F58F" Ref="JP?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F58F" Ref="JP?"  Part="1" 
F 0 "JP?" H 6700 3350 50  0000 C CNN
F 1 "dogbone_2_ud" H 6650 3550 50  0001 C CNN
F 2 "customlib_mj_fp:db2_ud_0402" H 6650 3450 50  0001 C CNN
F 3 "" H 6650 3450 50  0001 C CNN
	1    6650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3500 6800 3500
Wire Wire Line
	6800 3500 6800 3450
Connection ~ 6500 3500
Wire Wire Line
	6500 3500 6500 3450
Connection ~ 6800 3450
Wire Wire Line
	6800 3450 6850 3450
NoConn ~ 5050 2850
NoConn ~ 5050 2950
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5FE6F59D
P 8450 4850
AR Path="/5FAFD5BA/5FE6F59D" Ref="J?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F59D" Ref="J?"  Part="1" 
F 0 "J?" H 8803 4825 50  0000 C CNN
F 1 "Conn_Coaxial" H 8803 4734 50  0000 C CNN
F 2 "customlib_mj_fp:SMA_Molex_73251-2200_Horizontal" H 8450 4850 50  0001 C CNN
F 3 " ~" H 8450 4850 50  0001 C CNN
	1    8450 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE6F5A3
P 8450 5150
AR Path="/5FAFD5BA/5FE6F5A3" Ref="#PWR?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F5A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 4900 50  0001 C CNN
F 1 "GND" H 8450 5000 50  0000 C CNN
F 2 "" H 8450 5150 50  0001 C CNN
F 3 "" H 8450 5150 50  0001 C CNN
	1    8450 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5150 8450 5050
Text Label 6350 3350 0    50   ~ 0
FMI
Wire Wire Line
	8250 4850 8150 4850
Text Label 7750 4850 0    50   ~ 0
FMI
$Comp
L customlib_mj:dogbone_2_ud JP?
U 1 1 5FE6F5AD
P 8050 4850
AR Path="/5FAFD5BA/5FE6F5AD" Ref="JP?"  Part="1" 
AR Path="/5FE3F0D8/5FE6F5AD" Ref="JP?"  Part="1" 
F 0 "JP?" H 8100 4750 50  0000 C CNN
F 1 "dogbone_2_ud" H 8050 4950 50  0001 C CNN
F 2 "customlib_mj_fp:db2_ud_0402" H 8050 4850 50  0001 C CNN
F 3 "" H 8050 4850 50  0001 C CNN
	1    8050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4850 7750 4850
$EndSCHEMATC
