EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 22
Title "Front-side and internal connectors"
Date "2020-08-03"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L customlib_mj:FFC_conn_14p J501
U 1 1 5F469D5D
P 3100 3100
F 0 "J501" H 3512 3146 50  0000 C CNN
F 1 "FFC_conn_14p" H 3512 3055 50  0000 C CNN
F 2 "" H 3050 3100 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/687114182122.pdf" H 3050 3100 50  0001 C CNN
	1    3100 3100
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:FFC_conn_14p J502
U 1 1 5F46D565
P 3100 5300
F 0 "J502" H 3512 5346 50  0000 C CNN
F 1 "FFC_conn_14p" H 3512 5255 50  0000 C CNN
F 2 "" H 3050 5300 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/687114182122.pdf" H 3050 5300 50  0001 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J503
U 1 1 5F46E2EB
P 6350 6300
F 0 "J503" H 6350 6450 50  0000 C CNN
F 1 "Conn_01x02" H 6400 6100 50  0000 C CNN
F 2 "" H 6350 6300 50  0001 C CNN
F 3 "~" H 6350 6300 50  0001 C CNN
	1    6350 6300
	1    0    0    -1  
$EndComp
Text Notes 4700 7400 0    60   ~ 12
FancyBtn LED connector \n(PWM ctrl low-side; 5V/12V selectable V+)
$Comp
L customlib_mj:FFC_retention_clamp M501
U 1 1 5F4700B4
P 3600 3600
F 0 "M501" H 3600 3825 50  0000 C CNN
F 1 "FFC_retention_clamp" H 3600 3734 50  0000 C CNN
F 2 "" H 3600 3600 50  0001 C CNN
F 3 "" H 3600 3600 50  0001 C CNN
	1    3600 3600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:FFC_retention_clamp M502
U 1 1 5F4709C2
P 3600 5750
F 0 "M502" H 3600 5975 50  0000 C CNN
F 1 "FFC_retention_clamp" H 3600 5884 50  0000 C CNN
F 2 "" H 3600 5750 50  0001 C CNN
F 3 "" H 3600 5750 50  0001 C CNN
	1    3600 5750
	1    0    0    -1  
$EndComp
$Sheet
S 9650 700  500  550 
U 5F4722BA
F0 "Chassis fan 1" 50
F1 "fan_ctrl.sch" 50
F2 "PWM" I L 9650 800 50 
F3 "Tacho" O L 9650 1000 50 
$EndSheet
$Sheet
S 9650 1550 500  550 
U 5F472468
F0 "Chassis fan 2" 50
F1 "fan_ctrl.sch" 50
F2 "PWM" I L 9650 1650 50 
F3 "Tacho" O L 9650 1850 50 
$EndSheet
$Sheet
S 9650 2400 500  550 
U 5F472567
F0 "Chassis fan 3" 50
F1 "fan_ctrl.sch" 50
F2 "PWM" I L 9650 2500 50 
F3 "Tacho" O L 9650 2700 50 
$EndSheet
$Sheet
S 9350 3900 500  450 
U 5F4B6AEC
F0 "Temp.sensor 1" 50
F1 "temp_sensor.sch" 50
F2 "SCL" I L 9350 4000 50 
F3 "SDA" B L 9350 4200 50 
F4 "A0" I R 9850 4100 50 
F5 "A1" I R 9850 4200 50 
$EndSheet
$Sheet
S 9350 4650 500  450 
U 5F4B6CAA
F0 "Temp.sensor 2" 50
F1 "temp_sensor.sch" 50
F2 "SCL" I L 9350 4750 50 
F3 "SDA" B L 9350 4950 50 
F4 "A0" I R 9850 4850 50 
F5 "A1" I R 9850 4950 50 
$EndSheet
$Sheet
S 9350 5400 500  450 
U 5F4B6E36
F0 "Temp.sensor 3" 50
F1 "temp_sensor.sch" 50
F2 "SCL" I L 9350 5500 50 
F3 "SDA" B L 9350 5700 50 
F4 "A0" I R 9850 5600 50 
F5 "A1" I R 9850 5700 50 
$EndSheet
Wire Wire Line
	9350 5500 9250 5500
Wire Wire Line
	9250 5500 9250 4750
Wire Wire Line
	9250 3750 8950 3750
Wire Wire Line
	9350 5700 9150 5700
Wire Wire Line
	9150 5700 9150 4950
Wire Wire Line
	9150 3950 8950 3950
Wire Wire Line
	9350 4000 9250 4000
Connection ~ 9250 4000
Wire Wire Line
	9250 4000 9250 3750
Wire Wire Line
	9350 4750 9250 4750
Connection ~ 9250 4750
Wire Wire Line
	9250 4750 9250 4000
Wire Wire Line
	9350 4950 9150 4950
Connection ~ 9150 4950
Wire Wire Line
	9150 4950 9150 4200
Wire Wire Line
	9350 4200 9150 4200
Connection ~ 9150 4200
Wire Wire Line
	9150 4200 9150 3950
$Comp
L power:GND #PWR0508
U 1 1 5F4BAAAB
P 10250 4250
F 0 "#PWR0508" H 10250 4000 50  0001 C CNN
F 1 "GND" H 10250 4100 50  0000 C CNN
F 2 "" H 10250 4250 50  0001 C CNN
F 3 "" H 10250 4250 50  0001 C CNN
	1    10250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4250 10250 4200
Wire Wire Line
	10250 4200 9850 4200
Wire Wire Line
	9850 4100 10050 4100
NoConn ~ 10050 4100
Wire Wire Line
	9850 4950 10050 4950
Wire Wire Line
	9850 5700 10050 5700
NoConn ~ 10050 5700
NoConn ~ 10050 4950
$Comp
L power:GND #PWR0510
U 1 1 5F4BC3A9
P 10250 5000
F 0 "#PWR0510" H 10250 4750 50  0001 C CNN
F 1 "GND" H 10250 4850 50  0000 C CNN
F 2 "" H 10250 5000 50  0001 C CNN
F 3 "" H 10250 5000 50  0001 C CNN
	1    10250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5000 10250 4850
Wire Wire Line
	10250 4850 9850 4850
$Comp
L power:VDD #PWR0511
U 1 1 5F4BCCF4
P 10250 5550
F 0 "#PWR0511" H 10250 5400 50  0001 C CNN
F 1 "VDD" H 10265 5723 50  0000 C CNN
F 2 "" H 10250 5550 50  0001 C CNN
F 3 "" H 10250 5550 50  0001 C CNN
	1    10250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5600 10250 5600
Wire Wire Line
	10250 5600 10250 5550
Text Notes 9950 4000 0    60   ~ 12
Addr=1001001
Text Notes 9950 4800 0    60   ~ 12
Addr=1001011
Text Notes 9900 5850 0    60   ~ 12
Addr=1001111
$Comp
L Device:R_Small R508
U 1 1 5F4C1178
P 5850 6050
F 0 "R508" H 5909 6096 50  0000 L CNN
F 1 "0R" H 5909 6005 50  0000 L CNN
F 2 "" H 5850 6050 50  0001 C CNN
F 3 "~" H 5850 6050 50  0001 C CNN
	1    5850 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0507
U 1 1 5F4C1AC2
P 2750 3900
F 0 "#PWR0507" H 2750 3650 50  0001 C CNN
F 1 "GND" H 2755 3727 50  0000 C CNN
F 2 "" H 2750 3900 50  0001 C CNN
F 3 "" H 2750 3900 50  0001 C CNN
	1    2750 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R502
U 1 1 5F4C775D
P 4500 1000
F 0 "R502" H 4550 1050 50  0000 L CNN
F 1 "10k" H 4550 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4500 1000 50  0001 C CNN
F 3 "~" H 4500 1000 50  0001 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R501
U 1 1 5F4C7763
P 5300 950
F 0 "R501" V 5375 950 50  0000 L CNN
F 1 "20k" V 5300 875 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 950 50  0001 C CNN
F 3 "~" H 5300 950 50  0001 C CNN
	1    5300 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R506
U 1 1 5F4C7769
P 5300 1050
F 0 "R506" V 5225 1050 50  0000 L CNN
F 1 "20k" V 5300 975 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 1050 50  0001 C CNN
F 3 "~" H 5300 1050 50  0001 C CNN
	1    5300 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R503
U 1 1 5F4C776F
P 4850 1000
F 0 "R503" H 4900 1050 50  0000 L CNN
F 1 "20k" H 4900 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4850 1000 50  0001 C CNN
F 3 "~" H 4850 1000 50  0001 C CNN
	1    4850 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R505
U 1 1 5F4C7775
P 5900 1000
F 0 "R505" H 5950 1050 50  0000 L CNN
F 1 "160k" H 5925 950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 1000 50  0001 C CNN
F 3 "~" H 5900 1000 50  0001 C CNN
	1    5900 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R504
U 1 1 5F4C777B
P 5800 1000
F 0 "R504" H 5900 1050 50  0000 L CNN
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
L Device:R_Small R507
U 1 1 5F4C77AD
P 5200 1500
F 0 "R507" H 5250 1550 50  0000 L CNN
F 1 "27k" H 5250 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5200 1500 50  0001 C CNN
F 3 "~" H 5200 1500 50  0001 C CNN
	1    5200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C502
U 1 1 5F4C77B3
P 5000 1500
F 0 "C502" H 4714 1454 50  0000 L CNN
F 1 "100n" H 4714 1545 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5000 1500 50  0001 C CNN
F 3 "~" H 5000 1500 50  0001 C CNN
	1    5000 1500
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0505
U 1 1 5F4C77B9
P 5100 1700
F 0 "#PWR0505" H 5100 1450 50  0001 C CNN
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
L power:VDD #PWR0501
U 1 1 5F4DCE05
P 4700 750
F 0 "#PWR0501" H 4700 600 50  0001 C CNN
F 1 "VDD" H 4700 900 50  0000 C CNN
F 2 "" H 4700 750 50  0001 C CNN
F 3 "" H 4700 750 50  0001 C CNN
	1    4700 750 
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0503
U 1 1 5F4DD695
P 6850 1350
F 0 "#PWR0503" H 6850 1200 50  0001 C CNN
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
L power:VDD #PWR0502
U 1 1 5F4EB6F8
P 8000 850
F 0 "#PWR0502" H 8000 700 50  0001 C CNN
F 1 "VDD" H 8000 1000 50  0000 C CNN
F 2 "" H 8000 850 50  0001 C CNN
F 3 "" H 8000 850 50  0001 C CNN
	1    8000 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0504
U 1 1 5F4EBDBE
P 8000 1650
F 0 "#PWR0504" H 8000 1400 50  0001 C CNN
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
L Device:C_Small C501
U 1 1 5F4EF6FD
P 8150 1250
F 0 "C501" H 8242 1296 50  0000 L CNN
F 1 "100n" H 8242 1205 50  0000 L CNN
F 2 "" H 8150 1250 50  0001 C CNN
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
	3000 2450 2600 2450
Wire Wire Line
	3000 2750 2100 2750
Wire Wire Line
	3000 2850 2600 2850
Wire Wire Line
	3000 3050 2100 3050
Wire Wire Line
	3000 3250 2600 3250
Wire Wire Line
	3000 3350 2100 3350
Wire Wire Line
	3000 3450 2600 3450
Wire Wire Line
	3000 3550 2100 3550
Wire Wire Line
	3000 3750 2600 3750
Wire Wire Line
	3000 2550 2750 2550
Wire Wire Line
	2750 2550 2750 2300
Connection ~ 2750 2550
Wire Wire Line
	3000 3150 2850 3150
Wire Wire Line
	2750 3150 2750 3650
Wire Wire Line
	3000 3650 2750 3650
Wire Wire Line
	3000 4650 2650 4650
Wire Wire Line
	3000 4750 2100 4750
Wire Wire Line
	3000 4850 2650 4850
Wire Wire Line
	3000 4950 2100 4950
Wire Wire Line
	3000 5050 2650 5050
Wire Wire Line
	3000 5150 2100 5150
Wire Wire Line
	3000 5350 2300 5350
Wire Wire Line
	3000 5450 2300 5450
Wire Wire Line
	3000 5650 2300 5650
Wire Wire Line
	3000 5850 2300 5850
$Comp
L power:GND #PWR0514
U 1 1 5F5B25DD
P 2850 6100
F 0 "#PWR0514" H 2850 5850 50  0001 C CNN
F 1 "GND" H 2855 5927 50  0000 C CNN
F 2 "" H 2850 6100 50  0001 C CNN
F 3 "" H 2850 6100 50  0001 C CNN
	1    2850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4500 2850 5250
Wire Wire Line
	2850 5250 3000 5250
Wire Wire Line
	3000 5750 2850 5750
Wire Wire Line
	2850 5750 2850 6100
$Comp
L customlib_mj:TLV9051SIDBV U501
U 1 1 5F5A8A8B
P 6800 1100
F 0 "U501" H 6534 733 50  0000 L CNN
F 1 "TLV9051SIDBV" H 6534 824 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 6800 1100 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv9051" H 6850 1300 50  0001 C CNN
	1    6800 1100
	1    0    0    1   
$EndComp
$Comp
L customlib_mj:TLV9051SIDBV U501
U 2 1 5F5AF0E9
P 8000 1250
F 0 "U501" H 7950 1300 50  0000 R CNN
F 1 "TLV9051SIDBV" H 7950 1200 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 8000 1250 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv9051" H 8050 1450 50  0001 C CNN
	2    8000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2550 2750 2950
Wire Wire Line
	2850 3150 2850 2650
Wire Wire Line
	2850 2650 3000 2650
Connection ~ 2850 3150
Wire Wire Line
	2850 3150 2750 3150
Wire Wire Line
	2750 2950 3000 2950
Connection ~ 2750 3650
Wire Wire Line
	2750 3650 2750 3900
Wire Wire Line
	3000 5550 2850 5550
Wire Wire Line
	2850 5550 2850 5250
Connection ~ 2850 5250
$Comp
L customlib_mj:VDD_OLED #PWR0506
U 1 1 5FB4AE16
P 2750 2300
F 0 "#PWR0506" H 2750 2150 50  0001 C CNN
F 1 "VDD_OLED" H 2767 2473 50  0000 C CNN
F 2 "" H 2750 2300 50  0000 C CNN
F 3 "" H 2750 2300 50  0000 C CNN
	1    2750 2300
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_OLED #PWR0509
U 1 1 5FB4B19C
P 2850 4500
F 0 "#PWR0509" H 2850 4350 50  0001 C CNN
F 1 "VDD_OLED" H 2867 4673 50  0000 C CNN
F 2 "" H 2850 4500 50  0000 C CNN
F 3 "" H 2850 4500 50  0000 C CNN
	1    2850 4500
	1    0    0    -1  
$EndComp
Text Notes 650  2050 0    75   ~ 15
Place vDD_OLED LDO close to FFC connectors\nTODO: add 2nd optional rotary encoder to FP board\nIdeally it would just be a 3d-printed holder option on\nsame PCB that supports PwrBtn. Worst-case, air-wire\nin the Rotary signals to 5pin header a bit off.\n(TODO#2: Need new 3d-printed holder design for left-side Rotary...)
Text GLabel 7250 1100 2    50   Output ~ 0
HWID_MB
Text GLabel 9500 800  0    50   Input ~ 0
FAN1_PWM
Text GLabel 9500 1000 0    50   Output ~ 0
FAN1_RPM
Wire Wire Line
	9500 800  9650 800 
Wire Wire Line
	9650 1000 9500 1000
Text GLabel 9500 1650 0    50   Input ~ 0
FAN2_PWM
Text GLabel 9500 1850 0    50   Output ~ 0
FAN2_RPM
Wire Wire Line
	9500 1650 9650 1650
Wire Wire Line
	9650 1850 9500 1850
Text GLabel 9500 2500 0    50   Input ~ 0
FAN3_PWM
Text GLabel 9500 2700 0    50   Output ~ 0
FAN3_RPM
Wire Wire Line
	9500 2500 9650 2500
Wire Wire Line
	9650 2700 9500 2700
Text GLabel 8950 3750 0    50   Input ~ 0
I2C1_SCL
Text GLabel 8950 3950 0    50   BiDi ~ 0
I2C1_SDA
Text GLabel 2600 2450 0    50   Input ~ 0
DISP_D~Cn~
Text GLabel 2100 2750 0    50   Input ~ 0
DISP_FLASH_SCK
Text GLabel 2100 3050 0    50   BiDi ~ 0
I2C1_SDA
Text GLabel 2600 3250 0    50   Input ~ 0
I2C1_SCL
Text GLabel 2100 3350 0    50   Input ~ 0
~SYS_RSTn~
Text GLabel 2600 3450 0    50   Input ~ 0
~DISP_CSn~
Text GLabel 2100 3550 0    50   Output ~ 0
~FP_BTN_1Bn~
Text GLabel 2600 3750 0    50   Output ~ 0
~FP_BTN_1An~
Text GLabel 2300 5850 0    50   Output ~ 0
~FP_BTN_2Bn~
Text GLabel 2300 5650 0    50   Output ~ 0
HWID_FP
Text GLabel 2100 5150 0    50   Output ~ 0
FP_ENC_A
Text GLabel 2100 4950 0    50   Output ~ 0
FP_ENC_B
Text GLabel 2650 4850 0    50   Output ~ 0
~AUX_INTn~
Text GLabel 2100 4750 0    50   Output ~ 0
~FP_ENC_SWn~
Text GLabel 2650 4650 0    50   Input ~ 0
AUX_BOOT0
Text GLabel 2650 5050 0    50   Input ~ 0
~SYS_RSTn~
Text HLabel 2300 5350 0    50   Output ~ 0
AUX_TX
Text HLabel 2300 5450 0    50   Input ~ 0
AUX_RX
Wire Wire Line
	3000 5950 2450 5950
Text GLabel 2300 6000 0    50   Output ~ 0
~FP_BTN_2An~
Wire Wire Line
	2450 5950 2450 6000
Wire Wire Line
	2450 6000 2300 6000
Wire Wire Line
	5350 6650 5650 6650
Text GLabel 5350 6650 0    50   Input ~ 0
PWRBTN_LED_PWM
Text Notes 7500 6050 0    50   ~ 10
Note:\nThere're additional up-to 5 TMP100\nsensors on the front panel.\nDisplay-side, left : addr=1001000\nDisplay-side, right : addr=1001010\nInside, left : addr=1001100\nInside, middle : addr=1001101\nInside, right: addr=1001110 
Wire Notes Line
	7450 5350 7450 6100
Wire Notes Line
	7450 6100 8950 6100
Wire Notes Line
	8950 6100 8950 5350
Wire Notes Line
	8950 5350 7450 5350
Text Notes 8450 6300 0    60   ~ 12
Ambient temperature sensors (TMP100)
$Comp
L customlib_mj:dogbone_3 JP501
U 1 1 5F3FE2C8
P 5850 5700
F 0 "JP501" H 5850 5833 50  0000 C CNN
F 1 "dogbone_3" H 5875 5850 50  0001 C CNN
F 2 "" H 5850 5700 50  0001 C CNN
F 3 "" H 5850 5700 50  0001 C CNN
	1    5850 5700
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VIN #PWR0513
U 1 1 5F3FFD24
P 6050 5600
F 0 "#PWR0513" H 6050 5450 50  0001 C CNN
F 1 "VIN" H 6050 5750 50  0000 C CNN
F 2 "" H 6050 5600 50  0001 C CNN
F 3 "" H 6050 5600 50  0001 C CNN
	1    6050 5600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VMAIN #PWR0512
U 1 1 5F4002E4
P 5650 5600
F 0 "#PWR0512" H 5650 5450 50  0001 C CNN
F 1 "VMAIN" H 5650 5750 50  0000 C CNN
F 2 "" H 5650 5600 50  0001 C CNN
F 3 "" H 5650 5600 50  0001 C CNN
	1    5650 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5600 5650 5700
Wire Wire Line
	5650 5700 5750 5700
Wire Wire Line
	5950 5700 6050 5700
Wire Wire Line
	6050 5700 6050 5600
Wire Wire Line
	5850 6150 5850 6300
Wire Wire Line
	5850 6300 6150 6300
Wire Wire Line
	5850 5950 5850 5800
Text Notes 2700 7650 0    70   ~ 0
TODO: TBD contacts - cable shoe blades, or Pluto 2p Power-connector..?\nJST? Molex?
$Comp
L customlib_mj:DMG1012T Q501
U 1 1 5F4241F8
P 5950 6650
F 0 "Q501" H 6156 6696 50  0000 L CNN
F 1 "DMG1012T" H 6352 6605 50  0000 C CNN
F 2 "bobs:SOT-523" H 6150 6750 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds31783.pdf" H 5950 6650 50  0001 C CNN
	1    5950 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6450 6050 6400
Wire Wire Line
	6050 6400 6150 6400
$Comp
L power:GND #PWR0516
U 1 1 5F42C545
P 6050 6950
F 0 "#PWR0516" H 6050 6700 50  0001 C CNN
F 1 "GND" H 6055 6777 50  0000 C CNN
F 2 "" H 6050 6950 50  0001 C CNN
F 3 "" H 6050 6950 50  0001 C CNN
	1    6050 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6850 6050 6950
$Comp
L Device:R_Small R509
U 1 1 5F43274E
P 5650 6800
F 0 "R509" H 5709 6846 50  0000 L CNN
F 1 "10k" H 5709 6755 50  0000 L CNN
F 2 "" H 5650 6800 50  0001 C CNN
F 3 "~" H 5650 6800 50  0001 C CNN
	1    5650 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0515
U 1 1 5F43306E
P 5650 6950
F 0 "#PWR0515" H 5650 6700 50  0001 C CNN
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
Text GLabel 2600 2850 0    50   Input ~ 0
DISP_FLASH_MOSI
Text GLabel 1050 2950 0    50   Output ~ 0
FP_ENC2_A
Text GLabel 1050 3150 0    50   Output ~ 0
FP_ENC2_B
Text GLabel 1100 3350 0    50   Output ~ 0
~FP_ENC2_SWn~
Text Notes 500  3900 0    75   ~ 15
\nTODO: Remoce this ~SYS_RSTn~ and add ENC2_x\nto front-panel board too (and update FP layout)
Wire Wire Line
	1050 2950 1350 2950
Wire Wire Line
	1050 3150 1350 3150
Wire Wire Line
	1100 3350 1350 3350
$EndSCHEMATC
