EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 23
Title "Backside connectors"
Date "2020-08-14"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2000 2550 0    50   Input ~ 0
CH_A_HEATER_1
Text HLabel 2000 2750 0    50   Input ~ 0
CH_A_HEATER_2
Text HLabel 2200 4000 0    50   Output ~ 0
CH_A_TC1
Text HLabel 2200 3800 0    50   Output ~ 0
CH_A_TC2_KTY
Text HLabel 4000 2550 0    50   Input ~ 0
CH_B_HEATER_1
Text HLabel 4000 2750 0    50   Input ~ 0
CH_B_HEATER_2
Text HLabel 4200 4000 0    50   Output ~ 0
CH_B_TC1
Text HLabel 4200 3800 0    50   Output ~ 0
CH_B_TC2_KTY
Text Notes 900  1350 0    70   ~ 14
Audiojack 3.5mm\nDBGUART / SWD (IDC 2x5)\nFM-ant (SMA panel-mount) + 12V DC-out (ext. ant.amp)\nUSB1 (device)\nUSB2 (host)\n2x Amphenol Weller-jacks
Text Notes 900  1700 0    70   ~ 14
Notes:\nRJ45 ethernet - located on ethernet page\n
$Comp
L customlib_mj:USB_B-TE_1734346-1 J1202
U 1 1 5F76B363
P 9150 4050
F 0 "J1202" H 9000 4400 50  0000 L CNN
F 1 "USB_B-TE_1734346-1" V 8850 4050 50  0000 C CNN
F 2 "customlib_mj_fp:TE_1734346" H 9300 4000 50  0001 C CNN
F 3 "https://www.te.com/usa-en/product-1734346-1.html" H 9300 4000 50  0001 C CNN
	1    9150 4050
	-1   0    0    -1  
$EndComp
Text GLabel 7150 5750 0    50   BiDi ~ 0
USB2_DM
Text GLabel 7150 5350 0    50   BiDi ~ 0
USB2_DP
Wire Wire Line
	8550 5500 8950 5500
Wire Wire Line
	8550 5600 8950 5600
$Comp
L power:GND #PWR01209
U 1 1 5F76C43A
P 9150 4600
F 0 "#PWR01209" H 9150 4350 50  0001 C CNN
F 1 "GND" H 9150 4450 50  0000 C CNN
F 2 "" H 9150 4600 50  0001 C CNN
F 3 "" H 9150 4600 50  0001 C CNN
	1    9150 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01217
U 1 1 5F76C9A9
P 9250 6000
F 0 "#PWR01217" H 9250 5750 50  0001 C CNN
F 1 "GND" H 9250 5850 50  0000 C CNN
F 2 "" H 9250 6000 50  0001 C CNN
F 3 "" H 9250 6000 50  0001 C CNN
	1    9250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4450 9150 4500
Wire Wire Line
	9250 5900 9250 5950
Wire Wire Line
	9350 5900 9350 5950
Wire Wire Line
	9350 5950 9250 5950
Connection ~ 9250 5950
Wire Wire Line
	9250 5950 9250 6000
Wire Wire Line
	9250 4450 9250 4500
Wire Wire Line
	9250 4500 9150 4500
Connection ~ 9150 4500
Wire Wire Line
	9150 4500 9150 4600
$Comp
L customlib_mj:VBUS_2 #PWR01213
U 1 1 5F77B5A7
P 8750 5100
F 0 "#PWR01213" H 8750 4950 50  0001 C CNN
F 1 "VBUS_2" H 8765 5273 50  0000 C CNN
F 2 "" H 8750 5100 50  0001 C CNN
F 3 "" H 8750 5100 50  0001 C CNN
	1    8750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5300 8750 5300
Wire Wire Line
	8750 5300 8750 5100
$Comp
L customlib_mj:VBUS #PWR01207
U 1 1 5F77C454
P 8700 3700
F 0 "#PWR01207" H 8700 3550 50  0001 C CNN
F 1 "VBUS" H 8715 3873 50  0000 C CNN
F 2 "" H 8700 3700 50  0001 C CNN
F 3 "" H 8700 3700 50  0001 C CNN
	1    8700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3700 8700 3850
Wire Wire Line
	8700 3850 8850 3850
Text GLabel 7150 3900 0    50   BiDi ~ 0
USB1_DM
Text GLabel 7150 4300 0    50   BiDi ~ 0
USB1_DP
$Comp
L customlib_mj:USBLC6-2SC6 U1203
U 1 1 5F3C08E8
P 7800 5550
F 0 "U1203" H 7800 6017 50  0000 C CNN
F 1 "USBLC6-2SC6" H 7800 5926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 8450 5900 50  0001 C CNN
F 3 "" H 7550 5900 50  0001 C CNN
	1    7800 5550
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:USBLC6-2SC6 U1201
U 1 1 5F3C33C9
P 7800 4100
F 0 "U1201" H 7800 4567 50  0000 C CNN
F 1 "USBLC6-2SC6" H 7800 4476 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 8450 4450 50  0001 C CNN
F 3 "" H 7550 4450 50  0001 C CNN
	1    7800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5500 8550 5350
Wire Wire Line
	8550 5600 8550 5750
Wire Wire Line
	7150 5350 7300 5350
Wire Wire Line
	7150 5750 7300 5750
Wire Wire Line
	8550 5350 8300 5350
Wire Wire Line
	8550 5750 8300 5750
$Comp
L power:GND #PWR01215
U 1 1 5F992016
P 7150 5550
F 0 "#PWR01215" H 7150 5300 50  0001 C CNN
F 1 "GND" H 7150 5400 50  0000 C CNN
F 2 "" H 7150 5550 50  0001 C CNN
F 3 "" H 7150 5550 50  0001 C CNN
	1    7150 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 5550 7300 5550
Wire Wire Line
	8300 5550 8400 5550
Wire Wire Line
	8400 5550 8400 5100
$Comp
L customlib_mj:VBUS_2 #PWR01212
U 1 1 5F995BB7
P 8400 5100
F 0 "#PWR01212" H 8400 4950 50  0001 C CNN
F 1 "VBUS_2" H 8415 5273 50  0000 C CNN
F 2 "" H 8400 5100 50  0001 C CNN
F 3 "" H 8400 5100 50  0001 C CNN
	1    8400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4050 8650 4300
Wire Wire Line
	8650 4300 8300 4300
Wire Wire Line
	8550 4150 8550 3900
Wire Wire Line
	8550 3900 8300 3900
Wire Wire Line
	8300 4100 8400 4100
Wire Wire Line
	8400 4100 8400 3700
$Comp
L customlib_mj:VBUS #PWR01206
U 1 1 5F99E9EF
P 8400 3700
F 0 "#PWR01206" H 8400 3550 50  0001 C CNN
F 1 "VBUS" H 8415 3873 50  0000 C CNN
F 2 "" H 8400 3700 50  0001 C CNN
F 3 "" H 8400 3700 50  0001 C CNN
	1    8400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01208
U 1 1 5F99EC1F
P 7150 4100
F 0 "#PWR01208" H 7150 3850 50  0001 C CNN
F 1 "GND" H 7150 3950 50  0000 C CNN
F 2 "" H 7150 4100 50  0001 C CNN
F 3 "" H 7150 4100 50  0001 C CNN
	1    7150 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 4100 7150 4100
Wire Wire Line
	7150 3900 7300 3900
Wire Wire Line
	7150 4300 7300 4300
$Comp
L power:VDD #PWR01218
U 1 1 5F9C015F
P 1100 5200
F 0 "#PWR01218" H 1100 5050 50  0001 C CNN
F 1 "VDD" H 1100 5350 50  0000 C CNN
F 2 "" H 1100 5200 50  0001 C CNN
F 3 "" H 1100 5200 50  0001 C CNN
	1    1100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01220
U 1 1 5F9C062D
P 1100 6050
F 0 "#PWR01220" H 1100 5800 50  0001 C CNN
F 1 "GND" H 1100 5900 50  0000 C CNN
F 2 "" H 1100 6050 50  0001 C CNN
F 3 "" H 1100 6050 50  0001 C CNN
	1    1100 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6050 1100 5950
Wire Wire Line
	1100 5300 1100 5250
$Comp
L Device:C_Small C1201
U 1 1 5F9C93AD
P 900 5650
F 0 "C1201" H 950 5600 50  0000 L CNN
F 1 "100n" H 950 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 900 5650 50  0001 C CNN
F 3 "~" H 900 5650 50  0001 C CNN
	1    900  5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 5950 900  5950
Wire Wire Line
	900  5950 900  5750
Connection ~ 1100 5950
Wire Wire Line
	1100 5950 1100 5900
Wire Wire Line
	900  5550 900  5250
Wire Wire Line
	900  5250 1100 5250
Connection ~ 1100 5250
Wire Wire Line
	1100 5250 1100 5200
$Comp
L Power_Protection:SP0505BAHT D1201
U 1 1 5F9D8F09
P 4250 6300
F 0 "D1201" H 3900 6250 50  0000 R CNN
F 1 "SP0505BAHT" H 4150 6150 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4550 6250 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 4375 6425 50  0001 C CNN
	1    4250 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01219
U 1 1 5F9F5C0C
P 4250 6600
F 0 "#PWR01219" H 4250 6350 50  0001 C CNN
F 1 "GND" H 4250 6450 50  0000 C CNN
F 2 "" H 4250 6600 50  0001 C CNN
F 3 "" H 4250 6600 50  0001 C CNN
	1    4250 6600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:USB_A-CUI-UJ2-AH-1-SMT J1204
U 1 1 5F7D7CD9
P 9250 5500
F 0 "J1204" H 9200 5850 50  0000 L CNN
F 1 "USB_A-CUI-UJ2-AH-1-SMT" V 9000 4950 50  0000 L CNN
F 2 "customlib_mj_fp:CUI-UJ2_AH_1_SMT" H 9400 5450 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/interconnect/connectors/usb-connectors/uj2-ah-smt-series/uj2-ah-1-smt" H 9400 5450 50  0001 C CNN
	1    9250 5500
	-1   0    0    -1  
$EndComp
$Comp
L customlib_mj:Molex_NanoFit-1x02 J1205
U 1 1 5F7E9080
P 6350 7300
F 0 "J1205" H 6350 7500 50  0000 C CNN
F 1 "Molex_NanoFit-1x02" V 6600 7300 50  0000 C CNN
F 2 "customlib_mj_fp:Molex_NanoFit_105430-1102_1x02_P2.50mm_Horizontal" H 6350 7300 50  0001 C CNN
F 3 "https://www.molex.com/molex/products/part-detail/pcb_headers/1054301102" H 6350 7300 50  0001 C CNN
	1    6350 7300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01222
U 1 1 5F7EA1DC
P 6100 7500
F 0 "#PWR01222" H 6100 7250 50  0001 C CNN
F 1 "GND" H 6100 7350 50  0000 C CNN
F 2 "" H 6100 7500 50  0001 C CNN
F 3 "" H 6100 7500 50  0001 C CNN
	1    6100 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 7500 6100 7450
Wire Wire Line
	6100 7350 6250 7350
$Comp
L customlib_mj:VIN #PWR01221
U 1 1 5F7FDE13
P 6100 7100
F 0 "#PWR01221" H 6100 6950 50  0001 C CNN
F 1 "VIN" H 6100 7250 50  0000 C CNN
F 2 "" H 6100 7100 50  0001 C CNN
F 3 "" H 6100 7100 50  0001 C CNN
	1    6100 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 7250 6100 7250
Wire Wire Line
	6100 7250 6100 7150
$Comp
L Device:C_Small C1202
U 1 1 5F80162E
P 5900 7300
F 0 "C1202" H 5950 7250 50  0000 L CNN
F 1 "100n" H 5950 7350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5900 7300 50  0001 C CNN
F 3 "~" H 5900 7300 50  0001 C CNN
	1    5900 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 7200 5900 7150
Wire Wire Line
	5900 7150 6100 7150
Connection ~ 6100 7150
Wire Wire Line
	6100 7150 6100 7100
Wire Wire Line
	5900 7400 5900 7450
Wire Wire Line
	5900 7450 6100 7450
Connection ~ 6100 7450
Wire Wire Line
	6100 7450 6100 7350
Text Notes 5450 6850 0    70   ~ 14
FM-ant + 12V DC-out\nfor ext. ant.amp.
$Comp
L power:GND #PWR0101
U 1 1 5F8779FF
P 6450 7500
F 0 "#PWR0101" H 6450 7250 50  0001 C CNN
F 1 "GND" H 6450 7350 50  0000 C CNN
F 2 "" H 6450 7500 50  0001 C CNN
F 3 "" H 6450 7500 50  0001 C CNN
	1    6450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4050 8850 4050
Wire Wire Line
	8850 4150 8550 4150
Wire Wire Line
	6450 7500 6450 7400
Wire Wire Line
	6450 7400 6400 7400
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1203
U 1 1 5FA2EA12
P 4200 5350
F 0 "J1203" H 4250 5700 50  0000 C CNN
F 1 "IDC_2x5" H 4250 5050 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Horizontal" H 4200 5350 50  0001 C CNN
F 3 "~" H 4200 5350 50  0001 C CNN
	1    4200 5350
	1    0    0    -1  
$EndComp
Text GLabel 2350 5750 0    50   Output ~ 0
~EXT_RSTn~
$Comp
L power:GND #PWR01211
U 1 1 5FA30F07
P 4600 5650
F 0 "#PWR01211" H 4600 5400 50  0001 C CNN
F 1 "GND" H 4600 5500 50  0000 C CNN
F 2 "" H 4600 5650 50  0001 C CNN
F 3 "" H 4600 5650 50  0001 C CNN
	1    4600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5550 4600 5550
Wire Wire Line
	4600 5550 4600 5650
Wire Wire Line
	4500 5150 4600 5150
Connection ~ 4600 5550
$Comp
L power:VDD #PWR01210
U 1 1 5FA523A6
P 3900 4950
F 0 "#PWR01210" H 3900 4800 50  0001 C CNN
F 1 "VDD" H 3900 5100 50  0000 C CNN
F 2 "" H 3900 4950 50  0001 C CNN
F 3 "" H 3900 4950 50  0001 C CNN
	1    3900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4950 3900 5150
Wire Wire Line
	3900 5150 4000 5150
Text GLabel 2350 5150 0    50   Output ~ 0
MCU_BOOT0
Text GLabel 2000 5350 0    50   Output ~ 0
DBGUART_RX
Text GLabel 2000 5550 0    50   Input ~ 0
DBGUART_TX
$Comp
L customlib_mj:74LVC2G17 U1202
U 1 1 5FA66929
P 2950 5350
F 0 "U1202" H 3125 5275 50  0000 C CNN
F 1 "74LVC2G17gw" H 2900 5200 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 2950 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2950 5350 50  0001 C CNN
	1    2950 5350
	-1   0    0    1   
$EndComp
$Comp
L customlib_mj:74LVC2G17 U1202
U 3 1 5FA67D45
P 1100 5600
F 0 "U1202" H 1250 5600 50  0000 C CNN
F 1 "74LVC2G17gw" H 1400 5800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 1100 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 1100 5600 50  0001 C CNN
	3    1100 5600
	1    0    0    1   
$EndComp
Wire Wire Line
	3250 5350 3550 5350
Wire Wire Line
	2700 5350 2350 5350
Wire Wire Line
	2150 5350 2000 5350
$Comp
L customlib_mj:74LVC2G17 U1202
U 2 1 5FA81986
P 2550 5550
F 0 "U1202" H 2650 5650 50  0000 C CNN
F 1 "74LVC2G17gw" H 2725 5450 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 2550 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2550 5550 50  0001 C CNN
	2    2550 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5250 3400 5250
Wire Wire Line
	3300 5250 3300 5150
Wire Wire Line
	3300 5150 2350 5150
Wire Wire Line
	4000 5550 3850 5550
Wire Wire Line
	3850 5550 3850 5750
Wire Wire Line
	3850 5750 3750 5750
$Comp
L Device:R_Small R1206
U 1 1 5FAA6D7E
P 3150 5550
F 0 "R1206" V 3225 5425 50  0000 L CNN
F 1 "100" V 3075 5475 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3150 5550 50  0001 C CNN
F 3 "~" H 3150 5550 50  0001 C CNN
	1    3150 5550
	0    1    -1   0   
$EndComp
Wire Wire Line
	2000 5550 2250 5550
Wire Wire Line
	2800 5550 3050 5550
Wire Wire Line
	3250 5550 3300 5550
Wire Wire Line
	3300 5550 3300 5450
Wire Wire Line
	3300 5450 3650 5450
Wire Wire Line
	5250 5450 4800 5450
Text GLabel 5250 5450 2    50   BiDi ~ 0
SWDIO
Wire Wire Line
	4500 5250 4950 5250
Text GLabel 5250 5250 2    50   Output ~ 0
SWCLK
Wire Wire Line
	4800 5450 4800 5950
Wire Wire Line
	4800 5950 4350 5950
Wire Wire Line
	4350 5950 4350 6100
Wire Wire Line
	4800 5450 4500 5450
Wire Wire Line
	4950 5250 4950 6050
Wire Wire Line
	4950 6050 4450 6050
Wire Wire Line
	4450 6050 4450 6100
Wire Wire Line
	4950 5250 5250 5250
Wire Wire Line
	3750 5750 3750 5850
Wire Wire Line
	3750 5850 4250 5850
Wire Wire Line
	4250 5850 4250 6100
Connection ~ 3750 5750
Wire Wire Line
	3750 5750 2350 5750
Wire Wire Line
	3650 5450 3650 5950
Wire Wire Line
	3650 5950 4150 5950
Wire Wire Line
	4150 5950 4150 6100
Connection ~ 3650 5450
Wire Wire Line
	3650 5450 4000 5450
Wire Wire Line
	3550 5350 3550 6050
Wire Wire Line
	3550 6050 4050 6050
Wire Wire Line
	4050 6050 4050 6100
Connection ~ 3550 5350
Wire Wire Line
	3550 5350 4000 5350
Wire Wire Line
	4250 6500 4250 6600
Text GLabel 5200 5350 2    50   Input ~ 0
DBGLEDn
$Comp
L customlib_mj:SLESD5Z5V D1202
U 1 1 5FC3EF5B
P 3400 6150
F 0 "D1202" V 3350 6050 50  0000 R CNN
F 1 "SLESD5Z5V" V 3500 5900 50  0000 C CNN
F 2 "customlib_mj_fp:D_SOD-523" H 3350 6150 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 3350 6150 50  0001 C CNN
	1    3400 6150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01214
U 1 1 5FC4049C
P 3400 6350
F 0 "#PWR01214" H 3400 6100 50  0001 C CNN
F 1 "GND" H 3400 6200 50  0000 C CNN
F 2 "" H 3400 6350 50  0001 C CNN
F 3 "" H 3400 6350 50  0001 C CNN
	1    3400 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6350 3400 6250
Wire Wire Line
	3400 6050 3400 5250
Connection ~ 3400 5250
Wire Wire Line
	3400 5250 3300 5250
$Comp
L customlib_mj:SLESD5Z5V D1203
U 1 1 5FC4BECB
P 5100 6150
F 0 "D1203" V 5054 6440 50  0000 C CNN
F 1 "SLESD5Z5V" V 5145 6440 50  0000 C CNN
F 2 "customlib_mj_fp:D_SOD-523" H 5050 6150 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 5050 6150 50  0001 C CNN
	1    5100 6150
	0    1    1    0   
$EndComp
Connection ~ 4800 5450
Wire Wire Line
	4600 5150 4600 5550
Connection ~ 4950 5250
Wire Wire Line
	5200 5350 5100 5350
Wire Wire Line
	5100 6050 5100 5350
Connection ~ 5100 5350
Wire Wire Line
	5100 5350 4500 5350
$Comp
L power:GND #PWR01216
U 1 1 5FC692E7
P 5100 6350
F 0 "#PWR01216" H 5100 6100 50  0001 C CNN
F 1 "GND" H 5100 6200 50  0000 C CNN
F 2 "" H 5100 6350 50  0001 C CNN
F 3 "" H 5100 6350 50  0001 C CNN
	1    5100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6350 5100 6250
$Comp
L Device:R_Small R1205
U 1 1 5FA65C16
P 2250 5350
F 0 "R1205" V 2175 5250 50  0000 L CNN
F 1 "100" V 2325 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2250 5350 50  0001 C CNN
F 3 "~" H 2250 5350 50  0001 C CNN
	1    2250 5350
	0    -1   1    0   
$EndComp
Text Notes 1700 6600 0    70   ~ 14
Externally accessible Debug\nand bootstrap connector
$Comp
L Device:R_Small R?
U 1 1 5FA36C17
P 8650 1250
AR Path="/5FAFD5BA/5FA36C17" Ref="R?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA36C17" Ref="R?"  Part="1" 
AR Path="/5F4730B9/5FA36C17" Ref="R1201"  Part="1" 
F 0 "R1201" V 8550 1250 50  0000 C CNN
F 1 "100" V 8750 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8650 1250 50  0001 C CNN
F 3 "~" H 8650 1250 50  0001 C CNN
	1    8650 1250
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5FA36C1D
P 8300 1250
AR Path="/5FAFD5BA/5FA36C1D" Ref="C?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA36C1D" Ref="C?"  Part="1" 
AR Path="/5F4730B9/5FA36C1D" Ref="C1203"  Part="1" 
F 0 "C1203" V 8400 1250 50  0000 C CNN
F 1 "47u/10V" V 8200 1050 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 8300 1250 50  0001 C CNN
F 3 "~" H 8300 1250 50  0001 C CNN
	1    8300 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 1250 8550 1250
$Comp
L Device:R_Small R?
U 1 1 5FA36C24
P 8650 1550
AR Path="/5FAFD5BA/5FA36C24" Ref="R?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA36C24" Ref="R?"  Part="1" 
AR Path="/5F4730B9/5FA36C24" Ref="R1202"  Part="1" 
F 0 "R1202" V 8550 1550 50  0000 C CNN
F 1 "100" V 8750 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8650 1550 50  0001 C CNN
F 3 "~" H 8650 1550 50  0001 C CNN
	1    8650 1550
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5FA36C2A
P 8300 1550
AR Path="/5FAFD5BA/5FA36C2A" Ref="C?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA36C2A" Ref="C?"  Part="1" 
AR Path="/5F4730B9/5FA36C2A" Ref="C1204"  Part="1" 
F 0 "C1204" V 8400 1550 50  0000 C CNN
F 1 "47u/10V" V 8200 1350 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 8300 1550 50  0001 C CNN
F 3 "~" H 8300 1550 50  0001 C CNN
	1    8300 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 1550 8550 1550
$Comp
L customlib_mj:SJ-3571N J?
U 1 1 5FA36C31
P 9950 1400
AR Path="/5FAFD5BA/5FA36C31" Ref="J?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA36C31" Ref="J?"  Part="1" 
AR Path="/5F4730B9/5FA36C31" Ref="J1201"  Part="1" 
F 0 "J1201" H 9374 1474 50  0000 C CNN
F 1 "SJ-3571N" H 9374 1383 50  0000 C CNN
F 2 "customlib_mj_fp:SJ-3571N" H 9950 1400 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/interconnect/connectors/audio-connectors/jacks/sj-357xn-series/sj-3571n" H 9950 1400 50  0001 C CNN
	1    9950 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 1550 8850 1550
Wire Wire Line
	8750 1250 9500 1250
Text Notes 9550 1000 0    50   ~ 10
Sleeve (1) : Gnd\nRing (3) : R ch\nTip (2) : L ch
$Comp
L power:GND #PWR?
U 1 1 5FA36C3A
P 8850 950
AR Path="/5FAFD5BA/5FA36C3A" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA36C3A" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5FA36C3A" Ref="#PWR01201"  Part="1" 
F 0 "#PWR01201" H 8850 700 50  0001 C CNN
F 1 "GND" H 8850 800 50  0000 C CNN
F 2 "" H 8850 950 50  0001 C CNN
F 3 "" H 8850 950 50  0001 C CNN
	1    8850 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1150 9050 1150
Wire Wire Line
	9050 1150 9050 850 
Wire Wire Line
	9050 850  8850 850 
Wire Wire Line
	8850 850  8850 950 
Text Label 9300 1550 2    50   ~ 0
L_ch_out
Text Label 9300 1250 2    50   ~ 0
R_ch_out
$Comp
L customlib_mj:SJ-3571N J?
U 2 1 5FA36C46
P 7650 900
AR Path="/5F4730B9/5F907915/5FA36C46" Ref="J?"  Part="2" 
AR Path="/5F4730B9/5FA36C46" Ref="J1201"  Part="2" 
F 0 "J1201" V 7650 700 50  0000 R CNN
F 1 "SJ-3571N" V 7550 900 50  0000 C CNN
F 2 "customlib_mj_fp:SJ-3571N" H 7650 900 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/interconnect/connectors/audio-connectors/jacks/sj-357xn-series/sj-3571n" H 7650 900 50  0001 C CNN
	2    7650 900 
	0    -1   1    0   
$EndComp
$Comp
L customlib_mj:SJ-3571N J?
U 3 1 5FA36C4C
P 7650 1900
AR Path="/5F4730B9/5F907915/5FA36C4C" Ref="J?"  Part="3" 
AR Path="/5F4730B9/5FA36C4C" Ref="J1201"  Part="3" 
F 0 "J1201" V 7650 1700 50  0000 R CNN
F 1 "SJ-3571N" V 7550 1850 50  0000 C CNN
F 2 "customlib_mj_fp:SJ-3571N" H 7650 1900 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/interconnect/connectors/audio-connectors/jacks/sj-357xn-series/sj-3571n" H 7650 1900 50  0001 C CNN
	3    7650 1900
	0    -1   -1   0   
$EndComp
Text HLabel 7250 1250 0    50   Input ~ 0
Audio_R
Text HLabel 7250 1550 0    50   Input ~ 0
Audio_L
Text HLabel 7250 1650 0    50   Output ~ 0
Audio_L_int
Text HLabel 7250 1150 0    50   Output ~ 0
Audio_R_int
Wire Wire Line
	7750 1050 7750 1250
Wire Wire Line
	7750 1250 8200 1250
Wire Wire Line
	7750 1750 7750 1550
Wire Wire Line
	7750 1550 8200 1550
Wire Wire Line
	7250 1250 7650 1250
Wire Wire Line
	7650 1250 7650 1050
Wire Wire Line
	7250 1550 7650 1550
Wire Wire Line
	7650 1550 7650 1750
Wire Wire Line
	7550 1050 7550 1150
Wire Wire Line
	7550 1150 7250 1150
Wire Wire Line
	7550 1750 7550 1650
Wire Wire Line
	7550 1650 7250 1650
Text Label 7650 1250 2    50   ~ 0
R_ch
Text Label 7650 1550 2    50   ~ 0
L_ch
Text Label 7550 1650 2    50   ~ 0
L_int
Text Label 7550 1150 2    50   ~ 0
R_int
$Comp
L customlib_mj:SLESD5Z5V D?
U 1 1 5FA36C66
P 8850 2000
AR Path="/5F4730B9/5F907915/5FA36C66" Ref="D?"  Part="1" 
AR Path="/5F4730B9/5FA36C66" Ref="D1204"  Part="1" 
F 0 "D1204" V 8804 2290 50  0000 C CNN
F 1 "SLESD5Z5V" V 8895 2290 50  0000 C CNN
F 2 "customlib_mj_fp:D_SOD-523" H 8800 2000 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 8800 2000 50  0001 C CNN
	1    8850 2000
	0    1    1    0   
$EndComp
$Comp
L customlib_mj:SLESD5Z5V D?
U 1 1 5FA36C6C
P 9500 2000
AR Path="/5F4730B9/5F907915/5FA36C6C" Ref="D?"  Part="1" 
AR Path="/5F4730B9/5FA36C6C" Ref="D1205"  Part="1" 
F 0 "D1205" V 9454 2290 50  0000 C CNN
F 1 "SLESD5Z5V" V 9545 2290 50  0000 C CNN
F 2 "customlib_mj_fp:D_SOD-523" H 9450 2000 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 9450 2000 50  0001 C CNN
	1    9500 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 1900 8850 1550
Connection ~ 8850 1550
Wire Wire Line
	8850 1550 9650 1550
Wire Wire Line
	9500 1900 9500 1250
Connection ~ 9500 1250
Wire Wire Line
	9500 1250 9650 1250
$Comp
L power:GND #PWR?
U 1 1 5FA36C78
P 8850 2250
AR Path="/5FAFD5BA/5FA36C78" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA36C78" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5FA36C78" Ref="#PWR01202"  Part="1" 
F 0 "#PWR01202" H 8850 2000 50  0001 C CNN
F 1 "GND" H 8850 2100 50  0000 C CNN
F 2 "" H 8850 2250 50  0001 C CNN
F 3 "" H 8850 2250 50  0001 C CNN
	1    8850 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA36C7E
P 9500 2250
AR Path="/5FAFD5BA/5FA36C7E" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA36C7E" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5FA36C7E" Ref="#PWR01203"  Part="1" 
F 0 "#PWR01203" H 9500 2000 50  0001 C CNN
F 1 "GND" H 9500 2100 50  0000 C CNN
F 2 "" H 9500 2250 50  0001 C CNN
F 3 "" H 9500 2250 50  0001 C CNN
	1    9500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2250 9500 2100
Wire Wire Line
	8850 2250 8850 2100
NoConn ~ 9650 1350
NoConn ~ 9650 1450
Text Notes 7100 2750 0    50   ~ 10
Audio signals get routed out to\nthe 3.5mm connector, through\nthe plug-switches and optionally\nback to internal speakers conns\nif there's no plug inserted
Text Notes 6900 2300 0    70   ~ 14
Headphone 3.5mm connector :
$Comp
L power:GND #PWR01223
U 1 1 5FA64C5B
P 2500 2900
F 0 "#PWR01223" H 2500 2650 50  0001 C CNN
F 1 "GND" H 2500 2750 50  0000 C CNN
F 2 "" H 2500 2900 50  0001 C CNN
F 3 "" H 2500 2900 50  0001 C CNN
	1    2500 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01204
U 1 1 5FA65CB0
P 4500 2900
F 0 "#PWR01204" H 4500 2650 50  0001 C CNN
F 1 "GND" H 4500 2750 50  0000 C CNN
F 2 "" H 4500 2900 50  0001 C CNN
F 3 "" H 4500 2900 50  0001 C CNN
	1    4500 2900
	1    0    0    -1  
$EndComp
$Comp
L power:Earth_Protective #PWR01205
U 1 1 5FB6357D
P 4600 4200
F 0 "#PWR01205" H 4850 3950 50  0001 C CNN
F 1 "Earth_Protective" H 5050 4050 50  0001 C CNN
F 2 "" H 4600 4100 50  0001 C CNN
F 3 "~" H 4600 4100 50  0001 C CNN
	1    4600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:Earth_Protective #PWR01224
U 1 1 5FB65A2F
P 2600 4200
F 0 "#PWR01224" H 2850 3950 50  0001 C CNN
F 1 "Earth_Protective" H 3050 4050 50  0001 C CNN
F 2 "" H 2600 4100 50  0001 C CNN
F 3 "~" H 2600 4100 50  0001 C CNN
	1    2600 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1204
U 1 1 5FB6640C
P 4800 4100
F 0 "R1204" V 4850 4000 50  0000 R CNN
F 1 "1M" V 4800 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4800 4100 50  0001 C CNN
F 3 "~" H 4800 4100 50  0001 C CNN
	1    4800 4100
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small R1203
U 1 1 5FB679BD
P 2800 4100
F 0 "R1203" V 2850 4000 50  0000 R CNN
F 1 "1M" V 2800 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 4100 50  0001 C CNN
F 3 "~" H 2800 4100 50  0001 C CNN
	1    2800 4100
	0    1    -1   0   
$EndComp
Wire Wire Line
	5000 4100 4900 4100
Wire Wire Line
	4600 4200 4600 4100
Wire Wire Line
	4600 4100 4700 4100
Wire Wire Line
	2600 4200 2600 4100
Wire Wire Line
	2600 4100 2700 4100
Wire Wire Line
	2900 4100 3000 4100
Wire Wire Line
	2000 2550 2800 2550
Wire Wire Line
	2000 2750 2800 2750
Wire Wire Line
	2200 3800 3000 3800
Wire Wire Line
	2200 4000 3000 4000
Wire Wire Line
	4000 2550 4800 2550
Wire Wire Line
	4000 2750 4800 2750
Wire Wire Line
	4200 3800 5000 3800
Wire Wire Line
	4200 4000 5000 4000
Text Notes 2850 2200 0    70   ~ 14
7p DIN "Weller connector"\nfor each channel
Text Notes 1350 2450 0    50   ~ 10
PWR: 6.35x0.8 mm quick-connect\ncable-shoe blades.\n(Vertical or angled TBD)
$Comp
L customlib_mj:Conn_WR-FAST_01x03 J1206
U 1 1 5FD22D43
P 3000 2650
F 0 "J1206" H 3000 2900 50  0000 C CNN
F 1 "Conn_WR-FAST_01x03" V 3150 2650 50  0000 C CNN
F 2 "customlib_mj_fp:WR-FAST_508_3_V" H 3000 2650 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/en/em/connectors/wire-to-board/wr-fast" H 3000 2650 50  0001 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Conn_WR-FAST_01x03 J1207
U 1 1 5FD241A6
P 5000 2650
F 0 "J1207" H 5000 2850 50  0000 C CNN
F 1 "Conn_WR-FAST_01x03" V 5150 2650 50  0000 C CNN
F 2 "customlib_mj_fp:WR-FAST_508_3_V" H 5000 2650 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/en/em/connectors/wire-to-board/wr-fast" H 5000 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2650 2500 2650
Wire Wire Line
	2500 2650 2500 2900
Wire Wire Line
	4800 2650 4500 2650
Wire Wire Line
	4500 2650 4500 2900
$Comp
L power:GND #PWR01225
U 1 1 5FDA0230
P 2350 4200
F 0 "#PWR01225" H 2350 3950 50  0001 C CNN
F 1 "GND" H 2350 4050 50  0000 C CNN
F 2 "" H 2350 4200 50  0001 C CNN
F 3 "" H 2350 4200 50  0001 C CNN
	1    2350 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01226
U 1 1 5FDA0685
P 4350 4200
F 0 "#PWR01226" H 4350 3950 50  0001 C CNN
F 1 "GND" H 4350 4050 50  0000 C CNN
F 2 "" H 4350 4200 50  0001 C CNN
F 3 "" H 4350 4200 50  0001 C CNN
	1    4350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4200 2350 3900
Wire Wire Line
	2350 3900 3000 3900
Wire Wire Line
	4350 4200 4350 3900
Wire Wire Line
	4350 3900 5000 3900
$Comp
L Connector_Generic:Conn_01x04 J1209
U 1 1 5FDB4BCB
P 5200 3900
F 0 "J1209" H 5200 4100 50  0000 C CNN
F 1 "Molex_PicoBlade_v4p_0533980471" V 5350 3850 50  0000 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53398-0471_1x04-1MP_P1.25mm_Vertical" H 5200 3900 50  0001 C CNN
F 3 "https://www.molex.com/molex/products/part-detail/pcb_headers/0533980471" H 5200 3900 50  0001 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1208
U 1 1 5FDB5D67
P 3200 3900
F 0 "J1208" H 3200 4100 50  0000 C CNN
F 1 "Molex_PicoBlade_v4p_0533980471" V 3350 3850 50  0000 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53398-0471_1x04-1MP_P1.25mm_Vertical" H 3200 3900 50  0001 C CNN
F 3 "https://www.molex.com/molex/products/part-detail/pcb_headers/0533980471" H 3200 3900 50  0001 C CNN
	1    3200 3900
	1    0    0    -1  
$EndComp
Text Notes 1550 3700 0    50   ~ 10
SENSE: 4p PicoBlade\n
$EndSCHEMATC
