EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 21
Title "Backside connectors"
Date "2020-08-14"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2250 2700 0    50   Input ~ 0
CH_A_HEATER_1
Text HLabel 2250 2800 0    50   Input ~ 0
CH_A_HEATER_2
Text HLabel 2250 2900 0    50   Output ~ 0
CH_A_TC1
Text HLabel 2250 3000 0    50   Output ~ 0
CH_A_TC2_KTY
Text HLabel 2250 3450 0    50   Input ~ 0
CH_B_HEATER_1
Text HLabel 2250 3550 0    50   Input ~ 0
CH_B_HEATER_2
Text HLabel 2250 3650 0    50   Output ~ 0
CH_B_TC1
Text HLabel 2250 3750 0    50   Output ~ 0
CH_B_TC2_KTY
Wire Wire Line
	2250 2700 2450 2700
Wire Wire Line
	2250 2800 2450 2800
Wire Wire Line
	2250 2900 2450 2900
Wire Wire Line
	2250 3000 2450 3000
Wire Wire Line
	2250 3450 2450 3450
Wire Wire Line
	2250 3550 2450 3550
Wire Wire Line
	2250 3650 2450 3650
Wire Wire Line
	2250 3750 2450 3750
Text Notes 4550 1900 0    70   ~ 14
DBGUART / SWD (dsub-9?)\nFM-ant? (AM-ferrit extern..?)\nUSB1 (device)\nUSB2 (host)\nForce Bootloader/rst\n2x Amphenol Weller-jacks!
Text GLabel 2700 5650 0    50   Output ~ 0
~EXT_RSTn~
Text GLabel 2700 5050 0    50   Output ~ 0
MCU_BOOT0
Text Notes 1750 1850 0    70   ~ 14
Notes:\nAudio-jack 3.5mm - located on audio page\nRJ45 ethernet - located on ethernet page\n
$Comp
L customlib_mj:USB_A-TE_1-292303-1 J1201
U 1 1 5F769C5C
P 5800 4600
F 0 "J1201" H 5650 4950 50  0000 L CNN
F 1 "USB_A-TE_1-292303-1" V 5500 4600 50  0000 C CNN
F 2 "customlib_mj_fp:TE_1-292303-1" H 5950 4550 50  0001 C CNN
F 3 "https://www.te.com/usa-en/product-1-292303-1.html" H 5950 4550 50  0001 C CNN
	1    5800 4600
	-1   0    0    -1  
$EndComp
$Comp
L customlib_mj:USB_B-TE_1734346-1 J1203
U 1 1 5F76B363
P 5650 5900
F 0 "J1203" H 5500 6250 50  0000 L CNN
F 1 "USB_B-TE_1734346-1" V 5350 5900 50  0000 C CNN
F 2 "customlib_mj_fp:TE_1734346" H 5800 5850 50  0001 C CNN
F 3 "https://www.te.com/usa-en/product-1734346-1.html" H 5800 5850 50  0001 C CNN
	1    5650 5900
	-1   0    0    -1  
$EndComp
Text GLabel 5100 4700 0    50   BiDi ~ 0
USB2_DM
Text GLabel 5100 4600 0    50   BiDi ~ 0
USB2_DP
Wire Wire Line
	5100 4600 5500 4600
Wire Wire Line
	5100 4700 5500 4700
$Comp
L power:GND #PWR01207
U 1 1 5F76C43A
P 5650 6450
F 0 "#PWR01207" H 5650 6200 50  0001 C CNN
F 1 "GND" H 5650 6300 50  0000 C CNN
F 2 "" H 5650 6450 50  0001 C CNN
F 3 "" H 5650 6450 50  0001 C CNN
	1    5650 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01204
U 1 1 5F76C9A9
P 5800 5100
F 0 "#PWR01204" H 5800 4850 50  0001 C CNN
F 1 "GND" H 5800 4950 50  0000 C CNN
F 2 "" H 5800 5100 50  0001 C CNN
F 3 "" H 5800 5100 50  0001 C CNN
	1    5800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 6300 5650 6350
Wire Wire Line
	5800 5000 5800 5050
Wire Wire Line
	5900 5000 5900 5050
Wire Wire Line
	5900 5050 5800 5050
Connection ~ 5800 5050
Wire Wire Line
	5800 5050 5800 5100
Wire Wire Line
	5750 6300 5750 6350
Wire Wire Line
	5750 6350 5650 6350
Connection ~ 5650 6350
Wire Wire Line
	5650 6350 5650 6450
$Comp
L customlib_mj:VBUS_2 #PWR01201
U 1 1 5F77B5A7
P 5300 4200
F 0 "#PWR01201" H 5300 4050 50  0001 C CNN
F 1 "VBUS_2" H 5315 4373 50  0000 C CNN
F 2 "" H 5300 4200 50  0001 C CNN
F 3 "" H 5300 4200 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4400 5300 4400
Wire Wire Line
	5300 4400 5300 4200
$Comp
L customlib_mj:VBUS #PWR01206
U 1 1 5F77C454
P 5200 5550
F 0 "#PWR01206" H 5200 5400 50  0001 C CNN
F 1 "VBUS" H 5215 5723 50  0000 C CNN
F 2 "" H 5200 5550 50  0001 C CNN
F 3 "" H 5200 5550 50  0001 C CNN
	1    5200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5550 5200 5700
Wire Wire Line
	5200 5700 5350 5700
Text GLabel 5100 6000 0    50   BiDi ~ 0
USB1_DM
Text GLabel 5100 5900 0    50   BiDi ~ 0
USB1_DP
Wire Wire Line
	5100 5900 5350 5900
Wire Wire Line
	5100 6000 5350 6000
$Comp
L Connector:DB9_Male_MountingHoles J1202
U 1 1 5F3A1DC2
P 3250 5250
F 0 "J1202" H 3902 5252 50  0000 C CNN
F 1 "DB9_Male_MountingHoles" H 3902 5161 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Male_Horizontal_P2.77x2.84mm_EdgePinOffset9.90mm_Housed_MountingHolesOffset11.32mm" H 3250 5250 50  0001 C CNN
F 3 " ~" H 3250 5250 50  0001 C CNN
	1    3250 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01202
U 1 1 5F3B8CBB
P 2700 4850
F 0 "#PWR01202" H 2700 4600 50  0001 C CNN
F 1 "GND" H 2700 4700 50  0000 C CNN
F 2 "" H 2700 4850 50  0001 C CNN
F 3 "" H 2700 4850 50  0001 C CNN
	1    2700 4850
	0    1    1    0   
$EndComp
Text GLabel 2700 5450 0    50   Output ~ 0
DBGUART_RX
Text GLabel 2700 5250 0    50   Input ~ 0
DBGUART_TX
Text GLabel 2700 5150 0    50   Output ~ 0
SWCLK
Text GLabel 2700 5350 0    50   BiDi ~ 0
SWDIO
$Comp
L power:VDD #PWR01203
U 1 1 5F3B9A5E
P 2400 4900
F 0 "#PWR01203" H 2400 4750 50  0001 C CNN
F 1 "VDD" H 2400 5050 50  0000 C CNN
F 2 "" H 2400 4900 50  0001 C CNN
F 3 "" H 2400 4900 50  0001 C CNN
	1    2400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4850 2700 4850
Wire Wire Line
	2400 4900 2400 4950
Wire Wire Line
	2400 4950 2950 4950
Wire Wire Line
	2950 5250 2700 5250
Wire Wire Line
	2950 5450 2700 5450
$Comp
L power:GND #PWR01205
U 1 1 5F3BB41A
P 2900 5550
F 0 "#PWR01205" H 2900 5300 50  0001 C CNN
F 1 "GND" H 2900 5400 50  0000 C CNN
F 2 "" H 2900 5550 50  0001 C CNN
F 3 "" H 2900 5550 50  0001 C CNN
	1    2900 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 5150 2950 5150
Wire Wire Line
	2700 5350 2950 5350
Wire Wire Line
	2700 5050 2950 5050
Wire Wire Line
	2950 5650 2700 5650
Wire Wire Line
	2950 5550 2900 5550
NoConn ~ 3250 5850
Text Notes 2400 6350 0    70   ~ 14
TODO:\n* Add 74HC*-buffer for \nthe external signals\n* Also ESD TVSs
$Comp
L customlib_mj:USBLC6-2SC6 U1202
U 1 1 5F3C08E8
P 7350 5250
F 0 "U1202" H 7350 5717 50  0000 C CNN
F 1 "USBLC6-2SC6" H 7350 5626 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 8000 5600 50  0001 C CNN
F 3 "" H 7100 5600 50  0001 C CNN
	1    7350 5250
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:USBLC6-2SC6 U1201
U 1 1 5F3C33C9
P 7350 4200
F 0 "U1201" H 7350 4667 50  0000 C CNN
F 1 "USBLC6-2SC6" H 7350 4576 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 8000 4550 50  0001 C CNN
F 3 "" H 7100 4550 50  0001 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:SLESD5Z5V D1201
U 1 1 5F3C7180
P 2650 6600
F 0 "D1201" H 2650 6816 50  0000 C CNN
F 1 "SLESD5Z5V" H 2650 6725 50  0000 C CNN
F 2 "" H 2600 6600 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 2600 6600 50  0001 C CNN
	1    2650 6600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:SLESD5Z5V D1202
U 1 1 5F3C7560
P 2850 6800
F 0 "D1202" H 2850 7016 50  0000 C CNN
F 1 "SLESD5Z5V" H 2850 6925 50  0000 C CNN
F 2 "" H 2800 6800 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 2800 6800 50  0001 C CNN
	1    2850 6800
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:SLESD5Z5V D1203
U 1 1 5F3C7688
P 3100 7050
F 0 "D1203" H 3100 7266 50  0000 C CNN
F 1 "SLESD5Z5V" H 3100 7175 50  0000 C CNN
F 2 "" H 3050 7050 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 3050 7050 50  0001 C CNN
	1    3100 7050
	1    0    0    -1  
$EndComp
Text Notes 6950 5950 0    70   ~ 14
TODO:\n* ESD for USBs
$EndSCHEMATC
