EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "FFC Adapter board"
Date "2020-12-13"
Rev "r0.1"
Comp "MaJo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 950  850  1850 1600
U 5FD9520B
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 3850 1000 1800 1550
U 5FD9592B
F0 "FFC conns" 50
F1 "front_panel_conn.sch" 50
F2 "AUX_TX" O R 5650 2450 50 
F3 "AUX_RX" I L 3850 2450 50 
$EndSheet
$Sheet
S 2300 3900 1700 1600
U 5FE40C29
F0 "MCU / Bluepill" 50
F1 "f103_bluepill.sch" 50
F2 "USART3_TX" O R 4000 4000 50 
F3 "USART3_RX" I R 4000 4200 50 
$EndSheet
$Sheet
S 5200 3900 1600 1600
U 5FE40C8B
F0 "F429Discovery connection" 50
F1 "f429disco_conn.sch" 50
F2 "AUXUART7_RX" I L 5200 4200 50 
F3 "AUXUART7_TX" O L 5200 4000 50 
$EndSheet
$Comp
L Device:R_Small R101
U 1 1 61C9834A
P 4250 4000
F 0 "R101" V 4150 4000 50  0000 C CNN
F 1 "100R" V 4350 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4250 4000 50  0001 C CNN
F 3 "~" H 4250 4000 50  0001 C CNN
F 4 "C25076" V 4250 4000 50  0001 C CNN "LCSC"
	1    4250 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2450 6050 2450
Wire Wire Line
	6050 2450 6050 3300
Wire Wire Line
	6050 3300 5000 3300
Wire Wire Line
	5000 3300 5000 4200
Wire Wire Line
	5000 4200 5200 4200
Connection ~ 5000 4200
Wire Wire Line
	4000 4000 4150 4000
Wire Wire Line
	4350 4000 4500 4000
Wire Wire Line
	4500 3000 3600 3000
Wire Wire Line
	3600 3000 3600 2450
Wire Wire Line
	3600 2450 3850 2450
Wire Wire Line
	4000 4200 5000 4200
Wire Wire Line
	4500 3000 4500 4000
Wire Wire Line
	5200 4000 4500 4000
Connection ~ 4500 4000
$Comp
L customlib_mj:Logo_MJ Logo101
U 1 1 6013DA6B
P 8700 7050
F 0 "Logo101" H 8959 7048 50  0000 C CNN
F 1 "Logo_MJ" H 8700 6950 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_10.3x12.7" H 8700 7050 50  0001 C CNN
F 3 "" H 8700 7050 50  0001 C CNN
	1    8700 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H101
U 1 1 6013E8CF
P 8650 5600
F 0 "H101" H 9093 5649 50  0000 C CNN
F 1 "MountingHole_Pad" H 9093 5558 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 8650 5600 50  0001 C CNN
F 3 "~" H 8650 5600 50  0001 C CNN
	1    8650 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H102
U 1 1 6013EAA9
P 9600 5600
F 0 "H102" H 10043 5649 50  0000 C CNN
F 1 "MountingHole_Pad" H 10043 5558 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 9600 5600 50  0001 C CNN
F 3 "~" H 9600 5600 50  0001 C CNN
	1    9600 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H103
U 1 1 6013EFE6
P 8650 6100
F 0 "H103" H 9093 6149 50  0000 C CNN
F 1 "MountingHole_Pad" H 9093 6058 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 8650 6100 50  0001 C CNN
F 3 "~" H 8650 6100 50  0001 C CNN
	1    8650 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H104
U 1 1 6013F3E3
P 9600 6100
F 0 "H104" H 10043 6149 50  0000 C CNN
F 1 "MountingHole_Pad" H 10043 6058 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 9600 6100 50  0001 C CNN
F 3 "~" H 9600 6100 50  0001 C CNN
	1    9600 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 6013F9C1
P 8650 5700
F 0 "#PWR0101" H 8650 5450 50  0001 C CNN
F 1 "GND" H 8650 5550 50  0000 C CNN
F 2 "" H 8650 5700 50  0001 C CNN
F 3 "" H 8650 5700 50  0001 C CNN
	1    8650 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6013FECA
P 9600 5700
F 0 "#PWR0102" H 9600 5450 50  0001 C CNN
F 1 "GND" H 9600 5550 50  0000 C CNN
F 2 "" H 9600 5700 50  0001 C CNN
F 3 "" H 9600 5700 50  0001 C CNN
	1    9600 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60140260
P 9600 6200
F 0 "#PWR0104" H 9600 5950 50  0001 C CNN
F 1 "GND" H 9600 6050 50  0000 C CNN
F 2 "" H 9600 6200 50  0001 C CNN
F 3 "" H 9600 6200 50  0001 C CNN
	1    9600 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60140486
P 8650 6200
F 0 "#PWR0103" H 8650 5950 50  0001 C CNN
F 1 "GND" H 8650 6050 50  0000 C CNN
F 2 "" H 8650 6200 50  0001 C CNN
F 3 "" H 8650 6200 50  0001 C CNN
	1    8650 6200
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:JLC_tooling_hole M101
U 1 1 609221CE
P 7050 6450
F 0 "M101" H 7443 6496 50  0000 C CNN
F 1 "JLC_tooling_hole" H 7443 6405 50  0000 C CNN
F 2 "customlib_mj_fp:JLC_tooling-hole" H 7050 6450 50  0001 C CNN
F 3 "https://support.jlcpcb.com/article/92-how-to-add-tooling-holes-for-smt-assembly-order" H 7050 6450 50  0001 C CNN
	1    7050 6450
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:JLC_tooling_hole M103
U 1 1 60922604
P 8650 6450
F 0 "M103" H 9043 6496 50  0000 C CNN
F 1 "JLC_tooling_hole" H 9043 6405 50  0000 C CNN
F 2 "customlib_mj_fp:JLC_tooling-hole" H 8650 6450 50  0001 C CNN
F 3 "https://support.jlcpcb.com/article/92-how-to-add-tooling-holes-for-smt-assembly-order" H 8650 6450 50  0001 C CNN
	1    8650 6450
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:JLC_tooling_hole M102
U 1 1 609226CE
P 7850 6450
F 0 "M102" H 8243 6496 50  0000 C CNN
F 1 "JLC_tooling_hole" H 8243 6405 50  0000 C CNN
F 2 "customlib_mj_fp:JLC_tooling-hole" H 7850 6450 50  0001 C CNN
F 3 "https://support.jlcpcb.com/article/92-how-to-add-tooling-holes-for-smt-assembly-order" H 7850 6450 50  0001 C CNN
	1    7850 6450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
