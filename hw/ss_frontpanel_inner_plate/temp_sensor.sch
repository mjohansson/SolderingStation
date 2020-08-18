EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
Title "Inner front-panel carrier board"
Date "2020-07-30"
Rev "R1a"
Comp "MaJo Electronics :)"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1700 2550 0    50   Input ~ 0
SCL
Text HLabel 1700 2450 0    50   BiDi ~ 0
SDA
Text HLabel 1700 2750 0    50   Input ~ 0
A0
Text HLabel 1700 2850 0    50   Input ~ 0
A1
$Comp
L Sensor_Temperature:TMP100 U?
U 1 1 5F2B3421
P 2400 2650
AR Path="/5F2B2D3D/5F2B3421" Ref="U?"  Part="1" 
AR Path="/5F2B889C/5F2B3421" Ref="U?"  Part="1" 
AR Path="/5F2BD2B3/5F2B3421" Ref="U1"  Part="1" 
AR Path="/5F2BD7F7/5F2B3421" Ref="U2"  Part="1" 
AR Path="/5F2BDC1C/5F2B3421" Ref="U5"  Part="1" 
AR Path="/5F2BE052/5F2B3421" Ref="U4"  Part="1" 
AR Path="/5F2BE47E/5F2B3421" Ref="U?"  Part="1" 
AR Path="/5F2C0DB1/5F2B3421" Ref="U3"  Part="1" 
F 0 "U5" H 2550 3000 50  0000 C CNN
F 1 "TMP100" H 2650 2300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2400 2300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/tmp100" H 2350 2650 50  0001 C CNN
	1    2400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2850 2000 2850
Wire Wire Line
	1700 2750 2000 2750
Wire Wire Line
	1700 2450 2000 2450
Wire Wire Line
	2000 2550 1700 2550
$Comp
L power:GND #PWR?
U 1 1 5F2B3F4D
P 2400 3150
AR Path="/5F2B2D3D/5F2B3F4D" Ref="#PWR?"  Part="1" 
AR Path="/5F2B889C/5F2B3F4D" Ref="#PWR?"  Part="1" 
AR Path="/5F2BD2B3/5F2B3F4D" Ref="#PWR044"  Part="1" 
AR Path="/5F2BD7F7/5F2B3F4D" Ref="#PWR048"  Part="1" 
AR Path="/5F2BDC1C/5F2B3F4D" Ref="#PWR060"  Part="1" 
AR Path="/5F2BE052/5F2B3F4D" Ref="#PWR056"  Part="1" 
AR Path="/5F2BE47E/5F2B3F4D" Ref="#PWR?"  Part="1" 
AR Path="/5F2C0DB1/5F2B3F4D" Ref="#PWR052"  Part="1" 
F 0 "#PWR060" H 2400 2900 50  0001 C CNN
F 1 "GND" H 2405 2977 50  0000 C CNN
F 2 "" H 2400 3150 50  0001 C CNN
F 3 "" H 2400 3150 50  0001 C CNN
	1    2400 3150
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR?
U 1 1 5F2B4305
P 2400 2150
AR Path="/5F2B2D3D/5F2B4305" Ref="#PWR?"  Part="1" 
AR Path="/5F2B889C/5F2B4305" Ref="#PWR?"  Part="1" 
AR Path="/5F2BD2B3/5F2B4305" Ref="#PWR041"  Part="1" 
AR Path="/5F2BD7F7/5F2B4305" Ref="#PWR045"  Part="1" 
AR Path="/5F2BDC1C/5F2B4305" Ref="#PWR057"  Part="1" 
AR Path="/5F2BE052/5F2B4305" Ref="#PWR053"  Part="1" 
AR Path="/5F2BE47E/5F2B4305" Ref="#PWR?"  Part="1" 
AR Path="/5F2C0DB1/5F2B4305" Ref="#PWR049"  Part="1" 
F 0 "#PWR057" H 2400 2000 50  0001 C CNN
F 1 "VDD_IO" H 2417 2323 50  0000 C CNN
F 2 "" H 2400 2150 50  0001 C CNN
F 3 "" H 2400 2150 50  0001 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2150 2400 2250
Wire Wire Line
	2400 3150 2400 3050
$Comp
L Device:C_Small C?
U 1 1 5F2B4B1C
P 3300 2650
AR Path="/5F2B2D3D/5F2B4B1C" Ref="C?"  Part="1" 
AR Path="/5F2B889C/5F2B4B1C" Ref="C?"  Part="1" 
AR Path="/5F2BD2B3/5F2B4B1C" Ref="C8"  Part="1" 
AR Path="/5F2BD7F7/5F2B4B1C" Ref="C9"  Part="1" 
AR Path="/5F2BDC1C/5F2B4B1C" Ref="C12"  Part="1" 
AR Path="/5F2BE052/5F2B4B1C" Ref="C11"  Part="1" 
AR Path="/5F2BE47E/5F2B4B1C" Ref="C?"  Part="1" 
AR Path="/5F2C0DB1/5F2B4B1C" Ref="C10"  Part="1" 
F 0 "C12" H 3392 2696 50  0000 L CNN
F 1 "100n" H 3392 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3300 2650 50  0001 C CNN
F 3 "~" H 3300 2650 50  0001 C CNN
	1    3300 2650
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR?
U 1 1 5F2B537E
P 3300 2450
AR Path="/5F2B2D3D/5F2B537E" Ref="#PWR?"  Part="1" 
AR Path="/5F2B889C/5F2B537E" Ref="#PWR?"  Part="1" 
AR Path="/5F2BD2B3/5F2B537E" Ref="#PWR042"  Part="1" 
AR Path="/5F2BD7F7/5F2B537E" Ref="#PWR046"  Part="1" 
AR Path="/5F2BDC1C/5F2B537E" Ref="#PWR058"  Part="1" 
AR Path="/5F2BE052/5F2B537E" Ref="#PWR054"  Part="1" 
AR Path="/5F2BE47E/5F2B537E" Ref="#PWR?"  Part="1" 
AR Path="/5F2C0DB1/5F2B537E" Ref="#PWR050"  Part="1" 
F 0 "#PWR058" H 3300 2300 50  0001 C CNN
F 1 "VDD_IO" H 3317 2623 50  0000 C CNN
F 2 "" H 3300 2450 50  0001 C CNN
F 3 "" H 3300 2450 50  0001 C CNN
	1    3300 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2B588B
P 3300 2850
AR Path="/5F2B2D3D/5F2B588B" Ref="#PWR?"  Part="1" 
AR Path="/5F2B889C/5F2B588B" Ref="#PWR?"  Part="1" 
AR Path="/5F2BD2B3/5F2B588B" Ref="#PWR043"  Part="1" 
AR Path="/5F2BD7F7/5F2B588B" Ref="#PWR047"  Part="1" 
AR Path="/5F2BDC1C/5F2B588B" Ref="#PWR059"  Part="1" 
AR Path="/5F2BE052/5F2B588B" Ref="#PWR055"  Part="1" 
AR Path="/5F2BE47E/5F2B588B" Ref="#PWR?"  Part="1" 
AR Path="/5F2C0DB1/5F2B588B" Ref="#PWR051"  Part="1" 
F 0 "#PWR059" H 3300 2600 50  0001 C CNN
F 1 "GND" H 3305 2677 50  0000 C CNN
F 2 "" H 3300 2850 50  0001 C CNN
F 3 "" H 3300 2850 50  0001 C CNN
	1    3300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2450 3300 2550
Wire Wire Line
	3300 2850 3300 2750
$EndSCHEMATC
