EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 21
Title "STM32F429 MCU power, decoupling, Vref"
Date "2020-04-26"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L customlib_mj:STM32F429VITx U401
U 3 1 5EAFCF37
P 5600 3200
F 0 "U401" H 5256 4490 60  0000 L CNN
F 1 "STM32F429VITx" H 5256 4384 60  0000 L CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 4700 3450 60  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32f429ng.pdf" H 1900 4650 60  0001 L CNN
F 4 "STM32F429VITx" H 5300 3550 60  0001 L CNN "manf#"
F 5 "ARM Cortex-M4 MCU, 2048KB flash, 192KB RAM, 180MHz, 1.8-3.6V, 82 GPIO, LQFP-100 14x14mm. Ref. Man : RM0090" H 2900 3150 60  0001 L CNN "Field5"
	3    5600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0407
U 1 1 5F35AB5B
P 6350 3050
F 0 "#PWR0407" H 6350 2800 50  0001 C CNN
F 1 "GND" H 6350 2900 50  0000 C CNN
F 2 "" H 6350 3050 50  0001 C CNN
F 3 "" H 6350 3050 50  0001 C CNN
	1    6350 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0402
U 1 1 5F35ADFC
P 4800 2050
F 0 "#PWR0402" H 4800 1900 50  0001 C CNN
F 1 "VDD" H 4800 2200 50  0000 C CNN
F 2 "" H 4800 2050 50  0001 C CNN
F 3 "" H 4800 2050 50  0001 C CNN
	1    4800 2050
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:REF6125IDGK U?
U 1 1 5F392B92
P 3100 3500
AR Path="/5F785D6E/5F392B92" Ref="U?"  Part="1" 
AR Path="/5EAEB4B5/5F392B92" Ref="U402"  Part="1" 
F 0 "U402" H 3100 3947 60  0000 C CNN
F 1 "REF6125IDGK" H 3100 3841 60  0000 C CNN
F 2 "Package_SO:VSSOP-8_3.0x3.0mm_P0.65mm" H 3100 3100 60  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/ref6125" H 3100 3500 60  0001 C CNN
	1    3100 3500
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:TLV9052SIDGS U?
U 1 1 5F392B98
P 3350 5900
AR Path="/5F785D6E/5F392B98" Ref="U?"  Part="1" 
AR Path="/5EAEB4B5/5F392B98" Ref="U403"  Part="1" 
F 0 "U403" H 3082 5625 50  0000 L CNN
F 1 "TLV9052SIDGS" H 3082 5534 50  0000 L CNN
F 2 "Package_SO:VSSOP-10_3x3mm_P0.5mm" H 3350 5900 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv9052" H 3400 6100 50  0001 C CNN
	1    3350 5900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:TLV9052SIDGS U?
U 2 1 5F392B9E
P 5150 5900
AR Path="/5F785D6E/5F392B9E" Ref="U?"  Part="2" 
AR Path="/5EAEB4B5/5F392B9E" Ref="U403"  Part="2" 
F 0 "U403" H 4882 5625 50  0000 L CNN
F 1 "TLV9052SIDGS" H 4882 5534 50  0000 L CNN
F 2 "Package_SO:VSSOP-10_3x3mm_P0.5mm" H 5150 5900 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv9052" H 5200 6100 50  0001 C CNN
	2    5150 5900
	1    0    0    -1  
$EndComp
Text HLabel 3000 5500 0    50   Input ~ 0
KTY_BIAS_EN
Wire Wire Line
	3350 5500 3000 5500
Wire Wire Line
	3350 5600 5150 5600
Wire Wire Line
	5150 5600 5150 5700
Wire Wire Line
	3650 5900 3750 5900
Wire Wire Line
	3750 5900 3750 6300
Wire Wire Line
	3750 6300 2950 6300
Wire Wire Line
	2950 6300 2950 6000
Wire Wire Line
	2950 6000 3050 6000
Wire Wire Line
	5450 5900 5550 5900
Wire Wire Line
	5550 5900 5550 6300
Wire Wire Line
	5550 6300 4750 6300
Wire Wire Line
	4750 6300 4750 6000
Wire Wire Line
	4750 6000 4850 6000
Wire Wire Line
	3050 5800 2650 5800
Wire Wire Line
	4850 5800 4400 5800
Text Label 4400 5800 0    50   ~ 0
Vref_2v5
Text Label 2650 5800 0    50   ~ 0
Vref_2v5
Wire Wire Line
	5550 5900 5700 5900
Connection ~ 5550 5900
Wire Wire Line
	3750 5900 3850 5900
Connection ~ 3750 5900
Wire Wire Line
	3350 5500 3350 5600
Connection ~ 3350 5600
Wire Wire Line
	3350 5600 3350 5700
$Comp
L Device:C_Small C414
U 1 1 5F398C87
P 4350 3500
F 0 "C414" H 4442 3546 50  0000 L CNN
F 1 "22u" H 4442 3455 50  0000 L CNN
F 2 "" H 4350 3500 50  0001 C CNN
F 3 "~" H 4350 3500 50  0001 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3300 4900 3300
Wire Wire Line
	4350 3300 4350 3400
Wire Wire Line
	3500 3300 4350 3300
Connection ~ 4350 3300
Wire Wire Line
	4350 3300 4250 3400
Wire Wire Line
	4250 3400 3500 3400
$Comp
L Device:C_Small C413
U 1 1 5F39EC07
P 3800 3500
F 0 "C413" V 3750 3550 50  0000 L CNN
F 1 "1u" V 3850 3550 50  0000 L CNN
F 2 "" H 3800 3500 50  0001 C CNN
F 3 "~" H 3800 3500 50  0001 C CNN
	1    3800 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3700 4650 3700
Wire Wire Line
	3900 3500 4050 3500
Wire Wire Line
	4050 3500 4050 3700
Connection ~ 4050 3700
Wire Wire Line
	4050 3700 3650 3700
Wire Wire Line
	3700 3500 3500 3500
Wire Wire Line
	3500 3600 3600 3600
Wire Wire Line
	3600 3600 3600 3700
Connection ~ 3600 3700
Wire Wire Line
	3600 3700 3500 3700
$Comp
L Device:C_Small C417
U 1 1 5F3A7C86
P 2200 3550
F 0 "C417" H 2292 3596 50  0000 L CNN
F 1 "100n" H 2292 3505 50  0000 L CNN
F 2 "" H 2200 3550 50  0001 C CNN
F 3 "~" H 2200 3550 50  0001 C CNN
	1    2200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3300 2550 3300
Wire Wire Line
	2500 3300 2500 3250
Wire Wire Line
	2700 3500 2600 3500
Wire Wire Line
	2550 3500 2550 3300
Connection ~ 2550 3300
Wire Wire Line
	2550 3300 2500 3300
Wire Wire Line
	2700 3700 2600 3700
Wire Wire Line
	2600 3700 2600 3500
Connection ~ 2600 3500
Wire Wire Line
	2600 3500 2550 3500
Wire Wire Line
	2200 3450 2200 3250
Wire Wire Line
	2200 3250 2500 3250
Connection ~ 2500 3250
Wire Wire Line
	2500 3250 2500 3000
$Comp
L power:GNDA #PWR0411
U 1 1 5F3ACF76
P 3650 3850
F 0 "#PWR0411" H 3650 3600 50  0001 C CNN
F 1 "GNDA" H 3655 3677 50  0000 C CNN
F 2 "" H 3650 3850 50  0001 C CNN
F 3 "" H 3650 3850 50  0001 C CNN
	1    3650 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0412
U 1 1 5F3AD5D7
P 4800 3850
F 0 "#PWR0412" H 4800 3600 50  0001 C CNN
F 1 "GNDA" H 4805 3677 50  0000 C CNN
F 2 "" H 4800 3850 50  0001 C CNN
F 3 "" H 4800 3850 50  0001 C CNN
	1    4800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0410
U 1 1 5F3ADA06
P 2200 3850
F 0 "#PWR0410" H 2200 3600 50  0001 C CNN
F 1 "GNDA" H 2205 3677 50  0000 C CNN
F 2 "" H 2200 3850 50  0001 C CNN
F 3 "" H 2200 3850 50  0001 C CNN
	1    2200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3850 2200 3650
Wire Wire Line
	3650 3850 3650 3700
Connection ~ 3650 3700
Wire Wire Line
	3650 3700 3600 3700
Wire Wire Line
	4800 3850 4800 3700
$Comp
L power:GNDA #PWR0413
U 1 1 5F3B073F
P 6350 3850
F 0 "#PWR0413" H 6350 3600 50  0001 C CNN
F 1 "GNDA" H 6355 3677 50  0000 C CNN
F 2 "" H 6350 3850 50  0001 C CNN
F 3 "" H 6350 3850 50  0001 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3850 6350 3300
Wire Wire Line
	6350 3300 6200 3300
Text Label 3900 3300 2    50   ~ 0
Vref_2v5
Text HLabel 3850 5900 2    50   Output ~ 0
KTY_BIAS_CH_A
Text HLabel 5700 5900 2    50   Output ~ 0
KTY_BIAS_CH_B
Wire Wire Line
	6200 2700 6350 2700
Wire Wire Line
	6350 2700 6350 2800
Wire Wire Line
	6200 3000 6350 3000
Connection ~ 6350 3000
Wire Wire Line
	6350 3000 6350 3050
Wire Wire Line
	6200 2900 6350 2900
Connection ~ 6350 2900
Wire Wire Line
	6350 2900 6350 3000
Wire Wire Line
	6200 2800 6350 2800
Connection ~ 6350 2800
Wire Wire Line
	6350 2800 6350 2900
Wire Wire Line
	5000 2900 4800 2900
Wire Wire Line
	4800 2900 4800 2800
Wire Wire Line
	5000 2300 4800 2300
Connection ~ 4800 2300
Wire Wire Line
	4800 2300 4800 2050
Wire Wire Line
	5000 2400 4800 2400
Connection ~ 4800 2400
Wire Wire Line
	4800 2400 4800 2300
Wire Wire Line
	5000 2500 4800 2500
Connection ~ 4800 2500
Wire Wire Line
	4800 2500 4800 2400
Wire Wire Line
	5000 2600 4800 2600
Connection ~ 4800 2600
Wire Wire Line
	4800 2600 4800 2500
Wire Wire Line
	5000 2700 4800 2700
Connection ~ 4800 2700
Wire Wire Line
	4800 2700 4800 2600
Wire Wire Line
	5000 2800 4800 2800
Connection ~ 4800 2800
Wire Wire Line
	4800 2800 4800 2700
$Comp
L power:VDDA #PWR0405
U 1 1 5F491EBB
P 2500 3000
F 0 "#PWR0405" H 2500 2850 50  0001 C CNN
F 1 "VDDA" H 2500 3150 50  0000 C CNN
F 2 "" H 2500 3000 50  0001 C CNN
F 3 "" H 2500 3000 50  0001 C CNN
	1    2500 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR0404
U 1 1 5F49258C
P 4500 2850
F 0 "#PWR0404" H 4500 2700 50  0001 C CNN
F 1 "VDDA" H 4500 3000 50  0000 C CNN
F 2 "" H 4500 2850 50  0001 C CNN
F 3 "" H 4500 2850 50  0001 C CNN
	1    4500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2850 4500 3100
Wire Wire Line
	4500 3100 5000 3100
$Comp
L power:VDDA #PWR0406
U 1 1 5F49611C
P 8300 3000
F 0 "#PWR0406" H 8300 2850 50  0001 C CNN
F 1 "VDDA" H 8300 3150 50  0000 C CNN
F 2 "" H 8300 3000 50  0001 C CNN
F 3 "" H 8300 3000 50  0001 C CNN
	1    8300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0409
U 1 1 5F497349
P 8300 3500
F 0 "#PWR0409" H 8300 3250 50  0001 C CNN
F 1 "GNDA" H 8305 3327 50  0000 C CNN
F 2 "" H 8300 3500 50  0001 C CNN
F 3 "" H 8300 3500 50  0001 C CNN
	1    8300 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C411
U 1 1 5F497687
P 8150 3250
F 0 "C411" H 8242 3296 50  0000 L CNN
F 1 "100n" H 8242 3205 50  0000 L CNN
F 2 "" H 8150 3250 50  0001 C CNN
F 3 "~" H 8150 3250 50  0001 C CNN
	1    8150 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C408
U 1 1 5F497E9C
P 10050 2250
F 0 "C408" H 10142 2296 50  0000 L CNN
F 1 "100n" H 10142 2205 50  0000 L CNN
F 2 "" H 10050 2250 50  0001 C CNN
F 3 "~" H 10050 2250 50  0001 C CNN
	1    10050 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C407
U 1 1 5F498376
P 9700 2250
F 0 "C407" H 9792 2296 50  0000 L CNN
F 1 "100n" H 9792 2205 50  0000 L CNN
F 2 "" H 9700 2250 50  0001 C CNN
F 3 "~" H 9700 2250 50  0001 C CNN
	1    9700 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C406
U 1 1 5F4987F0
P 9350 2250
F 0 "C406" H 9442 2296 50  0000 L CNN
F 1 "100n" H 9442 2205 50  0000 L CNN
F 2 "" H 9350 2250 50  0001 C CNN
F 3 "~" H 9350 2250 50  0001 C CNN
	1    9350 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C405
U 1 1 5F498AE9
P 9000 2250
F 0 "C405" H 9092 2296 50  0000 L CNN
F 1 "100n" H 9092 2205 50  0000 L CNN
F 2 "" H 9000 2250 50  0001 C CNN
F 3 "~" H 9000 2250 50  0001 C CNN
	1    9000 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C404
U 1 1 5F498E00
P 8650 2250
F 0 "C404" H 8742 2296 50  0000 L CNN
F 1 "100n" H 8742 2205 50  0000 L CNN
F 2 "" H 8650 2250 50  0001 C CNN
F 3 "~" H 8650 2250 50  0001 C CNN
	1    8650 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C403
U 1 1 5F49912C
P 8300 2250
F 0 "C403" H 8392 2296 50  0000 L CNN
F 1 "100n" H 8392 2205 50  0000 L CNN
F 2 "" H 8300 2250 50  0001 C CNN
F 3 "~" H 8300 2250 50  0001 C CNN
	1    8300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C402
U 1 1 5F49951A
P 7950 2250
F 0 "C402" H 8042 2296 50  0000 L CNN
F 1 "100n" H 8042 2205 50  0000 L CNN
F 2 "" H 7950 2250 50  0001 C CNN
F 3 "~" H 7950 2250 50  0001 C CNN
	1    7950 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0401
U 1 1 5F499872
P 9050 2000
F 0 "#PWR0401" H 9050 1850 50  0001 C CNN
F 1 "VDD" H 9050 2150 50  0000 C CNN
F 2 "" H 9050 2000 50  0001 C CNN
F 3 "" H 9050 2000 50  0001 C CNN
	1    9050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0403
U 1 1 5F499F42
P 9050 2500
F 0 "#PWR0403" H 9050 2250 50  0001 C CNN
F 1 "GND" H 9050 2350 50  0000 C CNN
F 2 "" H 9050 2500 50  0001 C CNN
F 3 "" H 9050 2500 50  0001 C CNN
	1    9050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2050 8300 2050
Wire Wire Line
	10050 2050 10050 2150
Wire Wire Line
	7950 2050 7950 2150
Wire Wire Line
	7950 2350 7950 2450
Wire Wire Line
	7950 2450 8300 2450
Wire Wire Line
	10050 2450 10050 2350
Wire Wire Line
	9050 2500 9050 2450
Connection ~ 9050 2450
Wire Wire Line
	9050 2450 9350 2450
Wire Wire Line
	9050 2000 9050 2050
Connection ~ 9050 2050
Wire Wire Line
	9050 2050 9350 2050
Wire Wire Line
	8300 3500 8300 3450
Wire Wire Line
	8300 3000 8300 3050
Wire Wire Line
	8300 2150 8300 2050
Connection ~ 8300 2050
Wire Wire Line
	8300 2050 8650 2050
Wire Wire Line
	8650 2150 8650 2050
Connection ~ 8650 2050
Wire Wire Line
	8650 2050 9000 2050
Wire Wire Line
	9000 2150 9000 2050
Connection ~ 9000 2050
Wire Wire Line
	9000 2050 9050 2050
Wire Wire Line
	9350 2150 9350 2050
Connection ~ 9350 2050
Wire Wire Line
	9350 2050 9700 2050
Wire Wire Line
	9700 2150 9700 2050
Connection ~ 9700 2050
Wire Wire Line
	9700 2050 10050 2050
Wire Wire Line
	9700 2350 9700 2450
Connection ~ 9700 2450
Wire Wire Line
	9700 2450 10050 2450
Wire Wire Line
	9350 2350 9350 2450
Connection ~ 9350 2450
Wire Wire Line
	9350 2450 9700 2450
Wire Wire Line
	9000 2350 9000 2450
Connection ~ 9000 2450
Wire Wire Line
	9000 2450 9050 2450
Wire Wire Line
	8650 2350 8650 2450
Connection ~ 8650 2450
Wire Wire Line
	8650 2450 9000 2450
Wire Wire Line
	8300 2350 8300 2450
Connection ~ 8300 2450
Wire Wire Line
	8300 2450 8650 2450
$Comp
L Device:C_Small C401
U 1 1 5F4C22C9
P 7600 2250
F 0 "C401" H 7692 2296 50  0000 L CNN
F 1 "10u" H 7692 2205 50  0000 L CNN
F 2 "" H 7600 2250 50  0001 C CNN
F 3 "~" H 7600 2250 50  0001 C CNN
	1    7600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2150 7600 2050
Wire Wire Line
	7600 2050 7950 2050
Connection ~ 7950 2050
Wire Wire Line
	7600 2350 7600 2450
Wire Wire Line
	7600 2450 7950 2450
Connection ~ 7950 2450
$Comp
L Device:Net-Tie_2 NT401
U 1 1 5F4D1A74
P 5500 4550
F 0 "NT401" H 5500 4731 50  0000 C CNN
F 1 "Net-Tie_2" H 5500 4640 50  0000 C CNN
F 2 "" H 5500 4550 50  0001 C CNN
F 3 "~" H 5500 4550 50  0001 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0414
U 1 1 5F4D2803
P 5250 4650
F 0 "#PWR0414" H 5250 4400 50  0001 C CNN
F 1 "GND" H 5250 4500 50  0000 C CNN
F 2 "" H 5250 4650 50  0001 C CNN
F 3 "" H 5250 4650 50  0001 C CNN
	1    5250 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0415
U 1 1 5F4D2D01
P 5750 4650
F 0 "#PWR0415" H 5750 4400 50  0001 C CNN
F 1 "GNDA" H 5755 4477 50  0000 C CNN
F 2 "" H 5750 4650 50  0001 C CNN
F 3 "" H 5750 4650 50  0001 C CNN
	1    5750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4650 5250 4550
Wire Wire Line
	5250 4550 5400 4550
Wire Wire Line
	5600 4550 5750 4550
Wire Wire Line
	5750 4550 5750 4650
Wire Wire Line
	4350 3600 4350 3700
Connection ~ 4350 3700
Wire Wire Line
	4350 3700 4050 3700
$Comp
L Device:C_Small C412
U 1 1 5F501DED
P 8500 3250
F 0 "C412" H 8592 3296 50  0000 L CNN
F 1 "1u" H 8592 3205 50  0000 L CNN
F 2 "" H 8500 3250 50  0001 C CNN
F 3 "~" H 8500 3250 50  0001 C CNN
	1    8500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3050 8500 3050
Wire Wire Line
	8500 3050 8500 3150
Connection ~ 8300 3050
Wire Wire Line
	8300 3050 8150 3050
Wire Wire Line
	8500 3350 8500 3450
Wire Wire Line
	8500 3450 8300 3450
Connection ~ 8300 3450
Wire Wire Line
	8300 3450 8150 3450
Wire Wire Line
	8150 3450 8150 3350
Wire Wire Line
	8150 3050 8150 3150
$Comp
L Device:C_Small C415
U 1 1 5F53699F
P 4650 3500
F 0 "C415" H 4742 3546 50  0000 L CNN
F 1 "1u" H 4742 3455 50  0000 L CNN
F 2 "" H 4650 3500 50  0001 C CNN
F 3 "~" H 4650 3500 50  0001 C CNN
	1    4650 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C416
U 1 1 5F536CFF
P 4900 3500
F 0 "C416" H 4992 3546 50  0000 L CNN
F 1 "100n" H 4992 3455 50  0000 L CNN
F 2 "" H 4900 3500 50  0001 C CNN
F 3 "~" H 4900 3500 50  0001 C CNN
	1    4900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3400 4900 3300
Connection ~ 4900 3300
Wire Wire Line
	4900 3300 4650 3300
Wire Wire Line
	4800 3700 4900 3700
Wire Wire Line
	4900 3700 4900 3600
Connection ~ 4800 3700
Wire Wire Line
	4650 3600 4650 3700
Connection ~ 4650 3700
Wire Wire Line
	4650 3700 4350 3700
Wire Wire Line
	4650 3400 4650 3300
Connection ~ 4650 3300
Wire Wire Line
	4650 3300 4350 3300
$Comp
L Device:C_Small C409
U 1 1 5F549F17
P 6350 2550
F 0 "C409" H 6442 2596 50  0000 L CNN
F 1 "2u2" H 6442 2505 50  0000 L CNN
F 2 "" H 6350 2550 50  0001 C CNN
F 3 "~" H 6350 2550 50  0001 C CNN
	1    6350 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C410
U 1 1 5F54AE44
P 6700 2550
F 0 "C410" H 6792 2596 50  0000 L CNN
F 1 "2u2" H 6792 2505 50  0000 L CNN
F 2 "" H 6700 2550 50  0001 C CNN
F 3 "~" H 6700 2550 50  0001 C CNN
	1    6700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0408
U 1 1 5F54B16B
P 6700 3050
F 0 "#PWR0408" H 6700 2800 50  0001 C CNN
F 1 "GND" H 6700 2900 50  0000 C CNN
F 2 "" H 6700 3050 50  0001 C CNN
F 3 "" H 6700 3050 50  0001 C CNN
	1    6700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2650 6350 2700
Connection ~ 6350 2700
Wire Wire Line
	6350 2450 6350 2400
Wire Wire Line
	6350 2400 6200 2400
Wire Wire Line
	6200 2300 6700 2300
Wire Wire Line
	6700 2300 6700 2450
Wire Wire Line
	6700 2650 6700 3050
Text Notes 7650 3900 0    70   ~ 14
MCU decoupling - place close to MCU power pins
Text Notes 2350 4500 0    70   ~ 14
Precisin Vref. Place close\nto MCU. See REF6125 ds\nfor layout suggestions.
Text Notes 3050 7050 0    70   ~ 14
Switchable Vref for biasing KTY sensors\n(for cold-junction compensation), one\nper channel. The KTY's can then be\nmeassured through the ordinary TC \namps.\n
$EndSCHEMATC
