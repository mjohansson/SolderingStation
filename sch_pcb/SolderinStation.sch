EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2300 1750 1350 550 
U 5EAB2573
F0 "mcu" 50
F1 "mcu.sch" 50
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5EB953D8
P 9850 5000
F 0 "H?" V 9804 5150 50  0000 L CNN
F 1 "MountingHole_Pad" V 9895 5150 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 9850 5000 50  0001 C CNN
F 3 "~" H 9850 5000 50  0001 C CNN
	1    9850 5000
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5EB953DE
P 9850 5250
F 0 "H?" V 9804 5400 50  0000 L CNN
F 1 "MountingHole_Pad" V 9895 5400 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 9850 5250 50  0001 C CNN
F 3 "~" H 9850 5250 50  0001 C CNN
	1    9850 5250
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5EB953E4
P 9850 5500
F 0 "H?" V 9804 5650 50  0000 L CNN
F 1 "MountingHole_Pad" V 9895 5650 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 9850 5500 50  0001 C CNN
F 3 "~" H 9850 5500 50  0001 C CNN
	1    9850 5500
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 5EB953EA
P 9850 5750
F 0 "H?" V 9804 5900 50  0000 L CNN
F 1 "MountingHole_Pad" V 9895 5900 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 9850 5750 50  0001 C CNN
F 3 "~" H 9850 5750 50  0001 C CNN
	1    9850 5750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB953F0
P 9650 5850
F 0 "#PWR?" H 9650 5600 50  0001 C CNN
F 1 "GND" H 9655 5677 50  0000 C CNN
F 2 "" H 9650 5850 50  0001 C CNN
F 3 "" H 9650 5850 50  0001 C CNN
	1    9650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5850 9650 5750
Wire Wire Line
	9650 5000 9750 5000
Wire Wire Line
	9750 5250 9650 5250
Connection ~ 9650 5250
Wire Wire Line
	9650 5250 9650 5000
Wire Wire Line
	9750 5500 9650 5500
Connection ~ 9650 5500
Wire Wire Line
	9650 5500 9650 5250
Wire Wire Line
	9750 5750 9650 5750
Connection ~ 9650 5750
Wire Wire Line
	9650 5750 9650 5500
Wire Notes Line
	9550 6100 9550 4900
Wire Notes Line
	9550 4900 10700 4900
Wire Notes Line
	10700 4900 10700 6100
Wire Notes Line
	9550 6100 10700 6100
Text Notes 9550 4850 0    50   ~ 0
Mounting Holes
$Sheet
S 2050 7200 1800 500 
U 5EB58B1D
F0 "Sheet5EB58B1C" 50
F1 "handle.sch" 50
$EndSheet
$Sheet
S 2100 4950 1700 750 
U 5EB5968B
F0 "ethernet" 50
F1 "ethernet.sch" 50
$EndSheet
$Sheet
S 5450 4650 2000 700 
U 5EB72150
F0 "Current_Sense_and_Switch" 50
F1 "Current_Sense_and_Switch.sch" 50
$EndSheet
$EndSCHEMATC
