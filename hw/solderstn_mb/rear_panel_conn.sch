EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 22
Title "Backside connectors"
Date "2020-08-14"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2300 2350 0    50   Input ~ 0
CH_A_HEATER_1
Text HLabel 2300 2450 0    50   Input ~ 0
CH_A_HEATER_2
Text HLabel 2250 2650 0    50   Output ~ 0
CH_A_TC1
Text HLabel 2250 2750 0    50   Output ~ 0
CH_A_TC2_KTY
Text HLabel 2250 3100 0    50   Input ~ 0
CH_B_HEATER_1
Text HLabel 2250 3200 0    50   Input ~ 0
CH_B_HEATER_2
Text HLabel 2250 3400 0    50   Output ~ 0
CH_B_TC1
Text HLabel 2250 3500 0    50   Output ~ 0
CH_B_TC2_KTY
Wire Wire Line
	2300 2350 2500 2350
Wire Wire Line
	2300 2450 2500 2450
Wire Wire Line
	2250 2650 2450 2650
Wire Wire Line
	2250 2750 2450 2750
Wire Wire Line
	2250 3100 2450 3100
Wire Wire Line
	2250 3200 2450 3200
Wire Wire Line
	2250 3400 2450 3400
Wire Wire Line
	2250 3500 2450 3500
Text Notes 2400 1500 0    70   ~ 14
Audiojack 3.5mm (sub-PCB)\nDBGUART / SWD (dsub-9?)\nFM-ant (SMA panel-mount) + 12V DC-out (ext. ant.amp)\nUSB1 (device)\nUSB2 (host)\nForce Bootloader/rst\n2x Amphenol Weller-jacks!
Text GLabel 3150 5600 0    50   Output ~ 0
~EXT_RSTn~
Text GLabel 3150 5000 0    50   Output ~ 0
MCU_BOOT0
Text Notes 1750 1850 0    70   ~ 14
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
L Connector:DB9_Male_MountingHoles J1203
U 1 1 5F3A1DC2
P 4350 5200
F 0 "J1203" H 4350 5850 50  0000 C CNN
F 1 "DB9_Male_MountingHoles" V 4600 5200 50  0000 C CNN
F 2 "customlib_mj_fp:DSub9-Kycon_K22X-EP9P-N" H 4350 5200 50  0001 C CNN
F 3 " ~" H 4350 5200 50  0001 C CNN
	1    4350 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01210
U 1 1 5F3B8CBB
P 3800 4800
F 0 "#PWR01210" H 3800 4550 50  0001 C CNN
F 1 "GND" H 3800 4650 50  0000 C CNN
F 2 "" H 3800 4800 50  0001 C CNN
F 3 "" H 3800 4800 50  0001 C CNN
	1    3800 4800
	0    1    1    0   
$EndComp
Text GLabel 1650 5400 0    50   Output ~ 0
DBGUART_RX
Text GLabel 1650 5200 0    50   Input ~ 0
DBGUART_TX
Text GLabel 3150 5100 0    50   Output ~ 0
SWCLK
Text GLabel 3150 5300 0    50   BiDi ~ 0
SWDIO
$Comp
L power:VDD #PWR01211
U 1 1 5F3B9A5E
P 3500 4850
F 0 "#PWR01211" H 3500 4700 50  0001 C CNN
F 1 "VDD" H 3500 5000 50  0000 C CNN
F 2 "" H 3500 4850 50  0001 C CNN
F 3 "" H 3500 4850 50  0001 C CNN
	1    3500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4800 3800 4800
Wire Wire Line
	3500 4850 3500 4900
Wire Wire Line
	3500 4900 4050 4900
$Comp
L power:GND #PWR01214
U 1 1 5F3BB41A
P 4000 5500
F 0 "#PWR01214" H 4000 5250 50  0001 C CNN
F 1 "GND" H 4000 5350 50  0000 C CNN
F 2 "" H 4000 5500 50  0001 C CNN
F 3 "" H 4000 5500 50  0001 C CNN
	1    4000 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 5300 3450 5300
Wire Wire Line
	4050 5600 3150 5600
Wire Wire Line
	4050 5500 4000 5500
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
$Sheet
S 8850 950  550  700 
U 5F907915
F0 "Headphone connector asm" 50
F1 "headphone_carrier.sch" 50
F2 "Audio_R_ch" I R 9400 1050 50 
F3 "Audio_L_ch" I R 9400 1200 50 
F4 "Audio_int_L" O R 9400 1350 50 
F5 "Audio_int_R" O R 9400 1500 50 
$EndSheet
Text HLabel 6800 1250 0    50   Input ~ 0
Audio_L
Text HLabel 7800 1250 2    50   Output ~ 0
Audio_L_int
Text HLabel 6800 1450 0    50   Input ~ 0
Audio_R
Text HLabel 7800 1450 2    50   Output ~ 0
Audio_R_int
Wire Wire Line
	6800 1250 7050 1250
Wire Wire Line
	7550 1250 7800 1250
Wire Wire Line
	7800 1450 7550 1450
Wire Wire Line
	7050 1450 6800 1450
$Comp
L power:GND #PWR01201
U 1 1 5F924C25
P 7000 1350
F 0 "#PWR01201" H 7000 1100 50  0001 C CNN
F 1 "GND" H 7000 1200 50  0000 C CNN
F 2 "" H 7000 1350 50  0001 C CNN
F 3 "" H 7000 1350 50  0001 C CNN
	1    7000 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01202
U 1 1 5F925961
P 7600 1350
F 0 "#PWR01202" H 7600 1100 50  0001 C CNN
F 1 "GND" H 7600 1200 50  0000 C CNN
F 2 "" H 7600 1350 50  0001 C CNN
F 3 "" H 7600 1350 50  0001 C CNN
	1    7600 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 1350 7550 1350
Wire Wire Line
	7050 1350 7000 1350
$Comp
L Device:R_Small R1201
U 1 1 5F929D46
P 9600 1050
F 0 "R1201" V 9550 1150 50  0000 L CNN
F 1 "1k" V 9600 1000 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9600 1050 50  0001 C CNN
F 3 "~" H 9600 1050 50  0001 C CNN
	1    9600 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1202
U 1 1 5F92A4C3
P 9600 1200
F 0 "R1202" V 9550 1300 50  0000 L CNN
F 1 "1k" V 9600 1150 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9600 1200 50  0001 C CNN
F 3 "~" H 9600 1200 50  0001 C CNN
	1    9600 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1203
U 1 1 5F92A665
P 9600 1350
F 0 "R1203" V 9550 1450 50  0000 L CNN
F 1 "1k" V 9600 1300 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9600 1350 50  0001 C CNN
F 3 "~" H 9600 1350 50  0001 C CNN
	1    9600 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1204
U 1 1 5F92A880
P 9600 1500
F 0 "R1204" V 9550 1600 50  0000 L CNN
F 1 "1k" V 9600 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9600 1500 50  0001 C CNN
F 3 "~" H 9600 1500 50  0001 C CNN
	1    9600 1500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01205
U 1 1 5F92BA81
P 9950 1600
F 0 "#PWR01205" H 9950 1350 50  0001 C CNN
F 1 "GND" H 9950 1450 50  0000 C CNN
F 2 "" H 9950 1600 50  0001 C CNN
F 3 "" H 9950 1600 50  0001 C CNN
	1    9950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1050 9950 1050
Wire Wire Line
	9950 1050 9950 1200
Wire Wire Line
	9700 1200 9950 1200
Connection ~ 9950 1200
Wire Wire Line
	9950 1200 9950 1350
Wire Wire Line
	9700 1350 9950 1350
Connection ~ 9950 1350
Wire Wire Line
	9950 1350 9950 1500
Wire Wire Line
	9700 1500 9950 1500
Connection ~ 9950 1500
Wire Wire Line
	9950 1500 9950 1600
Wire Wire Line
	9500 1050 9400 1050
Wire Wire Line
	9400 1200 9500 1200
Wire Wire Line
	9400 1350 9500 1350
Wire Wire Line
	9400 1500 9500 1500
Text Notes 10100 1500 1    50   ~ 0
(Dummies!)
Text Notes 7500 2350 0    50   ~ 10
Headphone 3.5mm connector on\na break-away sub-PCB.\nAudio signals get routed out to\nthe 3.5mm connector, through\nthe plug-switches and optionally\nback to internal speakers conns\nif there's no plug inserted
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
L customlib_mj:74LVC2G17 U1202
U 1 1 5F9A79CF
P 2250 5200
F 0 "U1202" H 2225 5467 50  0000 C CNN
F 1 "74LVC2G17gw" H 2225 5376 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 2250 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2250 5200 50  0001 C CNN
	1    2250 5200
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:74LVC2G17 U1202
U 2 1 5F9A89B3
P 2500 5400
F 0 "U1202" H 2700 5450 50  0000 C CNN
F 1 "74LVC2G17gw" H 2550 5550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 2500 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2500 5400 50  0001 C CNN
	2    2500 5400
	-1   0    0    1   
$EndComp
$Comp
L customlib_mj:74LVC2G17 U1202
U 3 1 5F9A92DC
P 1400 6450
F 0 "U1202" H 1666 6496 50  0000 C CNN
F 1 "74LVC2G17gw" H 1666 6405 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6_Handsoldering" H 1400 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 1400 6450 50  0001 C CNN
	3    1400 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1205
U 1 1 5F9AE0AD
P 2850 5200
F 0 "R1205" V 2800 5300 50  0000 L CNN
F 1 "100" V 2900 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2850 5200 50  0001 C CNN
F 3 "~" H 2850 5200 50  0001 C CNN
	1    2850 5200
	0    -1   1    0   
$EndComp
Wire Wire Line
	2750 5200 2500 5200
Wire Wire Line
	1950 5200 1650 5200
$Comp
L Device:R_Small R1206
U 1 1 5F9B98A1
P 2000 5400
F 0 "R1206" V 1950 5500 50  0000 L CNN
F 1 "100" V 2050 5500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2000 5400 50  0001 C CNN
F 3 "~" H 2000 5400 50  0001 C CNN
	1    2000 5400
	0    -1   1    0   
$EndComp
Wire Wire Line
	2250 5400 2100 5400
Wire Wire Line
	1900 5400 1650 5400
$Comp
L power:VDD #PWR01218
U 1 1 5F9C015F
P 1400 6050
F 0 "#PWR01218" H 1400 5900 50  0001 C CNN
F 1 "VDD" H 1400 6200 50  0000 C CNN
F 2 "" H 1400 6050 50  0001 C CNN
F 3 "" H 1400 6050 50  0001 C CNN
	1    1400 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01220
U 1 1 5F9C062D
P 1400 6900
F 0 "#PWR01220" H 1400 6650 50  0001 C CNN
F 1 "GND" H 1400 6750 50  0000 C CNN
F 2 "" H 1400 6900 50  0001 C CNN
F 3 "" H 1400 6900 50  0001 C CNN
	1    1400 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 6900 1400 6800
Wire Wire Line
	1400 6150 1400 6100
$Comp
L Device:C_Small C1201
U 1 1 5F9C93AD
P 1200 6500
F 0 "C1201" H 1250 6450 50  0000 L CNN
F 1 "100n" H 1250 6550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1200 6500 50  0001 C CNN
F 3 "~" H 1200 6500 50  0001 C CNN
	1    1200 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 6800 1200 6800
Wire Wire Line
	1200 6800 1200 6600
Connection ~ 1400 6800
Wire Wire Line
	1400 6800 1400 6750
Wire Wire Line
	1200 6400 1200 6100
Wire Wire Line
	1200 6100 1400 6100
Connection ~ 1400 6100
Wire Wire Line
	1400 6100 1400 6050
$Comp
L power:GND #PWR01216
U 1 1 5F9D5D95
P 4350 5900
F 0 "#PWR01216" H 4350 5650 50  0001 C CNN
F 1 "GND" H 4350 5750 50  0000 C CNN
F 2 "" H 4350 5900 50  0001 C CNN
F 3 "" H 4350 5900 50  0001 C CNN
	1    4350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5900 4350 5800
$Comp
L Power_Protection:SP0505BAHT D1201
U 1 1 5F9D8F09
P 3550 5950
F 0 "D1201" H 3200 6000 50  0000 R CNN
F 1 "SP0505BAHT" H 3200 5900 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3850 5900 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 3675 6075 50  0001 C CNN
	1    3550 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01219
U 1 1 5F9F5C0C
P 3550 6250
F 0 "#PWR01219" H 3550 6000 50  0001 C CNN
F 1 "GND" H 3550 6100 50  0000 C CNN
F 2 "" H 3550 6250 50  0001 C CNN
F 3 "" H 3550 6250 50  0001 C CNN
	1    3550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6250 3550 6150
Wire Wire Line
	4050 5400 3350 5400
Wire Wire Line
	3350 5750 3350 5400
Connection ~ 3350 5400
Wire Wire Line
	3350 5400 2800 5400
Wire Wire Line
	3450 5750 3450 5300
Connection ~ 3450 5300
Wire Wire Line
	3450 5300 4050 5300
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1201
U 1 1 5FA2CF9B
P 7250 1450
F 0 "J1201" H 7300 1867 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 7300 1776 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 7250 1450 50  0001 C CNN
F 3 "~" H 7250 1450 50  0001 C CNN
	1    7250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01203
U 1 1 5FA2DA97
P 7000 1550
F 0 "#PWR01203" H 7000 1300 50  0001 C CNN
F 1 "GND" H 7000 1400 50  0000 C CNN
F 2 "" H 7000 1550 50  0001 C CNN
F 3 "" H 7000 1550 50  0001 C CNN
	1    7000 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01204
U 1 1 5FA2DDB5
P 7600 1550
F 0 "#PWR01204" H 7600 1300 50  0001 C CNN
F 1 "GND" H 7600 1400 50  0000 C CNN
F 2 "" H 7600 1550 50  0001 C CNN
F 3 "" H 7600 1550 50  0001 C CNN
	1    7600 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 1550 7550 1550
Wire Wire Line
	7050 1550 7000 1550
Text Notes 2550 2750 0    50   ~ 0
5x1 or 4x1 pin picoblade/pico-clasp/micro-clasp..?\ngnd/tc1_reed/gnd/tc2_kty/(ESD ref. pin 5?)
Text Notes 2550 2450 0    50   ~ 0
4x solderable quick-disconnect cable tabs (6.35x0.81), right-angle:\nHT1 / GND / HT2 / GND\n
Text Notes 2550 3500 0    50   ~ 0
5x1 or 4x1 pin picoblade/pico-clasp/micro-clasp..?\ngnd/tc1_reed/gnd/tc2_kty/(ESD ref. pin 5?)
Text Notes 2550 3200 0    50   ~ 0
4x solderable quick-disconnect cable tabs (6.35x0.81), right-angle:\nHT1 / GND / HT2 / GND\n
Text Notes 2650 2300 0    70   ~ 14
ToDo:
NoConn ~ 7050 1650
NoConn ~ 7550 1650
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
	1    0    0    1   
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
P 6500 7200
F 0 "#PWR0101" H 6500 6950 50  0001 C CNN
F 1 "GND" H 6500 7050 50  0000 C CNN
F 2 "" H 6500 7200 50  0001 C CNN
F 3 "" H 6500 7200 50  0001 C CNN
	1    6500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4050 8850 4050
Wire Wire Line
	8850 4150 8550 4150
Wire Wire Line
	6400 7200 6400 7100
Wire Wire Line
	6400 7100 6500 7100
Wire Wire Line
	6500 7100 6500 7200
Wire Wire Line
	3150 5100 3550 5100
Wire Wire Line
	3550 5750 3550 5100
Connection ~ 3550 5100
Wire Wire Line
	3550 5100 4050 5100
Wire Wire Line
	3150 5000 3650 5000
Wire Wire Line
	2950 5200 3750 5200
Wire Wire Line
	3650 5750 3650 5000
Connection ~ 3650 5000
Wire Wire Line
	3650 5000 4050 5000
Wire Wire Line
	3750 5750 3750 5200
Connection ~ 3750 5200
Wire Wire Line
	3750 5200 4050 5200
$EndSCHEMATC
