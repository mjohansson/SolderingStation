EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "Front-side and internal connectors"
Date "2020-12-13"
Rev "r0.1"
Comp "MaJo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L customlib_mj:FFC_conn_14p J301
U 1 1 5F469D5D
P 3100 3100
F 0 "J301" H 3512 3146 50  0000 C CNN
F 1 "FFC_conn_14p" H 3512 3055 50  0000 C CNN
F 2 "customlib_mj_fp:FPC_14p_05mm-Molex_5052781433" H 3050 3100 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/687114182122.pdf" H 3050 3100 50  0001 C CNN
	1    3100 3100
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:FFC_conn_14p J302
U 1 1 5F46D565
P 3100 5550
F 0 "J302" H 3512 5596 50  0000 C CNN
F 1 "FFC_conn_14p" H 3512 5505 50  0000 C CNN
F 2 "customlib_mj_fp:FPC_14p_05mm-Molex_5052781433" H 3050 5550 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/687114182122.pdf" H 3050 5550 50  0001 C CNN
	1    3100 5550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J303
U 1 1 5F46E2EB
P 6750 6150
F 0 "J303" H 6750 6300 50  0000 C CNN
F 1 "JST_S2B-PH-SM4-TB" H 7000 5900 50  0000 C CNN
F 2 "customlib_mj_fp:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 6750 6150 50  0001 C CNN
F 3 "" H 6750 6150 50  0001 C CNN
	1    6750 6150
	1    0    0    -1  
$EndComp
Text Notes 4700 7400 0    60   ~ 12
FancyBtn LED connector \n(PWM ctrl low-side; 5V/12V selectable V+)
$Comp
L customlib_mj:FFC_retention_clamp M301
U 1 1 5F4700B4
P 3600 3600
F 0 "M301" H 3600 3825 50  0000 C CNN
F 1 "FFC_retention_clamp" H 3600 3734 50  0000 C CNN
F 2 "customlib_mj_fp:FFC_retention_clamp_14pin_7_5mm" H 3600 3600 50  0001 C CNN
F 3 "" H 3600 3600 50  0001 C CNN
	1    3600 3600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:FFC_retention_clamp M302
U 1 1 5F4709C2
P 3600 6000
F 0 "M302" H 3600 6225 50  0000 C CNN
F 1 "FFC_retention_clamp" H 3600 6134 50  0000 C CNN
F 2 "customlib_mj_fp:FFC_retention_clamp_14pin_7_5mm" H 3600 6000 50  0001 C CNN
F 3 "" H 3600 6000 50  0001 C CNN
	1    3600 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R308
U 1 1 5F4C1178
P 6050 5900
F 0 "R308" H 6109 5946 50  0000 L CNN
F 1 "0R" H 6109 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6050 5900 50  0001 C CNN
F 3 "~" H 6050 5900 50  0001 C CNN
	1    6050 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0307
U 1 1 5F4C1AC2
P 2750 3850
F 0 "#PWR0307" H 2750 3600 50  0001 C CNN
F 1 "GND" H 2750 3700 50  0000 C CNN
F 2 "" H 2750 3850 50  0001 C CNN
F 3 "" H 2750 3850 50  0001 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R302
U 1 1 5F4C775D
P 4500 1000
F 0 "R302" H 4550 1050 50  0000 L CNN
F 1 "10k" H 4550 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4500 1000 50  0001 C CNN
F 3 "~" H 4500 1000 50  0001 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R301
U 1 1 5F4C7763
P 5300 950
F 0 "R301" V 5375 950 50  0000 L CNN
F 1 "20k" V 5300 875 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 950 50  0001 C CNN
F 3 "~" H 5300 950 50  0001 C CNN
	1    5300 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R306
U 1 1 5F4C7769
P 5300 1050
F 0 "R306" V 5225 1050 50  0000 L CNN
F 1 "20k" V 5300 975 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 1050 50  0001 C CNN
F 3 "~" H 5300 1050 50  0001 C CNN
	1    5300 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R303
U 1 1 5F4C776F
P 4850 1000
F 0 "R303" H 4900 1050 50  0000 L CNN
F 1 "20k" H 4900 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4850 1000 50  0001 C CNN
F 3 "~" H 4850 1000 50  0001 C CNN
	1    4850 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R305
U 1 1 5F4C7775
P 5900 1000
F 0 "R305" H 5950 1050 50  0000 L CNN
F 1 "160k" H 5925 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 1000 50  0001 C CNN
F 3 "~" H 5900 1000 50  0001 C CNN
	1    5900 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R304
U 1 1 5F4C777B
P 5800 1000
F 0 "R304" H 5900 1050 50  0000 L CNN
F 1 "160k" H 5825 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5800 1000 50  0001 C CNN
F 3 "~" H 5800 1000 50  0001 C CNN
	1    5800 1000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 900  4500 850 
Wire Wire Line
	4500 850  4700 850 
Wire Wire Line
	5900 850  5900 900 
Wire Wire Line
	5800 900  5800 850 
Connection ~ 5800 850 
Wire Wire Line
	5800 850  5900 850 
Wire Wire Line
	5200 950  5100 950 
Wire Wire Line
	5100 950  5100 850 
Connection ~ 5100 850 
Wire Wire Line
	5100 850  5800 850 
Wire Wire Line
	5400 950  5450 950 
Wire Wire Line
	4850 900  4850 850 
Connection ~ 4850 850 
Wire Wire Line
	4850 850  5100 850 
Wire Wire Line
	4500 1100 4500 1200
Wire Wire Line
	5900 1100 5900 1200
Connection ~ 5900 1200
Wire Wire Line
	5900 1200 6500 1200
Wire Wire Line
	5800 1100 5800 1200
Connection ~ 5800 1200
Wire Wire Line
	5800 1200 5900 1200
Wire Wire Line
	4500 1200 4850 1200
Wire Wire Line
	5450 950  5450 1000
Wire Wire Line
	5450 1000 5150 1000
Wire Wire Line
	5150 1000 5150 1050
Wire Wire Line
	5150 1050 5200 1050
Wire Wire Line
	5400 1050 5500 1050
Wire Wire Line
	5500 1050 5500 1200
Connection ~ 5500 1200
Wire Wire Line
	5500 1200 5800 1200
Wire Wire Line
	4850 1100 4850 1200
Connection ~ 4850 1200
Wire Wire Line
	4850 1200 5100 1200
Text Notes 4300 1300 0    50   ~ 0
[Msb:10k]
Text Notes 4700 1300 0    50   ~ 0
[b2:20k]
Text Notes 5200 1300 0    50   ~ 0
[b1:40k]
Text Notes 5700 1300 0    50   ~ 0
[Lsb:80k]
$Comp
L Device:R_Small R307
U 1 1 5F4C77AD
P 5200 1500
F 0 "R307" H 5250 1550 50  0000 L CNN
F 1 "27k" H 5250 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5200 1500 50  0001 C CNN
F 3 "~" H 5200 1500 50  0001 C CNN
	1    5200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C302
U 1 1 5F4C77B3
P 5000 1500
F 0 "C302" H 4714 1454 50  0000 L CNN
F 1 "100n" H 4714 1545 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5000 1500 50  0001 C CNN
F 3 "~" H 5000 1500 50  0001 C CNN
	1    5000 1500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0305
U 1 1 5F4C77B9
P 5100 1700
F 0 "#PWR0305" H 5100 1450 50  0001 C CNN
F 1 "GND" H 5100 1550 50  0000 C CNN
F 2 "" H 5100 1700 50  0001 C CNN
F 3 "" H 5100 1700 50  0001 C CNN
	1    5100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1350 5150 1300
Wire Wire Line
	5150 1300 5100 1300
Wire Wire Line
	5100 1300 5100 1200
Connection ~ 5100 1200
Wire Wire Line
	5100 1200 5500 1200
Wire Wire Line
	5000 1600 5000 1650
Wire Wire Line
	5000 1650 5100 1650
Wire Wire Line
	5200 1650 5200 1600
Wire Wire Line
	5100 1650 5100 1700
Connection ~ 5100 1650
Wire Wire Line
	5100 1650 5200 1650
Wire Wire Line
	4700 750  4700 850 
Connection ~ 4700 850 
Wire Wire Line
	4700 850  4850 850 
Text Notes 4850 800  0    50   ~ 0
Rx(4-bit) range=[open, 80k, ..., 5,33k]\nV_hwid(min) = 27/(80+27)*3.0V = 0,76V\nV_hwid(max) = 27(5.33+27)*3.0V = 2,51V
Wire Wire Line
	5100 1300 5050 1300
Wire Wire Line
	5050 1300 5000 1350
Connection ~ 5100 1300
Wire Wire Line
	5200 1400 5200 1350
Wire Wire Line
	5000 1400 5000 1350
Text Notes 5650 1800 0    60   ~ 12
Mainboard HWID (analog 4-bit)
Wire Notes Line
	4250 1900 8450 1900
Wire Notes Line
	8450 1900 8450 550 
Wire Notes Line
	8450 550  4250 550 
Wire Notes Line
	4250 550  4250 1900
Wire Wire Line
	6500 1000 6400 1000
Wire Wire Line
	6400 1000 6400 850 
Wire Wire Line
	7150 850  7150 1100
Wire Wire Line
	7150 1100 7100 1100
Wire Wire Line
	6400 850  7150 850 
$Comp
L power:VDD #PWR0301
U 1 1 5F4DCE05
P 4700 750
F 0 "#PWR0301" H 4700 600 50  0001 C CNN
F 1 "VDD" H 4700 900 50  0000 C CNN
F 2 "" H 4700 750 50  0001 C CNN
F 3 "" H 4700 750 50  0001 C CNN
	1    4700 750 
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0303
U 1 1 5F4DD695
P 6850 1350
F 0 "#PWR0303" H 6850 1200 50  0001 C CNN
F 1 "VDD" H 6850 1500 50  0000 C CNN
F 2 "" H 6850 1350 50  0001 C CNN
F 3 "" H 6850 1350 50  0001 C CNN
	1    6850 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1350 6800 1350
Wire Wire Line
	6800 1350 6800 1300
Wire Wire Line
	7150 1100 7250 1100
Connection ~ 7150 1100
$Comp
L power:VDD #PWR0302
U 1 1 5F4EB6F8
P 8000 850
F 0 "#PWR0302" H 8000 700 50  0001 C CNN
F 1 "VDD" H 8000 1000 50  0000 C CNN
F 2 "" H 8000 850 50  0001 C CNN
F 3 "" H 8000 850 50  0001 C CNN
	1    8000 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0304
U 1 1 5F4EBDBE
P 8000 1650
F 0 "#PWR0304" H 8000 1400 50  0001 C CNN
F 1 "GND" H 8000 1500 50  0000 C CNN
F 2 "" H 8000 1650 50  0001 C CNN
F 3 "" H 8000 1650 50  0001 C CNN
	1    8000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1650 8000 1600
Wire Wire Line
	8000 950  8000 900 
$Comp
L Device:C_Small C301
U 1 1 5F4EF6FD
P 8150 1250
F 0 "C301" H 8242 1296 50  0000 L CNN
F 1 "100n" H 8242 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8150 1250 50  0001 C CNN
F 3 "~" H 8150 1250 50  0001 C CNN
	1    8150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1600 8150 1600
Wire Wire Line
	8150 1600 8150 1350
Connection ~ 8000 1600
Wire Wire Line
	8000 1600 8000 1550
Wire Wire Line
	8150 1150 8150 900 
Wire Wire Line
	8150 900  8000 900 
Connection ~ 8000 900 
Wire Wire Line
	8000 900  8000 850 
Wire Wire Line
	3000 2450 2650 2450
Wire Wire Line
	3000 2750 2650 2750
Wire Wire Line
	3000 2850 1900 2850
Wire Wire Line
	3000 3050 1900 3050
Wire Wire Line
	3000 3250 1900 3250
Wire Wire Line
	3000 3450 1900 3450
Wire Wire Line
	3000 3550 2650 3550
Wire Wire Line
	3000 3750 1900 3750
Wire Wire Line
	3000 2550 2750 2550
Wire Wire Line
	2750 2550 2750 2300
Wire Wire Line
	3000 3650 2750 3650
Wire Wire Line
	3000 4900 2650 4900
Wire Wire Line
	3000 5000 1900 5000
Wire Wire Line
	3000 5100 2650 5100
Wire Wire Line
	3000 5200 1900 5200
Wire Wire Line
	3000 5300 2650 5300
Wire Wire Line
	3000 5400 1900 5400
Wire Wire Line
	3000 5600 2300 5600
Wire Wire Line
	3000 5700 2300 5700
Wire Wire Line
	3000 5900 1900 5900
Wire Wire Line
	3000 6100 2650 6100
$Comp
L power:GND #PWR0311
U 1 1 5F5B25DD
P 2850 6350
F 0 "#PWR0311" H 2850 6100 50  0001 C CNN
F 1 "GND" H 2850 6200 50  0000 C CNN
F 2 "" H 2850 6350 50  0001 C CNN
F 3 "" H 2850 6350 50  0001 C CNN
	1    2850 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4750 2850 5500
Wire Wire Line
	2850 5500 3000 5500
Wire Wire Line
	3000 6000 2850 6000
Wire Wire Line
	2850 6000 2850 6350
$Comp
L customlib_mj:TLV9051SIDBV U301
U 1 1 5F5A8A8B
P 6800 1100
F 0 "U301" H 6534 733 50  0000 L CNN
F 1 "TLV9051SIDBV" H 6534 824 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6" H 6800 1100 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv9051" H 6850 1300 50  0001 C CNN
	1    6800 1100
	1    0    0    1   
$EndComp
$Comp
L customlib_mj:TLV9051SIDBV U301
U 2 1 5F5AF0E9
P 8000 1250
F 0 "U301" H 7950 1300 50  0000 R CNN
F 1 "TLV9051SIDBV" H 7950 1200 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-6" H 8000 1250 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv9051" H 8050 1450 50  0001 C CNN
	2    8000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2650 3000 2650
Connection ~ 2750 3650
Wire Wire Line
	2750 3650 2750 3850
Wire Wire Line
	3000 5800 2850 5800
Wire Wire Line
	2850 5800 2850 5500
Connection ~ 2850 5500
$Comp
L customlib_mj:VDD_OLED #PWR0306
U 1 1 5FB4AE16
P 2750 2300
F 0 "#PWR0306" H 2750 2150 50  0001 C CNN
F 1 "VDD_OLED" H 2750 2450 50  0000 C CNN
F 2 "" H 2750 2300 50  0000 C CNN
F 3 "" H 2750 2300 50  0000 C CNN
	1    2750 2300
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_OLED #PWR0308
U 1 1 5FB4B19C
P 2850 4750
F 0 "#PWR0308" H 2850 4600 50  0001 C CNN
F 1 "VDD_OLED" H 2850 4900 50  0000 C CNN
F 2 "" H 2850 4750 50  0000 C CNN
F 3 "" H 2850 4750 50  0000 C CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
Text Notes 650  2050 0    75   ~ 15
Place vDD_OLED LDO close to FFC connectors
Text GLabel 7250 1100 2    50   Output ~ 0
HWID_MB
Text GLabel 9700 1000 0    50   Input ~ 0
FAN1_PWM
Text GLabel 9700 1200 0    50   Output ~ 0
FAN1_RPM
Wire Wire Line
	9700 1000 9850 1000
Wire Wire Line
	9850 1200 9700 1200
Text GLabel 2650 2450 0    50   Input ~ 0
DISP_D~Cn~
Text GLabel 2650 2750 0    50   Input ~ 0
DISP_FLASH_SCK
Text GLabel 1900 3050 0    50   BiDi ~ 0
I2C1_SDA
Text GLabel 1900 3250 0    50   Input ~ 0
I2C1_SCL
Text GLabel 1900 3450 0    50   Input ~ 0
~DISP_CSn~
Text GLabel 2650 3550 0    50   Output ~ 0
~FP_BTN_1Bn~
Text GLabel 1900 3750 0    50   Output ~ 0
~FP_BTN_1An~
Text GLabel 2650 6100 0    50   Output ~ 0
~FP_BTN_2Bn~
Text GLabel 1900 5900 0    50   Output ~ 0
HWID_FP
Text GLabel 1900 5400 0    50   Output ~ 0
FP_ENC_A
Text GLabel 1900 5200 0    50   Output ~ 0
FP_ENC_B
Text GLabel 2650 5100 0    50   Output ~ 0
~AUX_INTn~
Text GLabel 1900 5000 0    50   Output ~ 0
~FP_ENC_SWn~
Text GLabel 2650 4900 0    50   Input ~ 0
AUX_BOOT0
Text GLabel 2650 5300 0    50   Input ~ 0
~SYS_RSTn~
Text HLabel 2300 5600 0    50   Output ~ 0
AUX_TX
Text HLabel 2300 5700 0    50   Input ~ 0
AUX_RX
Text GLabel 1900 6200 0    50   Output ~ 0
~FP_BTN_2An~
Wire Wire Line
	5350 6650 5650 6650
Text GLabel 5350 6650 0    50   Input ~ 0
PWRBTN_LED_PWM
$Comp
L customlib_mj:VIN #PWR0310
U 1 1 5F3FFD24
P 6250 5450
F 0 "#PWR0310" H 6250 5300 50  0001 C CNN
F 1 "VIN" H 6250 5600 50  0000 C CNN
F 2 "" H 6250 5450 50  0001 C CNN
F 3 "" H 6250 5450 50  0001 C CNN
	1    6250 5450
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VMAIN #PWR0309
U 1 1 5F4002E4
P 5850 5450
F 0 "#PWR0309" H 5850 5300 50  0001 C CNN
F 1 "VMAIN" H 5850 5600 50  0000 C CNN
F 2 "" H 5850 5450 50  0001 C CNN
F 3 "" H 5850 5450 50  0001 C CNN
	1    5850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5450 5850 5550
Wire Wire Line
	5850 5550 5900 5550
Wire Wire Line
	6150 5550 6250 5550
Wire Wire Line
	6250 5550 6250 5450
Wire Wire Line
	6050 6000 6050 6150
Wire Wire Line
	6050 6150 6550 6150
Wire Wire Line
	6050 5800 6050 5700
$Comp
L customlib_mj:DMG1012T Q301
U 1 1 5F4241F8
P 5950 6650
F 0 "Q301" H 6156 6696 50  0000 L CNN
F 1 "DMG1012T" H 6352 6605 50  0000 C CNN
F 2 "customlib_mj_fp:SOT-523_handsoldering" H 6150 6750 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds31783.pdf" H 5950 6650 50  0001 C CNN
	1    5950 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6450 6050 6250
Wire Wire Line
	6050 6250 6550 6250
$Comp
L power:GND #PWR0313
U 1 1 5F42C545
P 6050 6950
F 0 "#PWR0313" H 6050 6700 50  0001 C CNN
F 1 "GND" H 6055 6777 50  0000 C CNN
F 2 "" H 6050 6950 50  0001 C CNN
F 3 "" H 6050 6950 50  0001 C CNN
	1    6050 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6850 6050 6950
$Comp
L Device:R_Small R309
U 1 1 5F43274E
P 5650 6800
F 0 "R309" H 5709 6846 50  0000 L CNN
F 1 "10k" H 5709 6755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5650 6800 50  0001 C CNN
F 3 "~" H 5650 6800 50  0001 C CNN
	1    5650 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0312
U 1 1 5F43306E
P 5650 6950
F 0 "#PWR0312" H 5650 6700 50  0001 C CNN
F 1 "GND" H 5655 6777 50  0000 C CNN
F 2 "" H 5650 6950 50  0001 C CNN
F 3 "" H 5650 6950 50  0001 C CNN
	1    5650 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 6950 5650 6900
Wire Wire Line
	5650 6700 5650 6650
Wire Wire Line
	5650 6650 5750 6650
Connection ~ 5650 6650
Text GLabel 1900 2850 0    50   Input ~ 0
DISP_FLASH_MOSI
Text GLabel 2650 2950 0    50   Output ~ 0
FP_ENC2_A
Text GLabel 2650 3150 0    50   Output ~ 0
FP_ENC2_B
Text GLabel 2650 3350 0    50   Output ~ 0
~FP_ENC2_SWn~
Wire Wire Line
	2650 2950 3000 2950
Wire Wire Line
	2650 3150 3000 3150
Wire Wire Line
	2650 3350 3000 3350
Text Notes 7200 6900 0    50   ~ 0
Alt: Molex Molex_MicroClasp-55935-0210 (OTS Cable: e.g. 15136-0203)\nhttps://www.molex.com/molex/products/part-detail/pcb_headers/0559350210
Wire Wire Line
	2750 2650 2750 3650
Wire Wire Line
	1900 6200 3000 6200
Text Notes 600  4400 0    75   ~ 15
The left-side of front panel supports either an on/off\nPower-button OR optionally a 2nd rotary encoder.\nHWID_FP should be used to indicate which option is chosen
Wire Wire Line
	5900 5550 5900 5700
Wire Wire Line
	5900 5700 6050 5700
Connection ~ 5900 5550
Wire Wire Line
	5900 5550 5950 5550
Connection ~ 6050 5700
Wire Wire Line
	6050 5700 6050 5650
$Comp
L customlib_mj:dogbone_3_ud JP301
U 1 1 5F4766CC
P 6050 5550
F 0 "JP301" H 6050 5683 50  0000 C CNN
F 1 "dogbone_3_ud" H 6075 5700 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0603" H 6050 5550 50  0001 C CNN
F 3 "" H 6050 5550 50  0001 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
NoConn ~ 3500 3600
NoConn ~ 3700 3600
NoConn ~ 3500 6000
NoConn ~ 3700 6000
$Sheet
S 9850 900  500  550 
U 5FDAF153
F0 "Chassis Fan 1" 50
F1 "fan_ctrl.sch" 50
F2 "PWM" I L 9850 1000 50 
F3 "Tacho" O L 9850 1200 50 
$EndSheet
$EndSCHEMATC
