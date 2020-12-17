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
F 1 "100" V 4350 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 4000 50  0001 C CNN
F 3 "~" H 4250 4000 50  0001 C CNN
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
$EndSCHEMATC
