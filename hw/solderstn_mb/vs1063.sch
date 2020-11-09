EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 19 21
Title "VLSI VS1063 MP3/OGG/FLAC codec"
Date "2020-11-04"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6650 3900 0    50   Input ~ 0
VS_L_in
Text HLabel 6650 5400 0    50   Input ~ 0
VS_R_in
Text HLabel 8500 4000 2    50   Output ~ 0
VS_L_out
Text HLabel 8500 5500 2    50   Output ~ 0
VS_R_out
Text GLabel 1800 4000 0    50   Input ~ 0
~VS1063_CSn~
Text GLabel 1800 3900 0    50   Input ~ 0
VS1063_SCK
Text GLabel 1800 3800 0    50   Input ~ 0
VS1063_MOSI
Text GLabel 1800 3700 0    50   Output ~ 0
VS1063_MISO
Text GLabel 1800 4200 0    50   Output ~ 0
VS1063_DREQ
Text GLabel 1800 4300 0    50   Input ~ 0
~SYS_RSTn~
$Comp
L customlib_mj:VS1063a U1905
U 1 1 5FA807BC
P 2850 4500
F 0 "U1905" H 2867 5525 50  0000 C CNN
F 1 "VS1063a" H 2867 5434 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2850 4500 50  0001 C CNN
F 3 "http://www.vlsi.fi/fileadmin/datasheets/vs1063ds.pdf" H 2850 4500 50  0001 C CNN
	1    2850 4500
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Crystal_ECS­122.8­18­33­JGN­TR Y1901
U 1 1 5FA9738C
P 1350 4800
F 0 "Y1901" V 1304 4903 50  0000 L CNN
F 1 "12.288M" V 1395 4903 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_TSX3225-4Pin_3.2x2.5mm_HandSoldering" H 1350 4800 50  0001 C CNN
F 3 "https://www.mouser.se/datasheet/2/122/ecx-32-1100709.pdf" H 1350 4800 50  0001 C CNN
	1    1350 4800
	0    1    1    0   
$EndComp
NoConn ~ 2250 4900
$Comp
L power:GND #PWR01939
U 1 1 5FA9ABFA
P 850 5100
F 0 "#PWR01939" H 850 4850 50  0001 C CNN
F 1 "GND" H 850 4950 50  0000 C CNN
F 2 "" H 850 5100 50  0001 C CNN
F 3 "" H 850 5100 50  0001 C CNN
	1    850  5100
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR01931
U 1 1 5FAAE24F
P 4000 3500
F 0 "#PWR01931" H 4000 3350 50  0001 C CNN
F 1 "VDDA" H 4000 3650 50  0000 C CNN
F 2 "" H 4000 3500 50  0001 C CNN
F 3 "" H 4000 3500 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR01929
U 1 1 5FAAE7C9
P 3550 3500
F 0 "#PWR01929" H 3550 3350 50  0001 C CNN
F 1 "VDD" H 3550 3650 50  0000 C CNN
F 2 "" H 3550 3500 50  0001 C CNN
F 3 "" H 3550 3500 50  0001 C CNN
	1    3550 3500
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:R_Small R1908
U 1 1 5FAB0154
P 1850 4750
F 0 "R1908" H 1900 4850 50  0000 L CNN
F 1 "1M" H 1850 4650 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1850 4750 50  0001 C CNN
F 3 "" H 1850 4750 50  0000 C CNN
	1    1850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4600 1350 4700
Wire Wire Line
	1350 4900 1350 4950
Wire Wire Line
	1350 4950 1850 4950
Wire Wire Line
	2050 4950 2050 4700
Wire Wire Line
	2050 4700 2250 4700
Wire Wire Line
	1350 4600 1850 4600
Wire Wire Line
	1850 4650 1850 4600
Connection ~ 1850 4600
Wire Wire Line
	1850 4600 2250 4600
Wire Wire Line
	1850 4850 1850 4950
Connection ~ 1850 4950
Wire Wire Line
	1850 4950 2050 4950
$Comp
L Device:C_Small C1924
U 1 1 5FAB4A3E
P 1050 4950
F 0 "C1924" V 1000 4800 50  0000 L CNN
F 1 "33pF" V 950 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1050 4950 50  0001 C CNN
F 3 "~" H 1050 4950 50  0001 C CNN
	1    1050 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 4950 1350 4950
Connection ~ 1350 4950
$Comp
L Device:C_Small C1921
U 1 1 5FAB5C7D
P 1050 4600
F 0 "C1921" V 1100 4450 50  0000 L CNN
F 1 "33pF" V 1150 4550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1050 4600 50  0001 C CNN
F 3 "~" H 1050 4600 50  0001 C CNN
	1    1050 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 4600 1350 4600
Connection ~ 1350 4600
Wire Wire Line
	950  4950 850  4950
Wire Wire Line
	850  4600 950  4600
Wire Wire Line
	850  5100 850  4950
Connection ~ 850  4950
Wire Wire Line
	850  4600 850  4750
Wire Wire Line
	1250 4750 850  4750
Connection ~ 850  4750
Wire Wire Line
	850  4750 850  4850
Wire Wire Line
	1250 4850 850  4850
Connection ~ 850  4850
Wire Wire Line
	850  4850 850  4950
$Comp
L customlib_mj:R_Small R1912
U 1 1 5FAB86B9
P 2150 6000
F 0 "R1912" V 2075 5900 50  0000 L CNN
F 1 "10k" V 2225 5900 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2150 6000 50  0001 C CNN
F 3 "" H 2150 6000 50  0000 C CNN
	1    2150 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01941
U 1 1 5FAB9CEF
P 2150 6200
F 0 "#PWR01941" H 2150 5950 50  0001 C CNN
F 1 "GND" H 2150 6050 50  0000 C CNN
F 2 "" H 2150 6200 50  0001 C CNN
F 3 "" H 2150 6200 50  0001 C CNN
	1    2150 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6200 2150 6100
Wire Wire Line
	2150 5900 2150 5800
Wire Wire Line
	2150 5100 2250 5100
Wire Wire Line
	2250 5200 2150 5200
Connection ~ 2150 5200
Wire Wire Line
	2150 5200 2150 5100
Wire Wire Line
	2250 5300 2150 5300
Connection ~ 2150 5300
Wire Wire Line
	2150 5300 2150 5200
Wire Wire Line
	2250 5400 2150 5400
Connection ~ 2150 5400
Wire Wire Line
	2150 5400 2150 5300
Wire Wire Line
	2250 5500 2150 5500
Connection ~ 2150 5500
Wire Wire Line
	2150 5500 2150 5400
Wire Wire Line
	2250 5600 2150 5600
Connection ~ 2150 5600
Wire Wire Line
	2150 5600 2150 5500
Wire Wire Line
	2250 5800 2150 5800
Connection ~ 2150 5800
Wire Wire Line
	2150 5800 2150 5700
Wire Wire Line
	2250 5700 2150 5700
Connection ~ 2150 5700
Wire Wire Line
	2150 5700 2150 5600
$Comp
L Device:C_Small C1930
U 1 1 5FABCCF9
P 3800 5900
F 0 "C1930" H 3892 5946 50  0000 L CNN
F 1 "1uF" H 3892 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3800 5900 50  0001 C CNN
F 3 "~" H 3800 5900 50  0001 C CNN
	1    3800 5900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:GNDA #PWR01945
U 1 1 5FABDD31
P 3800 6200
F 0 "#PWR01945" H 3800 5950 50  0001 C CNN
F 1 "GNDA" H 3805 6027 50  0000 C CNN
F 2 "" H 3800 6200 50  0001 C CNN
F 3 "" H 3800 6200 50  0001 C CNN
	1    3800 6200
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:GNDA #PWR01944
U 1 1 5FABECC0
P 3550 6200
F 0 "#PWR01944" H 3550 5950 50  0001 C CNN
F 1 "GNDA" H 3555 6027 50  0000 C CNN
F 2 "" H 3550 6200 50  0001 C CNN
F 3 "" H 3550 6200 50  0001 C CNN
	1    3550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5600 3800 5600
Wire Wire Line
	3800 5600 3800 5800
Wire Wire Line
	3800 6000 3800 6200
Wire Wire Line
	3550 6200 3550 5800
Wire Wire Line
	3550 5800 3450 5800
Wire Wire Line
	1800 3700 2250 3700
Wire Wire Line
	1800 3800 2250 3800
Wire Wire Line
	2250 3900 1800 3900
Wire Wire Line
	1800 4000 2250 4000
Wire Wire Line
	2250 4200 1800 4200
Wire Wire Line
	1800 4300 2250 4300
$Comp
L power:VDD #PWR01932
U 1 1 5FAC753F
P 1300 4100
F 0 "#PWR01932" H 1300 3950 50  0001 C CNN
F 1 "VDD" H 1300 4250 50  0000 C CNN
F 2 "" H 1300 4100 50  0001 C CNN
F 3 "" H 1300 4100 50  0001 C CNN
	1    1300 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR01934
U 1 1 5FAC7E37
P 2100 4400
F 0 "#PWR01934" H 2100 4250 50  0001 C CNN
F 1 "VDD" H 2100 4550 50  0000 C CNN
F 2 "" H 2100 4400 50  0001 C CNN
F 3 "" H 2100 4400 50  0001 C CNN
	1    2100 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 4400 2100 4400
Wire Wire Line
	2250 4100 1950 4100
$Comp
L customlib_mj:R_Small R1905
U 1 1 5FAC98F7
P 3800 4250
F 0 "R1905" V 3725 4150 50  0000 L CNN
F 1 "10k" V 3875 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3800 4250 50  0001 C CNN
F 3 "" H 3800 4250 50  0000 C CNN
	1    3800 4250
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR01933
U 1 1 5FAC9F62
P 4000 4250
F 0 "#PWR01933" H 4000 4100 50  0001 C CNN
F 1 "VDD" H 4000 4400 50  0000 C CNN
F 2 "" H 4000 4250 50  0001 C CNN
F 3 "" H 4000 4250 50  0001 C CNN
	1    4000 4250
	0    1    1    0   
$EndComp
$Comp
L customlib_mj:TP TP1902
U 1 1 5FACF349
P 3650 4500
F 0 "TP1902" H 3800 4500 50  0000 C CNN
F 1 "TP" H 3650 4550 60  0001 C CNN
F 2 "customlib_mj_fp:TP_SMD_1.2c" H 3650 4500 60  0001 C CNN
F 3 "" H 3650 4500 60  0001 C CNN
	1    3650 4500
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:TP TP1901
U 1 1 5FAD0923
P 3750 4400
F 0 "TP1901" H 3900 4400 50  0000 C CNN
F 1 "TP" H 3750 4450 60  0001 C CNN
F 2 "customlib_mj_fp:TP_SMD_1.2c" H 3750 4400 60  0001 C CNN
F 3 "" H 3750 4400 60  0001 C CNN
	1    3750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4400 3550 4400
Wire Wire Line
	3550 4400 3550 4500
Wire Wire Line
	4000 4250 3900 4250
$Comp
L power:GND #PWR01935
U 1 1 5FAE54CE
P 4000 4600
F 0 "#PWR01935" H 4000 4350 50  0001 C CNN
F 1 "GND" H 4000 4450 50  0000 C CNN
F 2 "" H 4000 4600 50  0001 C CNN
F 3 "" H 4000 4600 50  0001 C CNN
	1    4000 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C1913
U 1 1 5FAE5972
P 3450 2650
F 0 "C1913" H 3542 2696 50  0000 L CNN
F 1 "10uF" H 3542 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 2650 50  0001 C CNN
F 3 "~" H 3450 2650 50  0001 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1914
U 1 1 5FAE6537
P 3850 2650
F 0 "C1914" H 3942 2696 50  0000 L CNN
F 1 "100nF" H 3942 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3850 2650 50  0001 C CNN
F 3 "~" H 3850 2650 50  0001 C CNN
	1    3850 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1915
U 1 1 5FAE6807
P 4250 2650
F 0 "C1915" H 4342 2696 50  0000 L CNN
F 1 "100nF" H 4342 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4250 2650 50  0001 C CNN
F 3 "~" H 4250 2650 50  0001 C CNN
	1    4250 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1916
U 1 1 5FAE6BD6
P 4650 2650
F 0 "C1916" H 4742 2696 50  0000 L CNN
F 1 "100nF" H 4742 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4650 2650 50  0001 C CNN
F 3 "~" H 4650 2650 50  0001 C CNN
	1    4650 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR01924
U 1 1 5FAEB671
P 3650 2400
F 0 "#PWR01924" H 3650 2250 50  0001 C CNN
F 1 "VDD" H 3650 2550 50  0000 C CNN
F 2 "" H 3650 2400 50  0001 C CNN
F 3 "" H 3650 2400 50  0001 C CNN
	1    3650 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01927
U 1 1 5FAEC01C
P 3650 2900
F 0 "#PWR01927" H 3650 2650 50  0001 C CNN
F 1 "GND" H 3650 2750 50  0000 C CNN
F 2 "" H 3650 2900 50  0001 C CNN
F 3 "" H 3650 2900 50  0001 C CNN
	1    3650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2550 3450 2500
Wire Wire Line
	4650 2500 4650 2550
Wire Wire Line
	4250 2550 4250 2500
Connection ~ 4250 2500
Wire Wire Line
	4250 2500 4650 2500
Wire Wire Line
	3850 2550 3850 2500
Wire Wire Line
	3850 2500 4250 2500
Wire Wire Line
	3450 2750 3450 2800
Wire Wire Line
	4650 2750 4650 2800
Wire Wire Line
	4650 2800 4250 2800
Wire Wire Line
	3850 2750 3850 2800
Wire Wire Line
	4250 2750 4250 2800
Connection ~ 4250 2800
Wire Wire Line
	4250 2800 3850 2800
$Comp
L power:VDDA #PWR01925
U 1 1 5FAF4AA3
P 5650 2400
F 0 "#PWR01925" H 5650 2250 50  0001 C CNN
F 1 "VDDA" H 5650 2550 50  0000 C CNN
F 2 "" H 5650 2400 50  0001 C CNN
F 3 "" H 5650 2400 50  0001 C CNN
	1    5650 2400
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:GNDA #PWR01928
U 1 1 5FAF52F5
P 5650 2900
F 0 "#PWR01928" H 5650 2650 50  0001 C CNN
F 1 "GNDA" H 5655 2727 50  0000 C CNN
F 2 "" H 5650 2900 50  0001 C CNN
F 3 "" H 5650 2900 50  0001 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1917
U 1 1 5FAF5BCF
P 5450 2650
F 0 "C1917" H 5542 2696 50  0000 L CNN
F 1 "10uF" H 5542 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5450 2650 50  0001 C CNN
F 3 "~" H 5450 2650 50  0001 C CNN
	1    5450 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1918
U 1 1 5FAF5DFF
P 5850 2650
F 0 "C1918" H 5942 2696 50  0000 L CNN
F 1 "100nF" H 5942 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5850 2650 50  0001 C CNN
F 3 "~" H 5850 2650 50  0001 C CNN
	1    5850 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1919
U 1 1 5FAF5E09
P 6250 2650
F 0 "C1919" H 6342 2696 50  0000 L CNN
F 1 "100nF" H 6342 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6250 2650 50  0001 C CNN
F 3 "~" H 6250 2650 50  0001 C CNN
	1    6250 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1920
U 1 1 5FAF5E13
P 6650 2650
F 0 "C1920" H 6742 2696 50  0000 L CNN
F 1 "100nF" H 6742 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6650 2650 50  0001 C CNN
F 3 "~" H 6650 2650 50  0001 C CNN
	1    6650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2550 5450 2500
Wire Wire Line
	6650 2500 6650 2550
Wire Wire Line
	6250 2550 6250 2500
Wire Wire Line
	5850 2550 5850 2500
Wire Wire Line
	5450 2750 5450 2800
Wire Wire Line
	6650 2750 6650 2800
Wire Wire Line
	5850 2750 5850 2800
Wire Wire Line
	6250 2750 6250 2800
Wire Wire Line
	6250 2500 5850 2500
Wire Wire Line
	6650 2500 6250 2500
Connection ~ 6250 2500
Wire Wire Line
	6650 2800 6250 2800
Wire Wire Line
	6250 2800 5850 2800
Connection ~ 6250 2800
Wire Wire Line
	3450 2500 3650 2500
Connection ~ 3850 2500
Wire Wire Line
	3450 2800 3650 2800
Connection ~ 3850 2800
Wire Wire Line
	5450 2500 5650 2500
Connection ~ 5850 2500
Wire Wire Line
	5450 2800 5650 2800
Connection ~ 5850 2800
Wire Wire Line
	5650 2900 5650 2800
Connection ~ 5650 2800
Wire Wire Line
	5650 2800 5850 2800
Wire Wire Line
	5650 2400 5650 2500
Connection ~ 5650 2500
Wire Wire Line
	5650 2500 5850 2500
Wire Wire Line
	3650 2400 3650 2500
Connection ~ 3650 2500
Wire Wire Line
	3650 2500 3850 2500
Wire Wire Line
	3650 2900 3650 2800
Connection ~ 3650 2800
Wire Wire Line
	3650 2800 3850 2800
$Comp
L power:+1V8 #PWR01923
U 1 1 5FB1CF20
P 1450 2400
F 0 "#PWR01923" H 1450 2250 50  0001 C CNN
F 1 "+1V8" H 1465 2573 50  0000 C CNN
F 2 "" H 1450 2400 50  0001 C CNN
F 3 "" H 1450 2400 50  0001 C CNN
	1    1450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01926
U 1 1 5FB1DB9E
P 1450 2900
F 0 "#PWR01926" H 1450 2650 50  0001 C CNN
F 1 "GND" H 1450 2750 50  0000 C CNN
F 2 "" H 1450 2900 50  0001 C CNN
F 3 "" H 1450 2900 50  0001 C CNN
	1    1450 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1908
U 1 1 5FB1E22B
P 1250 2650
F 0 "C1908" H 1342 2696 50  0000 L CNN
F 1 "10uF" H 1342 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1250 2650 50  0001 C CNN
F 3 "~" H 1250 2650 50  0001 C CNN
	1    1250 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1909
U 1 1 5FB1FDD1
P 1600 2650
F 0 "C1909" H 1692 2696 50  0000 L CNN
F 1 "100nF" H 1692 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1600 2650 50  0001 C CNN
F 3 "~" H 1600 2650 50  0001 C CNN
	1    1600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1910
U 1 1 5FB20077
P 2000 2650
F 0 "C1910" H 2092 2696 50  0000 L CNN
F 1 "100nF" H 2092 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2000 2650 50  0001 C CNN
F 3 "~" H 2000 2650 50  0001 C CNN
	1    2000 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1911
U 1 1 5FB20081
P 2400 2650
F 0 "C1911" H 2492 2696 50  0000 L CNN
F 1 "100nF" H 2492 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2400 2650 50  0001 C CNN
F 3 "~" H 2400 2650 50  0001 C CNN
	1    2400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2500 2400 2550
Wire Wire Line
	2000 2550 2000 2500
Wire Wire Line
	1600 2550 1600 2500
Wire Wire Line
	2400 2750 2400 2800
Wire Wire Line
	1600 2750 1600 2800
Wire Wire Line
	2000 2750 2000 2800
$Comp
L Device:C_Small C1912
U 1 1 5FB23DED
P 2800 2650
F 0 "C1912" H 2892 2696 50  0000 L CNN
F 1 "100nF" H 2892 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2800 2650 50  0001 C CNN
F 3 "~" H 2800 2650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2500 2800 2550
Wire Wire Line
	2800 2750 2800 2800
Wire Wire Line
	1250 2550 1250 2500
Wire Wire Line
	1250 2500 1450 2500
Connection ~ 1600 2500
Wire Wire Line
	1600 2500 2000 2500
Connection ~ 2000 2500
Wire Wire Line
	2000 2500 2400 2500
Connection ~ 2400 2500
Wire Wire Line
	2400 2500 2800 2500
Wire Wire Line
	1250 2750 1250 2800
Wire Wire Line
	1250 2800 1450 2800
Connection ~ 1600 2800
Wire Wire Line
	1600 2800 2000 2800
Connection ~ 2000 2800
Wire Wire Line
	2000 2800 2400 2800
Connection ~ 2400 2800
Wire Wire Line
	2400 2800 2800 2800
Wire Wire Line
	1450 2900 1450 2800
Connection ~ 1450 2800
Wire Wire Line
	1450 2800 1600 2800
Wire Wire Line
	1450 2400 1450 2500
Connection ~ 1450 2500
Wire Wire Line
	1450 2500 1600 2500
$Comp
L power:+1V8 #PWR01930
U 1 1 5FB34EA1
P 3750 3500
F 0 "#PWR01930" H 3750 3350 50  0001 C CNN
F 1 "+1V8" H 3750 3650 50  0000 C CNN
F 2 "" H 3750 3500 50  0001 C CNN
F 3 "" H 3750 3500 50  0001 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3500 3550 3700
Wire Wire Line
	3550 3700 3450 3700
Wire Wire Line
	3750 3500 3750 3900
Wire Wire Line
	3750 3900 3450 3900
Wire Wire Line
	3650 4400 3600 4400
Wire Wire Line
	3600 4400 3600 4300
Wire Wire Line
	3600 4250 3700 4250
Wire Wire Line
	3450 4300 3600 4300
Connection ~ 3600 4300
Wire Wire Line
	3600 4300 3600 4250
Wire Wire Line
	4000 3500 4000 4100
Wire Wire Line
	4000 4100 3450 4100
Wire Wire Line
	4000 4600 3450 4600
$Comp
L power:GND #PWR01942
U 1 1 5FB70CCA
P 2700 6200
F 0 "#PWR01942" H 2700 5950 50  0001 C CNN
F 1 "GND" H 2700 6050 50  0000 C CNN
F 2 "" H 2700 6200 50  0001 C CNN
F 3 "" H 2700 6200 50  0001 C CNN
	1    2700 6200
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:GNDA #PWR01943
U 1 1 5FB712AA
P 3000 6200
F 0 "#PWR01943" H 3000 5950 50  0001 C CNN
F 1 "GNDA" H 3005 6027 50  0000 C CNN
F 2 "" H 3000 6200 50  0001 C CNN
F 3 "" H 3000 6200 50  0001 C CNN
	1    3000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6200 2700 6100
Wire Wire Line
	2700 6100 3000 6100
Wire Wire Line
	3000 6100 3000 6200
$Comp
L Device:C_Small C1926
U 1 1 5FB890A0
P 5050 5200
F 0 "C1926" V 4925 5250 50  0000 L CNN
F 1 "1uF" V 5000 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5050 5200 50  0001 C CNN
F 3 "~" H 5050 5200 50  0001 C CNN
	1    5050 5200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1927
U 1 1 5FB8A78B
P 5050 5400
F 0 "C1927" V 4925 5450 50  0000 L CNN
F 1 "1uF" V 5000 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5050 5400 50  0001 C CNN
F 3 "~" H 5050 5400 50  0001 C CNN
	1    5050 5400
	0    1    1    0   
$EndComp
$Comp
L customlib_mj:R_Small R1909
U 1 1 5FB8AF5B
P 3600 5000
F 0 "R1909" V 3550 5100 50  0000 L CNN
F 1 "10" V 3600 4950 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 3600 5000 50  0001 C CNN
F 3 "" H 3600 5000 50  0000 C CNN
	1    3600 5000
	0    1    1    0   
$EndComp
$Comp
L customlib_mj:R_Small R1911
U 1 1 5FB8B9B3
P 4750 5400
F 0 "R1911" V 4675 5300 50  0000 L CNN
F 1 "470" V 4825 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4750 5400 50  0001 C CNN
F 3 "" H 4750 5400 50  0000 C CNN
	1    4750 5400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1928
U 1 1 5FB91FA3
P 4350 5600
F 0 "C1928" H 4070 5554 50  0000 L CNN
F 1 "10nF" H 4070 5645 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4350 5600 50  0001 C CNN
F 3 "~" H 4350 5600 50  0001 C CNN
	1    4350 5600
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C1929
U 1 1 5FB92269
P 4550 5600
F 0 "C1929" H 4642 5646 50  0000 L CNN
F 1 "10nF" H 4642 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4550 5600 50  0001 C CNN
F 3 "~" H 4550 5600 50  0001 C CNN
	1    4550 5600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:GNDA #PWR01940
U 1 1 5FB97B77
P 4550 5900
F 0 "#PWR01940" H 4550 5650 50  0001 C CNN
F 1 "GNDA" H 4555 5727 50  0000 C CNN
F 2 "" H 4550 5900 50  0001 C CNN
F 3 "" H 4550 5900 50  0001 C CNN
	1    4550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5700 4550 5800
Wire Wire Line
	4350 5700 4350 5800
Wire Wire Line
	4350 5800 4550 5800
Connection ~ 4550 5800
Wire Wire Line
	4550 5800 4550 5900
Wire Wire Line
	5150 5400 5600 5400
Wire Wire Line
	5150 5200 5600 5200
Wire Wire Line
	4950 5200 4850 5200
Wire Wire Line
	4950 5400 4850 5400
Wire Wire Line
	4650 5400 4550 5400
Wire Wire Line
	4200 5400 4200 5300
Wire Wire Line
	4200 5300 3450 5300
Wire Wire Line
	4650 5200 4350 5200
Wire Wire Line
	4550 5500 4550 5400
Connection ~ 4550 5400
Wire Wire Line
	4550 5400 4200 5400
Wire Wire Line
	4350 5500 4350 5200
Connection ~ 4350 5200
Wire Wire Line
	3500 5000 3450 5000
Wire Wire Line
	3700 5000 3850 5000
$Comp
L customlib_mj:R_Small R1910
U 1 1 5FBE4D14
P 4750 5200
F 0 "R1910" V 4675 5100 50  0000 L CNN
F 1 "470" V 4825 5100 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4750 5200 50  0001 C CNN
F 3 "" H 4750 5200 50  0000 C CNN
	1    4750 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01938
U 1 1 5FBE5432
P 4150 5000
F 0 "#PWR01938" H 4150 4750 50  0001 C CNN
F 1 "GND" H 4150 4850 50  0000 C CNN
F 2 "" H 4150 5000 50  0001 C CNN
F 3 "" H 4150 5000 50  0001 C CNN
	1    4150 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 5000 4050 5000
Wire Wire Line
	3450 4800 4300 4800
Wire Wire Line
	4300 4800 4300 4000
Wire Wire Line
	4300 4000 4800 4000
Wire Wire Line
	3450 4900 4500 4900
Wire Wire Line
	4500 4900 4500 4100
Wire Wire Line
	4500 4100 5150 4100
$Comp
L customlib_mj:R_Small R1907
U 1 1 5FBFE9A0
P 5150 4300
F 0 "R1907" V 5200 4300 50  0000 C CNN
F 1 "20" V 5050 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 5150 4300 50  0001 C CNN
F 3 "" H 5150 4300 50  0000 C CNN
	1    5150 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C1925
U 1 1 5FBFF2FF
P 3950 5000
F 0 "C1925" V 3900 4950 50  0000 R CNN
F 1 "47n" V 4000 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3950 5000 50  0001 C CNN
F 3 "~" H 3950 5000 50  0001 C CNN
	1    3950 5000
	0    -1   1    0   
$EndComp
$Comp
L customlib_mj:R_Small R1906
U 1 1 5FC06161
P 4800 4300
F 0 "R1906" V 4850 4300 50  0000 C CNN
F 1 "20" V 4700 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4800 4300 50  0001 C CNN
F 3 "" H 4800 4300 50  0000 C CNN
	1    4800 4300
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C1923
U 1 1 5FC065BA
P 5150 4600
F 0 "C1923" V 5250 4450 50  0000 L CNN
F 1 "10n" V 5050 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5150 4600 50  0001 C CNN
F 3 "~" H 5150 4600 50  0001 C CNN
	1    5150 4600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C1922
U 1 1 5FC06AF7
P 4800 4600
F 0 "C1922" V 4900 4450 50  0000 L CNN
F 1 "10n" V 4700 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4800 4600 50  0001 C CNN
F 3 "~" H 4800 4600 50  0001 C CNN
	1    4800 4600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01936
U 1 1 5FC07794
P 4800 4800
F 0 "#PWR01936" H 4800 4550 50  0001 C CNN
F 1 "GND" H 4800 4650 50  0000 C CNN
F 2 "" H 4800 4800 50  0001 C CNN
F 3 "" H 4800 4800 50  0001 C CNN
	1    4800 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01937
U 1 1 5FC07E40
P 5150 4800
F 0 "#PWR01937" H 5150 4550 50  0001 C CNN
F 1 "GND" H 5150 4650 50  0000 C CNN
F 2 "" H 5150 4800 50  0001 C CNN
F 3 "" H 5150 4800 50  0001 C CNN
	1    5150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4800 5150 4700
Wire Wire Line
	4800 4800 4800 4700
Wire Wire Line
	5150 4500 5150 4400
Wire Wire Line
	4800 4500 4800 4400
Wire Wire Line
	5150 4200 5150 4100
Connection ~ 5150 4100
Wire Wire Line
	5150 4100 5600 4100
Wire Wire Line
	4800 4200 4800 4000
Connection ~ 4800 4000
Wire Wire Line
	4800 4000 5600 4000
$Comp
L customlib_mj:TLV1117LV30DCY U?
U 1 1 5FC8C0CC
P 4150 1250
AR Path="/5F472B62/5FC8C0CC" Ref="U?"  Part="1" 
AR Path="/5FAFD5BA/5FEE4431/5FC8C0CC" Ref="U1904"  Part="1" 
F 0 "U1904" H 3831 1492 50  0000 L CNN
F 1 "TLV1117LV18DCY" H 4150 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4150 1050 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv1117lv" H 4150 1250 50  0001 C CNN
	1    4150 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FC8C0D2
P 3650 1450
AR Path="/5F472B62/5FC8C0D2" Ref="C?"  Part="1" 
AR Path="/5FAFD5BA/5FEE4431/5FC8C0D2" Ref="C1906"  Part="1" 
F 0 "C1906" H 3742 1496 50  0000 L CNN
F 1 "10u" H 3742 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3650 1450 50  0001 C CNN
F 3 "~" H 3650 1450 50  0001 C CNN
	1    3650 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FC8C0D8
P 4550 1450
AR Path="/5F472B62/5FC8C0D8" Ref="C?"  Part="1" 
AR Path="/5FAFD5BA/5FEE4431/5FC8C0D8" Ref="C1907"  Part="1" 
F 0 "C1907" H 4642 1496 50  0000 L CNN
F 1 "10u" H 4642 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4550 1450 50  0001 C CNN
F 3 "~" H 4550 1450 50  0001 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC8C0DE
P 3650 1650
AR Path="/5F472B62/5FC8C0DE" Ref="#PWR?"  Part="1" 
AR Path="/5FAFD5BA/5FEE4431/5FC8C0DE" Ref="#PWR01920"  Part="1" 
F 0 "#PWR01920" H 3650 1400 50  0001 C CNN
F 1 "GND" H 3650 1500 50  0000 C CNN
F 2 "" H 3650 1650 50  0001 C CNN
F 3 "" H 3650 1650 50  0001 C CNN
	1    3650 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC8C0E4
P 4150 1650
AR Path="/5F472B62/5FC8C0E4" Ref="#PWR?"  Part="1" 
AR Path="/5FAFD5BA/5FEE4431/5FC8C0E4" Ref="#PWR01921"  Part="1" 
F 0 "#PWR01921" H 4150 1400 50  0001 C CNN
F 1 "GND" H 4150 1500 50  0000 C CNN
F 2 "" H 4150 1650 50  0001 C CNN
F 3 "" H 4150 1650 50  0001 C CNN
	1    4150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FC8C0EA
P 4550 1650
AR Path="/5F472B62/5FC8C0EA" Ref="#PWR?"  Part="1" 
AR Path="/5FAFD5BA/5FEE4431/5FC8C0EA" Ref="#PWR01922"  Part="1" 
F 0 "#PWR01922" H 4550 1400 50  0001 C CNN
F 1 "GND" H 4550 1500 50  0000 C CNN
F 2 "" H 4550 1650 50  0001 C CNN
F 3 "" H 4550 1650 50  0001 C CNN
	1    4550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1150 3550 1250
Wire Wire Line
	3550 1250 3650 1250
Wire Wire Line
	3650 1250 3650 1350
Connection ~ 3650 1250
Wire Wire Line
	3650 1250 3850 1250
Wire Wire Line
	3650 1550 3650 1650
Wire Wire Line
	4150 1550 4150 1650
Wire Wire Line
	4450 1250 4550 1250
Wire Wire Line
	4650 1250 4650 1150
Wire Wire Line
	4550 1250 4550 1350
Connection ~ 4550 1250
Wire Wire Line
	4550 1250 4650 1250
Wire Wire Line
	4550 1550 4550 1650
$Comp
L power:+1V8 #PWR01919
U 1 1 5FCB4EA0
P 4650 1150
F 0 "#PWR01919" H 4650 1000 50  0001 C CNN
F 1 "+1V8" H 4665 1323 50  0000 C CNN
F 2 "" H 4650 1150 50  0001 C CNN
F 3 "" H 4650 1150 50  0001 C CNN
	1    4650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR01918
U 1 1 5FCB5487
P 3550 1150
F 0 "#PWR01918" H 3550 1000 50  0001 C CNN
F 1 "VDD" H 3550 1300 50  0000 C CNN
F 2 "" H 3550 1150 50  0001 C CNN
F 3 "" H 3550 1150 50  0001 C CNN
	1    3550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5200 4350 5200
NoConn ~ 3450 5400
$Comp
L power:GND #PWR01948
U 1 1 5FD7A67E
P 6200 5350
F 0 "#PWR01948" H 6200 5100 50  0001 C CNN
F 1 "GND" H 6200 5200 50  0000 C CNN
F 2 "" H 6200 5350 50  0001 C CNN
F 3 "" H 6200 5350 50  0001 C CNN
	1    6200 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01949
U 1 1 5FD7C5B3
P 6200 3850
F 0 "#PWR01949" H 6200 3600 50  0001 C CNN
F 1 "GND" H 6200 3700 50  0000 C CNN
F 2 "" H 6200 3850 50  0001 C CNN
F 3 "" H 6200 3850 50  0001 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1931
U 1 1 5FD9B241
P 6200 5150
F 0 "C1931" H 6250 5250 50  0000 L CNN
F 1 "100nF" H 6250 5050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6200 5150 50  0001 C CNN
F 3 "~" H 6200 5150 50  0001 C CNN
	1    6200 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1932
U 1 1 5FDD9FBE
P 6200 3650
F 0 "C1932" H 6250 3750 50  0000 L CNN
F 1 "100nF" H 6250 3550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6200 3650 50  0001 C CNN
F 3 "~" H 6200 3650 50  0001 C CNN
	1    6200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4000 7700 4000
Text Label 5600 5400 2    50   ~ 0
Rin
Text Label 5600 5200 2    50   ~ 0
Lin
Wire Wire Line
	6650 3900 6900 3900
Text Label 6650 5400 0    50   ~ 0
Rin
Text Label 6650 3900 0    50   ~ 0
Lin
Text Label 5600 4000 2    50   ~ 0
Lout
Text Label 5600 4100 2    50   ~ 0
Rout
Wire Wire Line
	7000 4000 6600 4000
Text Label 6600 4000 0    50   ~ 0
Lout
Wire Wire Line
	7000 5500 6600 5500
Text Label 6600 5500 0    50   ~ 0
Rout
Text GLabel 6900 4100 0    50   Input ~ 0
AUDIO_PATH_SEL
Text GLabel 6900 5600 0    50   Input ~ 0
AUDIO_PATH_SEL
$Comp
L customlib_mj:R_Small R1913
U 1 1 5FEBF8C5
P 7200 3600
F 0 "R1913" V 7125 3500 50  0000 L CNN
F 1 "DNM" V 7275 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7200 3600 50  0001 C CNN
F 3 "" H 7200 3600 50  0000 C CNN
	1    7200 3600
	0    1    1    0   
$EndComp
$Comp
L customlib_mj:R_Small R1914
U 1 1 5FEBFE5C
P 7200 5100
F 0 "R1914" V 7125 5000 50  0000 L CNN
F 1 "DNM" V 7275 5000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7200 5100 50  0001 C CNN
F 3 "" H 7200 5100 50  0000 C CNN
	1    7200 5100
	0    1    1    0   
$EndComp
$Comp
L customlib_mj:TS5A3159A U1906
U 1 1 5FFB7766
P 7200 4000
F 0 "U1906" H 7200 4200 50  0000 C CNN
F 1 "TS5A3159A" H 7200 3800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7200 4000 50  0001 C CNN
F 3 "https://www.ti.com/product/TS5A3159A" H 7200 4000 50  0001 C CNN
	1    7200 4000
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:TS5A3159A U1907
U 1 1 5FFB7F7E
P 7200 5500
F 0 "U1907" H 7200 5700 50  0000 C CNN
F 1 "TS5A3159A" H 7200 5300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7200 5500 50  0001 C CNN
F 3 "https://www.ti.com/product/TS5A3159A" H 7200 5500 50  0001 C CNN
	1    7200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3600 7700 3600
Wire Wire Line
	7700 3600 7700 4000
Wire Wire Line
	6900 3900 6900 3600
Wire Wire Line
	6900 3600 7100 3600
Connection ~ 6900 3900
Wire Wire Line
	6900 3900 7000 3900
Wire Wire Line
	6900 4100 7000 4100
$Comp
L power:GND #PWR01950
U 1 1 5FFFF3CC
P 7500 4300
F 0 "#PWR01950" H 7500 4050 50  0001 C CNN
F 1 "GND" H 7500 4150 50  0000 C CNN
F 2 "" H 7500 4300 50  0001 C CNN
F 3 "" H 7500 4300 50  0001 C CNN
	1    7500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4300 7500 4100
Wire Wire Line
	7500 4100 7400 4100
$Comp
L power:VDDA #PWR01946
U 1 1 60009839
P 7500 3800
F 0 "#PWR01946" H 7500 3650 50  0001 C CNN
F 1 "VDDA" H 7500 3950 50  0000 C CNN
F 2 "" H 7500 3800 50  0001 C CNN
F 3 "" H 7500 3800 50  0001 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3800 7500 3900
Wire Wire Line
	7500 3900 7400 3900
Wire Wire Line
	7400 4000 7700 4000
Connection ~ 7700 4000
Wire Wire Line
	7400 5500 7700 5500
Wire Wire Line
	6650 5400 6900 5400
Wire Wire Line
	7000 5600 6900 5600
Wire Wire Line
	7100 5100 6900 5100
Wire Wire Line
	6900 5100 6900 5400
Connection ~ 6900 5400
Wire Wire Line
	6900 5400 7000 5400
Wire Wire Line
	7300 5100 7700 5100
Wire Wire Line
	7700 5100 7700 5500
Connection ~ 7700 5500
Wire Wire Line
	7700 5500 7850 5500
$Comp
L power:VDDA #PWR01951
U 1 1 6008A4C9
P 7500 5300
F 0 "#PWR01951" H 7500 5150 50  0001 C CNN
F 1 "VDDA" H 7500 5450 50  0000 C CNN
F 2 "" H 7500 5300 50  0001 C CNN
F 3 "" H 7500 5300 50  0001 C CNN
	1    7500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01953
U 1 1 6008B382
P 7500 5800
F 0 "#PWR01953" H 7500 5550 50  0001 C CNN
F 1 "GND" H 7500 5650 50  0000 C CNN
F 2 "" H 7500 5800 50  0001 C CNN
F 3 "" H 7500 5800 50  0001 C CNN
	1    7500 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5800 7500 5600
Wire Wire Line
	7500 5600 7400 5600
Wire Wire Line
	7500 5300 7500 5400
Wire Wire Line
	7500 5400 7400 5400
$Comp
L power:VDDA #PWR01947
U 1 1 600B6AF4
P 6200 3450
F 0 "#PWR01947" H 6200 3300 50  0001 C CNN
F 1 "VDDA" H 6200 3600 50  0000 C CNN
F 2 "" H 6200 3450 50  0001 C CNN
F 3 "" H 6200 3450 50  0001 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR01952
U 1 1 600B8079
P 6200 4950
F 0 "#PWR01952" H 6200 4800 50  0001 C CNN
F 1 "VDDA" H 6200 5100 50  0000 C CNN
F 2 "" H 6200 4950 50  0001 C CNN
F 3 "" H 6200 4950 50  0001 C CNN
	1    6200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3450 6200 3550
Wire Wire Line
	6200 3750 6200 3850
Wire Wire Line
	6200 4950 6200 5050
Wire Wire Line
	6200 5250 6200 5350
Text Notes 7350 3550 0    60   ~ 0
Audio-path bypass\n(eg if VS1063 n/m)
Text Notes 7350 5050 0    60   ~ 0
Audio-path bypass\n(eg if VS1063 n/m)
Text Notes 6900 6350 0    70   ~ 14
Audio source selection\n0 : MCU DAC\n1 : VS1053 DAC
$Comp
L customlib_mj:R_Small R1915
U 1 1 603326A8
P 7950 4000
F 0 "R1915" V 7875 3900 50  0000 L CNN
F 1 "470" V 8025 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7950 4000 50  0001 C CNN
F 3 "" H 7950 4000 50  0000 C CNN
	1    7950 4000
	0    1    1    0   
$EndComp
$Comp
L customlib_mj:R_Small R1917
U 1 1 60332E1E
P 7950 5500
F 0 "R1917" V 7875 5400 50  0000 L CNN
F 1 "470" V 8025 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 7950 5500 50  0001 C CNN
F 3 "" H 7950 5500 50  0000 C CNN
	1    7950 5500
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1933
U 1 1 60333531
P 8200 4150
F 0 "C1933" H 8292 4196 50  0000 L CNN
F 1 "3n3" H 8292 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8200 4150 50  0001 C CNN
F 3 "~" H 8200 4150 50  0001 C CNN
	1    8200 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1934
U 1 1 603344EC
P 8200 5650
F 0 "C1934" H 8292 5696 50  0000 L CNN
F 1 "3n3" H 8292 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8200 5650 50  0001 C CNN
F 3 "~" H 8200 5650 50  0001 C CNN
	1    8200 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01955
U 1 1 603477CE
P 8200 5800
F 0 "#PWR01955" H 8200 5550 50  0001 C CNN
F 1 "GND" H 8200 5650 50  0000 C CNN
F 2 "" H 8200 5800 50  0001 C CNN
F 3 "" H 8200 5800 50  0001 C CNN
	1    8200 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01954
U 1 1 60347C98
P 8200 4300
F 0 "#PWR01954" H 8200 4050 50  0001 C CNN
F 1 "GND" H 8200 4150 50  0000 C CNN
F 2 "" H 8200 4300 50  0001 C CNN
F 3 "" H 8200 4300 50  0001 C CNN
	1    8200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4300 8200 4250
Wire Wire Line
	8200 5800 8200 5750
Wire Wire Line
	8050 5500 8200 5500
Wire Wire Line
	8200 5500 8200 5550
Wire Wire Line
	8050 4000 8200 4000
Wire Wire Line
	8200 4000 8200 4050
Wire Wire Line
	8500 5500 8200 5500
Connection ~ 8200 5500
Wire Wire Line
	8500 4000 8200 4000
Connection ~ 8200 4000
Text Notes 7850 3850 0    50   ~ 0
F_LP [470, 3n3] = 100kHz
Text Notes 7850 5350 0    50   ~ 0
F_LP [470, 3n3] = 100kHz
$Comp
L customlib_mj:R_Small R1916
U 1 1 6039FCBF
P 1850 4100
F 0 "R1916" V 1800 4200 50  0000 L CNN
F 1 "10k" V 1900 4200 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1850 4100 50  0001 C CNN
F 3 "" H 1850 4100 50  0000 C CNN
	1    1850 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 4100 1750 4100
$EndSCHEMATC
