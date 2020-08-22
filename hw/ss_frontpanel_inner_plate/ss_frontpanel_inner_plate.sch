EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "Inner front-panel carrier board"
Date "2020-05-15"
Rev "R1a"
Comp "MaJo Electronics :)"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 700  1800 0    80   ~ 0
2x 14pin, 0.5mm FF-FFCs (multiple gnd/vdd instead of N/C)\nPinout LCD-conn:\n1: D/Cn,  2: VDD_IO\n3. GND, 4: SCK\n5: MOSI, 6: Enc2_A\n7: SDA, 8: Enc2_B\n9: SCL 10: Enc2_SW\n11: CSn 12: PB-1B (left Grayhill)\n13: GND 14: PB-1A
Text Notes 4950 1650 0    80   ~ 0
Pinout AUX- & ENC-conn:\n1: Aux_BOOT0,  2: EncoderPBn\n3: AuxIRQn, 4: Enc_B\n5: RESn, 6: Enc_A\n7: VDD_IO 8: AUX_TX\n9: AUX_RX, 10: VDD_IO\n11: HWID, 12: GND\n13: PB_2B, 14: PB_2A (Grayhill)
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F15FBB3
P 5200 6700
F 0 "H1" H 5643 6749 50  0000 C CNN
F 1 "MountingHole_Pad" H 5643 6658 50  0000 C CNN
F 2 "customlib_mj_fp:MountingHole_3-6mm_pth" H 5200 6700 50  0001 C CNN
F 3 "~" H 5200 6700 50  0001 C CNN
	1    5200 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F16082B
P 6100 6700
F 0 "H2" H 6543 6749 50  0000 C CNN
F 1 "MountingHole_Pad" H 6543 6658 50  0000 C CNN
F 2 "customlib_mj_fp:MountingHole_3-6mm_pth" H 6100 6700 50  0001 C CNN
F 3 "~" H 6100 6700 50  0001 C CNN
	1    6100 6700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F16086F
P 5200 7350
F 0 "H3" H 5643 7399 50  0000 C CNN
F 1 "MountingHole_Pad" H 5643 7308 50  0000 C CNN
F 2 "customlib_mj_fp:MountingHole_3-6mm_pth" H 5200 7350 50  0001 C CNN
F 3 "~" H 5200 7350 50  0001 C CNN
	1    5200 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F1608B3
P 6100 7350
F 0 "H4" H 6543 7399 50  0000 C CNN
F 1 "MountingHole_Pad" H 6543 7308 50  0000 C CNN
F 2 "customlib_mj_fp:MountingHole_3-6mm_pth" H 6100 7350 50  0001 C CNN
F 3 "~" H 6100 7350 50  0001 C CNN
	1    6100 7350
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Frontpanel_R_RotaryEnc_Pushbtns_holder ASM2
U 1 1 5F227C77
P 9950 1600
F 0 "ASM2" H 9950 2565 50  0000 C CNN
F 1 "Frontpanel_R_RotaryEnc_Pushbtns_holder" H 9950 2474 50  0000 C CNN
F 2 "customlib_mj_fp:Frontpanel_R_RotaryEnc_Pushbtns_holder-one_M3_removed" H 9925 2025 50  0001 C CNN
F 3 "" H 9925 2025 50  0001 C CNN
	1    9950 1600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:FFC_conn_14p J1
U 1 1 5F22FBC1
P 850 3250
F 0 "J1" H 850 4050 50  0000 C CNN
F 1 "FFC_conn_14p" V 950 3250 50  0000 C CNN
F 2 "customlib_mj_fp:FPC_14p_05mm-Universal" H 800 3250 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/687114182122.pdf" H 800 3250 50  0001 C CNN
	1    850  3250
	-1   0    0    -1  
$EndComp
$Comp
L customlib_mj:FFC_conn_14p J2
U 1 1 5F232ADA
P 5500 3250
F 0 "J2" H 5500 4050 50  0000 C CNN
F 1 "FFC_conn_14p" V 5600 3250 50  0000 C CNN
F 2 "customlib_mj_fp:FPC_14p_05mm-Universal" H 5450 3250 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/687114182122.pdf" H 5450 3250 50  0001 C CNN
	1    5500 3250
	-1   0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR07
U 1 1 5F246F42
P 1100 2450
F 0 "#PWR07" H 1100 2300 50  0001 C CNN
F 1 "VDD_IO" H 1100 2600 50  0000 C CNN
F 2 "" H 1100 2450 50  0001 C CNN
F 3 "" H 1100 2450 50  0001 C CNN
	1    1100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2900 1450 2900
Text Label 1450 2900 2    50   ~ 0
SCK
Wire Wire Line
	950  3000 1450 3000
Wire Wire Line
	5600 3400 6200 3400
Wire Wire Line
	5600 3300 6200 3300
Wire Wire Line
	5600 2800 6200 2800
Wire Wire Line
	5600 2600 6200 2600
Text Label 1450 3000 2    50   ~ 0
MOSI
Text Label 1450 3600 2    50   ~ 0
~CSn~
Text Label 6200 3400 2    50   ~ 0
AUX_RX
Text Label 6200 3300 2    50   ~ 0
AUX_TX
Text Label 6200 2800 2    50   ~ 0
~AUX_IRQn~
Text Label 6200 2600 2    50   ~ 0
AUX_BOOT0
$Comp
L Device:C_Small C1
U 1 1 5F24F668
P 1800 2350
F 0 "C1" H 1892 2396 50  0000 L CNN
F 1 "100n" H 1892 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 2350 50  0001 C CNN
F 3 "~" H 1800 2350 50  0001 C CNN
	1    1800 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F25088C
P 2200 2350
F 0 "C2" H 2292 2396 50  0000 L CNN
F 1 "10u" H 2292 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2200 2350 50  0001 C CNN
F 3 "~" H 2200 2350 50  0001 C CNN
	1    2200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F250B9F
P 1800 2500
F 0 "#PWR08" H 1800 2250 50  0001 C CNN
F 1 "GND" H 1800 2350 50  0000 C CNN
F 2 "" H 1800 2500 50  0001 C CNN
F 3 "" H 1800 2500 50  0001 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F2512E3
P 2200 2500
F 0 "#PWR09" H 2200 2250 50  0001 C CNN
F 1 "GND" H 2200 2350 50  0000 C CNN
F 2 "" H 2200 2500 50  0001 C CNN
F 3 "" H 2200 2500 50  0001 C CNN
	1    2200 2500
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR03
U 1 1 5F25167B
P 1800 2200
F 0 "#PWR03" H 1800 2050 50  0001 C CNN
F 1 "VDD_IO" H 1800 2350 50  0000 C CNN
F 2 "" H 1800 2200 50  0001 C CNN
F 3 "" H 1800 2200 50  0001 C CNN
	1    1800 2200
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR04
U 1 1 5F251A53
P 2200 2200
F 0 "#PWR04" H 2200 2050 50  0001 C CNN
F 1 "VDD_IO" H 2200 2350 50  0000 C CNN
F 2 "" H 2200 2200 50  0001 C CNN
F 3 "" H 2200 2200 50  0001 C CNN
	1    2200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2200 1800 2250
Wire Wire Line
	2200 2200 2200 2250
Wire Wire Line
	2200 2450 2200 2500
Wire Wire Line
	1800 2450 1800 2500
Wire Wire Line
	5200 7450 5200 7550
Wire Wire Line
	6100 7450 6100 7550
Wire Wire Line
	6100 6800 6100 6900
Wire Wire Line
	5200 6800 5200 6900
$Comp
L power:GND #PWR024
U 1 1 5F248467
P 1100 4050
F 0 "#PWR024" H 1100 3800 50  0001 C CNN
F 1 "GND" H 1100 3900 50  0000 C CNN
F 2 "" H 1100 4050 50  0001 C CNN
F 3 "" H 1100 4050 50  0001 C CNN
	1    1100 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5F26CE8C
P 3950 6250
F 0 "#PWR032" H 3950 6000 50  0001 C CNN
F 1 "GND" H 3950 6100 50  0000 C CNN
F 2 "" H 3950 6250 50  0001 C CNN
F 3 "" H 3950 6250 50  0001 C CNN
	1    3950 6250
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR030
U 1 1 5F270AC3
P 4000 6100
F 0 "#PWR030" H 4000 5950 50  0001 C CNN
F 1 "VDD_IO" H 4000 6250 50  0000 C CNN
F 2 "" H 4000 6100 50  0001 C CNN
F 3 "" H 4000 6100 50  0001 C CNN
	1    4000 6100
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR036
U 1 1 5F2725ED
P 2750 7100
F 0 "#PWR036" H 2750 6950 50  0001 C CNN
F 1 "VDD_IO" H 2750 7250 50  0000 C CNN
F 2 "" H 2750 7100 50  0001 C CNN
F 3 "" H 2750 7100 50  0001 C CNN
	1    2750 7100
	1    0    0    -1  
$EndComp
Text Notes 850  6700 0    60   ~ 12
Outside, left\nAddr=1001000
Text Notes 3350 6700 0    60   ~ 12
Outside, right\nAddr=1001010
Text Notes 2100 7700 0    60   ~ 12
Inside, mid\nAddr=1001101
Text Notes 3350 7700 0    60   ~ 12
Inside, right\nAddr=1001110
$Sheet
S 850  5900 500  500 
U 5F2BD2B3
F0 "TS Out left" 50
F1 "temp_sensor.sch" 50
F2 "SCL" I L 850 6000 50 
F3 "SDA" B L 850 6100 50 
F4 "A0" I R 1350 6100 50 
F5 "A1" I R 1350 6200 50 
$EndSheet
$Sheet
S 3350 5900 500  500 
U 5F2BD7F7
F0 "TS Out right" 50
F1 "temp_sensor.sch" 50
F2 "SCL" I L 3350 6000 50 
F3 "SDA" B L 3350 6100 50 
F4 "A0" I R 3850 6100 50 
F5 "A1" I R 3850 6200 50 
$EndSheet
$Sheet
S 3350 6900 500  500 
U 5F2C0DB1
F0 "TS In right" 50
F1 "temp_sensor.sch" 50
F2 "SCL" I L 3350 7000 50 
F3 "SDA" B L 3350 7100 50 
F4 "A0" I R 3850 7200 50 
F5 "A1" I R 3850 7100 50 
$EndSheet
$Sheet
S 2100 6900 500  500 
U 5F2BE052
F0 "TS In mid" 50
F1 "temp_sensor.sch" 50
F2 "SCL" I L 2100 7000 50 
F3 "SDA" B L 2100 7100 50 
F4 "A0" I R 2600 7200 50 
F5 "A1" I R 2600 7100 50 
$EndSheet
$Sheet
S 850  6900 500  500 
U 5F2BDC1C
F0 "TS In left" 50
F1 "temp_sensor.sch" 50
F2 "SCL" I L 850 7000 50 
F3 "SDA" B L 850 7100 50 
F4 "A0" I R 1350 7200 50 
F5 "A1" I R 1350 7100 50 
$EndSheet
$Comp
L power:GND #PWR031
U 1 1 5F2C9391
P 1450 6250
F 0 "#PWR031" H 1450 6000 50  0001 C CNN
F 1 "GND" H 1450 6100 50  0000 C CNN
F 2 "" H 1450 6250 50  0001 C CNN
F 3 "" H 1450 6250 50  0001 C CNN
	1    1450 6250
	1    0    0    -1  
$EndComp
NoConn ~ 2700 7200
$Comp
L customlib_mj:VDD_IO #PWR037
U 1 1 5F2DC107
P 4000 7100
F 0 "#PWR037" H 4000 6950 50  0001 C CNN
F 1 "VDD_IO" H 4000 7250 50  0000 C CNN
F 2 "" H 4000 7100 50  0001 C CNN
F 3 "" H 4000 7100 50  0001 C CNN
	1    4000 7100
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR035
U 1 1 5F2DCD71
P 1500 7100
F 0 "#PWR035" H 1500 6950 50  0001 C CNN
F 1 "VDD_IO" H 1500 7250 50  0000 C CNN
F 2 "" H 1500 7100 50  0001 C CNN
F 3 "" H 1500 7100 50  0001 C CNN
	1    1500 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5F2DD1C0
P 1450 7250
F 0 "#PWR038" H 1450 7000 50  0001 C CNN
F 1 "GND" H 1450 7100 50  0000 C CNN
F 2 "" H 1450 7250 50  0001 C CNN
F 3 "" H 1450 7250 50  0001 C CNN
	1    1450 7250
	1    0    0    -1  
$EndComp
Text Notes 850  7700 0    60   ~ 12
Inside, left\nAddr=1001100
Wire Wire Line
	3350 7000 3100 7000
Wire Wire Line
	3350 7100 3100 7100
Wire Wire Line
	2100 7000 1850 7000
Wire Wire Line
	2100 7100 1850 7100
Text Label 3100 7000 0    50   ~ 0
SCL
Text Label 3100 7100 0    50   ~ 0
SDA
Text Label 1850 7000 0    50   ~ 0
SCL
Text Label 1850 7100 0    50   ~ 0
SDA
Wire Wire Line
	850  7000 600  7000
Wire Wire Line
	850  7100 600  7100
Text Label 600  7000 0    50   ~ 0
SCL
Text Label 600  7100 0    50   ~ 0
SDA
Wire Wire Line
	850  6000 600  6000
Wire Wire Line
	850  6100 600  6100
Text Label 600  6000 0    50   ~ 0
SCL
Text Label 600  6100 0    50   ~ 0
SDA
Wire Wire Line
	3350 6000 3100 6000
Wire Wire Line
	3350 6100 3100 6100
Text Label 3100 6000 0    50   ~ 0
SCL
Text Label 3100 6100 0    50   ~ 0
SDA
Wire Wire Line
	1450 6250 1450 6200
Wire Wire Line
	1450 6100 1350 6100
Wire Wire Line
	1350 6200 1450 6200
Connection ~ 1450 6200
Wire Wire Line
	1450 6200 1450 6100
Wire Wire Line
	3950 6250 3950 6200
Wire Wire Line
	3950 6200 3850 6200
Wire Wire Line
	4000 6100 3850 6100
Wire Wire Line
	1350 7200 1450 7200
Wire Wire Line
	1450 7200 1450 7250
Wire Wire Line
	1350 7100 1500 7100
Wire Wire Line
	2600 7100 2750 7100
Wire Wire Line
	3850 7100 3950 7100
Wire Wire Line
	3850 7200 3950 7200
Wire Wire Line
	3950 7200 3950 7100
Connection ~ 3950 7100
Wire Wire Line
	3950 7100 4000 7100
Wire Wire Line
	2600 7200 2700 7200
Wire Notes Line
	1700 6700 550  6700
Wire Notes Line
	550  6700 550  5750
Wire Notes Line
	550  5750 1700 5750
Wire Notes Line
	1700 5750 1700 6700
Wire Notes Line
	4200 6700 3050 6700
Wire Notes Line
	3050 6700 3050 5750
Wire Notes Line
	3050 5750 4200 5750
Wire Notes Line
	4200 5750 4200 6700
Wire Notes Line
	1700 7700 550  7700
Wire Notes Line
	550  7700 550  6750
Wire Notes Line
	550  6750 1700 6750
Wire Notes Line
	1700 6750 1700 7700
Wire Notes Line
	2950 7700 1800 7700
Wire Notes Line
	1800 7700 1800 6750
Wire Notes Line
	1800 6750 2950 6750
Wire Notes Line
	2950 6750 2950 7700
Wire Notes Line
	4200 7700 3050 7700
Wire Notes Line
	3050 7700 3050 6750
Wire Notes Line
	3050 6750 4200 6750
Wire Notes Line
	4200 6750 4200 7700
$Comp
L customlib_mj:NHD-3.12-25664 OLED1
U 1 1 5F35623C
P 2950 3200
F 0 "OLED1" H 2950 3550 50  0000 C CNN
F 1 "NHD-3.12-25664" H 2950 3450 50  0000 C CNN
F 2 "customlib_mj_fp:NHD3_12-Flush_with_bridge_cutouts" H 2950 3200 50  0001 C CNN
F 3 "https://www.newhavendisplay.com/specs/NHD-3.12-25664UCW2.pdf" H 2950 3200 50  0001 C CNN
	1    2950 3200
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR015
U 1 1 5F35B33F
P 3900 2850
F 0 "#PWR015" H 3900 2700 50  0001 C CNN
F 1 "VDD_IO" H 3900 3000 50  0000 C CNN
F 2 "" H 3900 2850 50  0001 C CNN
F 3 "" H 3900 2850 50  0001 C CNN
	1    3900 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F35B91F
P 1950 3750
F 0 "#PWR020" H 1950 3500 50  0001 C CNN
F 1 "GND" H 1950 3600 50  0000 C CNN
F 2 "" H 1950 3750 50  0001 C CNN
F 3 "" H 1950 3750 50  0001 C CNN
	1    1950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3750 1950 3600
Wire Wire Line
	1950 3600 2000 3600
Wire Wire Line
	3750 3000 3900 3000
Wire Wire Line
	3900 3000 3900 2850
$Comp
L power:GND #PWR023
U 1 1 5F361399
P 2700 3950
F 0 "#PWR023" H 2700 3700 50  0001 C CNN
F 1 "GND" H 2700 3800 50  0000 C CNN
F 2 "" H 2700 3950 50  0001 C CNN
F 3 "" H 2700 3950 50  0001 C CNN
	1    2700 3950
	1    0    0    -1  
$EndComp
NoConn ~ 2650 3800
Wire Wire Line
	2500 3800 2500 3950
Wire Wire Line
	2700 3850 2700 3950
Wire Wire Line
	2700 3850 2750 3850
Wire Wire Line
	3150 3850 3150 3800
Wire Wire Line
	3050 3800 3050 3850
Connection ~ 3050 3850
Wire Wire Line
	3050 3850 3150 3850
Wire Wire Line
	2950 3800 2950 3850
Connection ~ 2950 3850
Wire Wire Line
	2950 3850 3050 3850
Wire Wire Line
	2850 3800 2850 3850
Connection ~ 2850 3850
Wire Wire Line
	2850 3850 2950 3850
Wire Wire Line
	2750 3800 2750 3850
Connection ~ 2750 3850
Wire Wire Line
	2750 3850 2850 3850
Wire Wire Line
	950  3600 1450 3600
Wire Wire Line
	950  3500 1450 3500
Wire Wire Line
	2150 3500 2100 3500
Wire Wire Line
	2100 3500 2100 3600
Connection ~ 2100 3600
Wire Wire Line
	2100 3600 2150 3600
Wire Wire Line
	2150 3400 2050 3400
Wire Wire Line
	2050 3400 2050 3600
Connection ~ 2050 3600
Wire Wire Line
	2050 3600 2100 3600
Wire Wire Line
	2150 3100 2100 3100
Wire Wire Line
	2000 3100 2000 3600
Connection ~ 2000 3600
Wire Wire Line
	2000 3600 2050 3600
Wire Wire Line
	2150 3000 2100 3000
Wire Wire Line
	2100 3000 2100 3100
Connection ~ 2100 3100
Wire Wire Line
	2100 3100 2000 3100
Text Notes 2800 4000 0    60   ~ 12
(4-wire serial mode)
Wire Wire Line
	3750 3500 4000 3500
Wire Wire Line
	3750 3600 4000 3600
Wire Wire Line
	3750 3400 4000 3400
Text Label 4000 3500 2    50   ~ 0
SCK
Text Label 4000 3600 2    50   ~ 0
MOSI
Text Label 1450 2600 2    50   ~ 0
D~Cn~
$Comp
L Device:C_Small C5
U 1 1 5F391D93
P 4150 3250
F 0 "C5" H 4242 3296 50  0000 L CNN
F 1 "100n" H 4242 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4150 3250 50  0001 C CNN
F 3 "~" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F391D9D
P 4550 3250
F 0 "C6" H 4642 3296 50  0000 L CNN
F 1 "10u" H 4642 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4550 3250 50  0001 C CNN
F 3 "~" H 4550 3250 50  0001 C CNN
	1    4550 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5F391DA7
P 4150 3400
F 0 "#PWR018" H 4150 3150 50  0001 C CNN
F 1 "GND" H 4150 3250 50  0000 C CNN
F 2 "" H 4150 3400 50  0001 C CNN
F 3 "" H 4150 3400 50  0001 C CNN
	1    4150 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5F391DB1
P 4550 3400
F 0 "#PWR019" H 4550 3150 50  0001 C CNN
F 1 "GND" H 4550 3250 50  0000 C CNN
F 2 "" H 4550 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0001 C CNN
	1    4550 3400
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR016
U 1 1 5F391DBB
P 4150 3100
F 0 "#PWR016" H 4150 2950 50  0001 C CNN
F 1 "VDD_IO" H 4150 3250 50  0000 C CNN
F 2 "" H 4150 3100 50  0001 C CNN
F 3 "" H 4150 3100 50  0001 C CNN
	1    4150 3100
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR017
U 1 1 5F391DC5
P 4550 3100
F 0 "#PWR017" H 4550 2950 50  0001 C CNN
F 1 "VDD_IO" H 4550 3250 50  0000 C CNN
F 2 "" H 4550 3100 50  0001 C CNN
F 3 "" H 4550 3100 50  0001 C CNN
	1    4550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3100 4150 3150
Wire Wire Line
	4550 3100 4550 3150
Wire Wire Line
	4550 3350 4550 3400
Wire Wire Line
	4150 3350 4150 3400
$Comp
L customlib_mj:VDD_IO #PWR010
U 1 1 5F3AAE6B
P 5700 2300
F 0 "#PWR010" H 5700 2150 50  0001 C CNN
F 1 "VDD_IO" H 5700 2450 50  0000 C CNN
F 2 "" H 5700 2300 50  0001 C CNN
F 3 "" H 5700 2300 50  0001 C CNN
	1    5700 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F3AAE77
P 6150 2100
F 0 "C3" H 6242 2146 50  0000 L CNN
F 1 "100n" H 6242 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6150 2100 50  0001 C CNN
F 3 "~" H 6150 2100 50  0001 C CNN
	1    6150 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F3AAE81
P 6550 2100
F 0 "C4" H 6642 2146 50  0000 L CNN
F 1 "10u" H 6642 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6550 2100 50  0001 C CNN
F 3 "~" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F3AAE8B
P 6150 2250
F 0 "#PWR011" H 6150 2000 50  0001 C CNN
F 1 "GND" H 6150 2100 50  0000 C CNN
F 2 "" H 6150 2250 50  0001 C CNN
F 3 "" H 6150 2250 50  0001 C CNN
	1    6150 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F3AAE95
P 6550 2250
F 0 "#PWR012" H 6550 2000 50  0001 C CNN
F 1 "GND" H 6550 2100 50  0000 C CNN
F 2 "" H 6550 2250 50  0001 C CNN
F 3 "" H 6550 2250 50  0001 C CNN
	1    6550 2250
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR05
U 1 1 5F3AAE9F
P 6150 1950
F 0 "#PWR05" H 6150 1800 50  0001 C CNN
F 1 "VDD_IO" H 6150 2100 50  0000 C CNN
F 2 "" H 6150 1950 50  0001 C CNN
F 3 "" H 6150 1950 50  0001 C CNN
	1    6150 1950
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR06
U 1 1 5F3AAEA9
P 6550 1950
F 0 "#PWR06" H 6550 1800 50  0001 C CNN
F 1 "VDD_IO" H 6550 2100 50  0000 C CNN
F 2 "" H 6550 1950 50  0001 C CNN
F 3 "" H 6550 1950 50  0001 C CNN
	1    6550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1950 6150 2000
Wire Wire Line
	6550 1950 6550 2000
Wire Wire Line
	6550 2200 6550 2250
Wire Wire Line
	6150 2200 6150 2250
$Comp
L power:GND #PWR025
U 1 1 5F3B2A14
P 5700 4100
F 0 "#PWR025" H 5700 3850 50  0001 C CNN
F 1 "GND" H 5700 3950 50  0000 C CNN
F 2 "" H 5700 4100 50  0001 C CNN
F 3 "" H 5700 4100 50  0001 C CNN
	1    5700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3900 1450 3900
Wire Wire Line
	950  3700 1450 3700
Wire Wire Line
	5600 3900 6050 3900
Wire Wire Line
	5600 3800 6050 3800
Wire Wire Line
	5600 3100 6200 3100
Wire Wire Line
	5600 2900 6200 2900
Wire Wire Line
	5600 2700 6200 2700
Text Label 1450 3900 2    50   ~ 0
PB_1A
Text Label 1450 3700 2    50   ~ 0
PB_1B
Text Label 6050 3900 2    50   ~ 0
PB_2A
Text Label 6050 3800 2    50   ~ 0
PB_2B
Text Label 6200 3100 2    50   ~ 0
ENC_A
Text Label 6200 2900 2    50   ~ 0
ENC_B
Text Label 6200 2700 2    50   ~ 0
ENC_SWn
Wire Wire Line
	5600 3600 6050 3600
Wire Wire Line
	7300 1900 7200 1900
Wire Wire Line
	9650 1900 9550 1900
Wire Wire Line
	7900 1900 8500 1900
Wire Wire Line
	7900 2000 8500 2000
Text Label 8500 2000 2    50   ~ 0
PB_1A
Text Label 8500 1900 2    50   ~ 0
PB_1B
Wire Wire Line
	10250 1900 10850 1900
Wire Wire Line
	10250 2000 10850 2000
Text Label 10850 2000 2    50   ~ 0
PB_2A
Text Label 10850 1900 2    50   ~ 0
PB_2B
Wire Wire Line
	10350 1000 10900 1000
Wire Wire Line
	10350 1100 10900 1100
Wire Wire Line
	10350 1200 10900 1200
Text Label 10900 1000 2    50   ~ 0
ENC_A
Text Label 10900 1100 2    50   ~ 0
ENC_B
Text Label 10900 1200 2    50   ~ 0
ENC_SWn
$Comp
L customlib_mj:VDD_IO #PWR01
U 1 1 5F436C13
P 11000 850
F 0 "#PWR01" H 11000 700 50  0001 C CNN
F 1 "VDD_IO" H 11000 1000 50  0000 C CNN
F 2 "" H 11000 850 50  0001 C CNN
F 3 "" H 11000 850 50  0001 C CNN
	1    11000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 850  11000 1300
Wire Wire Line
	11000 1300 10350 1300
Text Label 4000 3400 2    50   ~ 0
D~Cn~
Wire Wire Line
	5600 3700 5700 3700
Wire Wire Line
	5700 3700 5700 4050
Wire Wire Line
	950  3200 1450 3200
Wire Wire Line
	950  3400 1450 3400
Text Label 1450 3200 2    50   ~ 0
SDA
Text Label 1450 3400 2    50   ~ 0
SCL
$Comp
L power:GND #PWR013
U 1 1 5F47C707
P 7200 2200
F 0 "#PWR013" H 7200 1950 50  0001 C CNN
F 1 "GND" H 7200 2050 50  0000 C CNN
F 2 "" H 7200 2200 50  0001 C CNN
F 3 "" H 7200 2200 50  0001 C CNN
	1    7200 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F47CC32
P 9550 2200
F 0 "#PWR014" H 9550 1950 50  0001 C CNN
F 1 "GND" H 9550 2050 50  0000 C CNN
F 2 "" H 9550 2200 50  0001 C CNN
F 3 "" H 9550 2200 50  0001 C CNN
	1    9550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1900 9550 2200
Wire Wire Line
	7200 2200 7200 1900
$Comp
L power:GND #PWR02
U 1 1 5F485434
P 10700 1500
F 0 "#PWR02" H 10700 1250 50  0001 C CNN
F 1 "GND" H 10700 1350 50  0000 C CNN
F 2 "" H 10700 1500 50  0001 C CNN
F 3 "" H 10700 1500 50  0001 C CNN
	1    10700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1500 10700 1400
Wire Wire Line
	10700 1400 10350 1400
$Comp
L power:GND #PWR022
U 1 1 5F49A151
P 2500 3950
F 0 "#PWR022" H 2500 3700 50  0001 C CNN
F 1 "GND" H 2500 3800 50  0000 C CNN
F 2 "" H 2500 3950 50  0001 C CNN
F 3 "" H 2500 3950 50  0001 C CNN
	1    2500 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5F4ADEB4
P 9900 4300
F 0 "#PWR029" H 9900 4050 50  0001 C CNN
F 1 "GND" H 9900 4150 50  0000 C CNN
F 2 "" H 9900 4300 50  0001 C CNN
F 3 "" H 9900 4300 50  0001 C CNN
	1    9900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 3100 9500 3100
Text Label 9500 3100 0    50   ~ 0
HWID_LSBs
Wire Wire Line
	9500 3400 10050 3400
Wire Wire Line
	9500 4200 10050 4200
Wire Wire Line
	9500 3500 10050 3500
Text Label 9500 3300 0    50   ~ 0
AUX_RX
Text Label 9500 3400 0    50   ~ 0
AUX_TX
Text Label 9500 4200 0    50   ~ 0
~AUX_IRQn~
Text Label 9500 3500 0    50   ~ 0
AUX_BOOT0
$Comp
L Device:R_Small R2
U 1 1 5F50498C
P 2100 4750
F 0 "R2" H 2150 4800 50  0000 L CNN
F 1 "10k" H 2150 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2100 4750 50  0001 C CNN
F 3 "~" H 2100 4750 50  0001 C CNN
	1    2100 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F504C3A
P 2450 4750
F 0 "R3" H 2500 4800 50  0000 L CNN
F 1 "20k" H 2500 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2450 4750 50  0001 C CNN
F 3 "~" H 2450 4750 50  0001 C CNN
	1    2450 4750
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR026
U 1 1 5F507734
P 2300 4500
F 0 "#PWR026" H 2300 4350 50  0001 C CNN
F 1 "VDD_IO" H 2300 4650 50  0000 C CNN
F 2 "" H 2300 4500 50  0001 C CNN
F 3 "" H 2300 4500 50  0001 C CNN
	1    2300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4650 2100 4600
Wire Wire Line
	2100 4600 2300 4600
Wire Wire Line
	2450 4650 2450 4600
Wire Wire Line
	2100 4850 2100 4950
Wire Wire Line
	2100 4950 2450 4950
Wire Wire Line
	2450 4850 2450 4950
Connection ~ 2450 4950
Wire Wire Line
	2450 4950 2700 4950
Text Notes 1900 5050 0    50   ~ 0
[Msb:10k]
Text Notes 2300 5050 0    50   ~ 0
[b2:20k]
Text Notes 2800 5050 0    50   ~ 0
[b1:40k]
Text Notes 3300 5050 0    50   ~ 0
[Lsb:80k]
Text Label 3950 4950 2    50   ~ 0
HWID_0_i
$Comp
L Device:R_Small R7
U 1 1 5F5A2D57
P 2800 5250
F 0 "R7" H 2850 5300 50  0000 L CNN
F 1 "27k" H 2850 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2800 5250 50  0001 C CNN
F 3 "~" H 2800 5250 50  0001 C CNN
	1    2800 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5F5A3425
P 2600 5250
F 0 "C7" H 2314 5204 50  0000 L CNN
F 1 "100n" H 2314 5295 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2600 5250 50  0001 C CNN
F 3 "~" H 2600 5250 50  0001 C CNN
	1    2600 5250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5F5A3B35
P 2700 5450
F 0 "#PWR028" H 2700 5200 50  0001 C CNN
F 1 "GND" H 2700 5300 50  0000 C CNN
F 2 "" H 2700 5450 50  0001 C CNN
F 3 "" H 2700 5450 50  0001 C CNN
	1    2700 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5100 2750 5050
Wire Wire Line
	2750 5050 2700 5050
Wire Wire Line
	2700 5050 2700 4950
Connection ~ 2700 4950
Wire Wire Line
	2600 5350 2600 5400
Wire Wire Line
	2600 5400 2700 5400
Wire Wire Line
	2800 5400 2800 5350
Wire Wire Line
	2700 5400 2700 5450
Connection ~ 2700 5400
Wire Wire Line
	2700 5400 2800 5400
Wire Wire Line
	2300 4500 2300 4600
Connection ~ 2300 4600
Wire Wire Line
	2300 4600 2450 4600
Text Notes 2450 4550 0    50   ~ 0
Rx(4-bit) range=[open, 80k, ..., 5,33k]\nV_hwid(min) = 27/(80+27)*3.0V = 0,76V\nV_hwid(max) = 27(5.33+27)*3.0V = 2,51V
Wire Wire Line
	2700 5050 2650 5050
Wire Wire Line
	2650 5050 2600 5100
Connection ~ 2700 5050
Wire Wire Line
	2800 5150 2800 5100
Wire Wire Line
	2600 5150 2600 5100
Text Notes 3150 5250 0    60   ~ 12
Analog HWID (4b)
Wire Notes Line
	1850 5650 4150 5650
Wire Notes Line
	4150 5650 4150 4300
Wire Notes Line
	4150 4300 1850 4300
Wire Notes Line
	1850 4300 1850 5650
Wire Wire Line
	9500 3300 10050 3300
Wire Wire Line
	10050 3800 9500 3800
Text Label 9500 3800 0    50   ~ 0
~RESn~
$Comp
L customlib_mj:VDD_IO #PWR027
U 1 1 5F4A0B12
P 9900 2700
F 0 "#PWR027" H 9900 2550 50  0001 C CNN
F 1 "VDD_IO" H 9900 2850 50  0000 C CNN
F 2 "" H 9900 2700 50  0001 C CNN
F 3 "" H 9900 2700 50  0001 C CNN
	1    9900 2700
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:FFC_conn_14p J3
U 1 1 5F79666C
P 10150 3550
F 0 "J3" H 10150 4300 50  0000 C CNN
F 1 "FFC_conn_14p" V 10250 3550 50  0000 C CNN
F 2 "customlib_mj_fp:FPC_14p_05mm-WE_687114182122" H 10100 3550 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/687114182122.pdf" H 10100 3550 50  0001 C CNN
	1    10150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2700 9900 2900
Wire Wire Line
	9900 2900 10050 2900
Wire Wire Line
	9900 3000 10050 3000
$Comp
L customlib_mj:VDD_IO #PWR067
U 1 1 5F7DEA65
P 10400 4100
F 0 "#PWR067" H 10400 3950 50  0001 C CNN
F 1 "VDD_IO" H 10400 4250 50  0000 C CNN
F 2 "" H 10400 4100 50  0001 C CNN
F 3 "" H 10400 4100 50  0001 C CNN
	1    10400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 4100 10000 4300
Wire Wire Line
	10000 4300 10400 4300
Wire Wire Line
	10400 4300 10400 4100
$Comp
L customlib_mj:VDD_IO #PWR062
U 1 1 5F7F5DF5
P 6550 4950
F 0 "#PWR062" H 6550 4800 50  0001 C CNN
F 1 "VDD_IO" H 6550 5100 50  0000 C CNN
F 2 "" H 6550 4950 50  0001 C CNN
F 3 "" H 6550 4950 50  0001 C CNN
	1    6550 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR066
U 1 1 5F7F6420
P 6550 5750
F 0 "#PWR066" H 6550 5500 50  0001 C CNN
F 1 "GND" H 6550 5600 50  0000 C CNN
F 2 "" H 6550 5750 50  0001 C CNN
F 3 "" H 6550 5750 50  0001 C CNN
	1    6550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5750 6550 5650
Wire Wire Line
	6550 5050 6550 4950
$Comp
L Device:C_Small C13
U 1 1 5F80912E
P 6900 5400
F 0 "C13" H 6992 5446 50  0000 L CNN
F 1 "100n" H 6992 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6900 5400 50  0001 C CNN
F 3 "~" H 6900 5400 50  0001 C CNN
	1    6900 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR065
U 1 1 5F809138
P 6900 5550
F 0 "#PWR065" H 6900 5300 50  0001 C CNN
F 1 "GND" H 6900 5400 50  0000 C CNN
F 2 "" H 6900 5550 50  0001 C CNN
F 3 "" H 6900 5550 50  0001 C CNN
	1    6900 5550
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:VDD_IO #PWR063
U 1 1 5F809142
P 6900 5250
F 0 "#PWR063" H 6900 5100 50  0001 C CNN
F 1 "VDD_IO" H 6900 5400 50  0000 C CNN
F 2 "" H 6900 5250 50  0001 C CNN
F 3 "" H 6900 5250 50  0001 C CNN
	1    6900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5250 6900 5300
Wire Wire Line
	6900 5500 6900 5550
Text Label 4750 4800 0    50   ~ 0
HWID_0_i
Wire Wire Line
	5200 4800 4750 4800
Wire Wire Line
	5200 5000 5150 5000
Wire Wire Line
	5150 5000 5150 5150
Wire Wire Line
	5150 5150 5850 5150
Wire Wire Line
	5850 5150 5850 4900
Wire Wire Line
	5850 4900 5800 4900
$Comp
L customlib_mj:VDD_IO #PWR061
U 1 1 5F864B6C
P 5500 4650
F 0 "#PWR061" H 5500 4500 50  0001 C CNN
F 1 "VDD_IO" H 5500 4800 50  0000 C CNN
F 2 "" H 5500 4650 50  0001 C CNN
F 3 "" H 5500 4650 50  0001 C CNN
	1    5500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4700 5500 4650
Text Label 6050 3600 2    50   ~ 0
HWID_0
Text Label 6150 4900 2    50   ~ 0
HWID_0
Wire Wire Line
	5850 4900 6150 4900
Connection ~ 5850 4900
Text Notes 5400 6100 0    60   ~ 12
Analog buffers
Wire Notes Line
	4650 4400 4650 6200
Wire Notes Line
	4650 6200 7250 6200
Wire Notes Line
	7250 6200 7250 4400
Wire Notes Line
	7250 4400 4650 4400
$Sheet
S 8750 6100 500  250 
U 5F94C41C
F0 "BridgeAdapter 1" 50
F1 "cutout_bridge_board.sch" 50
$EndSheet
$Sheet
S 10000 6100 500  250 
U 5F94C9C0
F0 "BridgeAdapter 2" 50
F1 "cutout_bridge_board.sch" 50
$EndSheet
Wire Wire Line
	10050 3200 9900 3200
Connection ~ 9900 3200
Wire Wire Line
	9900 3200 9900 3000
$Comp
L customlib_mj:Mousebite_stamp_holes M2
U 1 1 5FAD9C7F
P 9100 5950
F 0 "M2" H 9100 5850 50  0000 C CNN
F 1 "Mousebite_stamp_holes" H 9100 5900 50  0000 C CNN
F 2 "customlib_mj_fp:mousebite_5mm_stampholes" H 9100 5950 50  0001 C CNN
F 3 "" H 9100 5950 50  0001 C CNN
	1    9100 5950
	-1   0    0    1   
$EndComp
$Comp
L customlib_mj:Mousebite_stamp_holes M1
U 1 1 5FADA5BC
P 10350 5700
F 0 "M1" H 10350 5600 50  0000 C CNN
F 1 "Mousebite_stamp_holes" H 10350 5650 50  0000 C CNN
F 2 "customlib_mj_fp:mousebite_5mm_stampholes" H 10350 5700 50  0001 C CNN
F 3 "" H 10350 5700 50  0001 C CNN
	1    10350 5700
	-1   0    0    1   
$EndComp
$Comp
L customlib_mj:Mousebite_stamp_holes M3
U 1 1 5FADAC8E
P 10350 5950
F 0 "M3" H 10350 5850 50  0000 C CNN
F 1 "Mousebite_stamp_holes" H 10350 5900 50  0000 C CNN
F 2 "customlib_mj_fp:mousebite_5mm_stampholes" H 10350 5950 50  0001 C CNN
F 3 "" H 10350 5950 50  0001 C CNN
	1    10350 5950
	-1   0    0    1   
$EndComp
$Comp
L customlib_mj:FFC_14p_50mm_folded_x2 FFC1
U 1 1 5FB5497A
P 10800 3550
F 0 "FFC1" H 10750 3700 50  0000 C CNN
F 1 "FFC_14p_50mm_folded_x2" V 11000 3550 50  0000 C CNN
F 2 "customlib_mj_fp:FFC_mech_14p_50mm_folded_x2" H 10800 3550 50  0001 C CNN
F 3 "" H 10800 3550 50  0001 C CNN
	1    10800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3200 9900 3600
Wire Wire Line
	10050 3600 9900 3600
Connection ~ 9900 3600
Wire Wire Line
	9900 3600 9900 3700
Wire Wire Line
	10050 3700 9900 3700
Connection ~ 9900 3700
Wire Wire Line
	10000 4100 10050 4100
Wire Wire Line
	10050 4000 9900 4000
Connection ~ 9900 4000
Wire Wire Line
	9900 4000 9900 4300
Wire Wire Line
	9900 3700 9900 3900
Wire Wire Line
	10050 3900 9900 3900
Connection ~ 9900 3900
Wire Wire Line
	9900 3900 9900 4000
$Comp
L customlib_mj:FFC_retention_clamp M4
U 1 1 6026FAD0
P 4700 6900
F 0 "M4" H 4700 7125 50  0000 C CNN
F 1 "FFC_retention_clamp" H 4700 7034 50  0000 C CNN
F 2 "customlib_mj_fp:FFC_retention_clamp_14pin_7_5mm" H 4700 6900 50  0001 C CNN
F 3 "" H 4700 6900 50  0001 C CNN
	1    4700 6900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:FFC_retention_clamp M5
U 1 1 60270BB9
P 4700 7500
F 0 "M5" H 4700 7725 50  0000 C CNN
F 1 "FFC_retention_clamp" H 4700 7634 50  0000 C CNN
F 2 "customlib_mj_fp:FFC_retention_clamp_14pin_7_5mm" H 4700 7500 50  0001 C CNN
F 3 "" H 4700 7500 50  0001 C CNN
	1    4700 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3200 1700 3200
Wire Wire Line
	2150 3300 1700 3300
Text Label 1700 3300 0    50   ~ 0
~RESn~
Text Label 1700 3200 0    50   ~ 0
~CSn~
Wire Wire Line
	950  2600 1450 2600
Text Label 6200 3000 2    50   ~ 0
~RESn~
Wire Wire Line
	5600 3000 6200 3000
Wire Wire Line
	5700 3200 5600 3200
Wire Wire Line
	5700 2300 5700 2350
$Comp
L power:GND #PWR0101
U 1 1 6076BE82
P 6100 6900
F 0 "#PWR0101" H 6100 6650 50  0001 C CNN
F 1 "GND" H 6100 6750 50  0000 C CNN
F 2 "" H 6100 6900 50  0001 C CNN
F 3 "" H 6100 6900 50  0001 C CNN
	1    6100 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 6076C5A0
P 6100 7550
F 0 "#PWR0102" H 6100 7300 50  0001 C CNN
F 1 "GND" H 6100 7400 50  0000 C CNN
F 2 "" H 6100 7550 50  0001 C CNN
F 3 "" H 6100 7550 50  0001 C CNN
	1    6100 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6076C930
P 5200 7550
F 0 "#PWR0103" H 5200 7300 50  0001 C CNN
F 1 "GND" H 5200 7400 50  0000 C CNN
F 2 "" H 5200 7550 50  0001 C CNN
F 3 "" H 5200 7550 50  0001 C CNN
	1    5200 7550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 6076CD94
P 5200 6900
F 0 "#PWR0104" H 5200 6650 50  0001 C CNN
F 1 "GND" H 5200 6750 50  0000 C CNN
F 2 "" H 5200 6900 50  0001 C CNN
F 3 "" H 5200 6900 50  0001 C CNN
	1    5200 6900
	1    0    0    -1  
$EndComp
NoConn ~ 4600 6900
NoConn ~ 4800 6900
NoConn ~ 4600 7500
NoConn ~ 4800 7500
Wire Wire Line
	950  2700 1100 2700
Wire Wire Line
	1100 2700 1100 2450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607C251D
P 5700 2350
F 0 "#FLG0101" H 5700 2425 50  0001 C CNN
F 1 "PWR_FLAG" V 5700 2666 50  0000 C CNN
F 2 "" H 5700 2350 50  0001 C CNN
F 3 "~" H 5700 2350 50  0001 C CNN
	1    5700 2350
	0    -1   -1   0   
$EndComp
Connection ~ 5700 2350
Wire Wire Line
	5700 2350 5700 3200
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 607C3D02
P 5700 4050
F 0 "#FLG0102" H 5700 4125 50  0001 C CNN
F 1 "PWR_FLAG" V 5700 4366 50  0000 C CNN
F 2 "" H 5700 4050 50  0001 C CNN
F 3 "~" H 5700 4050 50  0001 C CNN
	1    5700 4050
	0    -1   -1   0   
$EndComp
Connection ~ 5700 4050
Wire Wire Line
	5700 4050 5700 4100
$Comp
L customlib_mj:Logo_MJ Logo3
U 1 1 607E815F
P 9000 6700
F 0 "Logo3" H 9000 6600 50  0001 C CNN
F 1 "Logo_MJ-small" H 9000 6600 50  0000 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 9000 6700 50  0001 C CNN
F 3 "" H 9000 6700 50  0001 C CNN
	1    9000 6700
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Logo_MJ Logo4
U 1 1 607E838C
P 9600 6700
F 0 "Logo4" H 9600 6600 50  0001 C CNN
F 1 "Logo_MJ-mid" H 9600 6600 50  0000 C CNN
F 2 "customlib_mj_fp:MJ_10.3x12.7" H 9600 6700 50  0001 C CNN
F 3 "" H 9600 6700 50  0001 C CNN
	1    9600 6700
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small Logo_OSHW1
U 1 1 607E89B5
P 8450 6900
F 0 "Logo_OSHW1" H 8450 7175 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 8450 6675 50  0001 C CNN
F 2 "Symbol:OSHW-Logo_5.7x6mm_SilkScreen" H 8450 6900 50  0001 C CNN
F 3 "~" H 8450 6900 50  0001 C CNN
	1    8450 6900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Logo_MJ Logo5
U 1 1 607F7020
P 9000 6950
F 0 "Logo5" H 9209 6948 50  0001 C CNN
F 1 "Logo-Kicad" H 9000 6850 50  0000 C CNN
F 2 "Symbol:KiCad-Logo2_5mm_SilkScreen" H 9000 6950 50  0001 C CNN
F 3 "" H 9000 6950 50  0001 C CNN
	1    9000 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4950 3000 4950
Wire Wire Line
	3000 4950 3000 4700
Connection ~ 3000 4950
Wire Wire Line
	3000 4950 3950 4950
Text Label 3650 4700 2    50   ~ 0
HWID_LSBs
Text Notes 3050 4850 0    50   ~ 0
(2b LSBs from outer\npanel - if any)
Wire Wire Line
	3000 4700 3650 4700
$Comp
L customlib_mj:TLV9051SIDBV U6
U 1 1 5F39F321
P 5500 4900
F 0 "U6" H 5250 4600 50  0000 L CNN
F 1 "TLV9051SIDBV" H 5500 4500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 5500 4900 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv9051" H 5550 5100 50  0001 C CNN
	1    5500 4900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:TLV9051SIDBV U6
U 2 1 5F3A0018
P 6550 5350
F 0 "U6" H 6500 5400 50  0000 R CNN
F 1 "TLV9051SIDBV" H 6500 5300 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 6550 5350 50  0001 C CNN
F 3 "https://www.ti.com/lit/gpn/tlv9051" H 6600 5550 50  0001 C CNN
	2    6550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3500 5700 3500
Wire Wire Line
	5700 3500 5700 3200
Connection ~ 5700 3200
Wire Wire Line
	950  2800 1100 2800
Wire Wire Line
	950  3800 1100 3800
Connection ~ 1100 3800
Wire Wire Line
	1100 3800 1100 4050
Text Label 1450 3500 2    50   ~ 0
Enc2_SW
Wire Wire Line
	1100 2800 1100 3800
Wire Wire Line
	950  3100 1450 3100
Wire Wire Line
	950  3300 1450 3300
Text Label 1450 3100 2    50   ~ 0
Enc2_A
Text Label 1450 3300 2    50   ~ 0
Enc2_B
$Comp
L customlib_mj:Frontpanel_L_Hybrid_PwrRotary_Pushbtns_holder ASM101
U 1 1 5FCBCA58
P 7600 1600
F 0 "ASM101" H 7658 2565 50  0000 C CNN
F 1 "Frontpanel_L_Hybrid_PwrRotary_Pushbtns_holder" H 7658 2474 50  0000 C CNN
F 2 "customlib_mj_fp:Frontpanel_L_Hybrid_Power_Rotary_Pushbtns_holder" H 7575 1995 50  0001 C CNN
F 3 "" H 7575 1995 50  0001 C CNN
	1    7600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FCC0149
P 8650 1550
F 0 "#PWR0106" H 8650 1300 50  0001 C CNN
F 1 "GND" H 8650 1400 50  0000 C CNN
F 2 "" H 8650 1550 50  0001 C CNN
F 3 "" H 8650 1550 50  0001 C CNN
	1    8650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1550 8650 1450
Wire Wire Line
	8650 1450 8300 1450
Wire Wire Line
	8300 1050 8850 1050
Wire Wire Line
	8300 1150 8850 1150
Wire Wire Line
	8300 1250 8850 1250
Text Label 8850 1050 2    50   ~ 0
Enc2_A
Text Label 8850 1150 2    50   ~ 0
Enc2_B
Text Label 8850 1250 2    50   ~ 0
Enc2_SW
$Comp
L customlib_mj:VDD_IO #PWR0105
U 1 1 5FCCA10E
P 8950 900
F 0 "#PWR0105" H 8950 750 50  0001 C CNN
F 1 "VDD_IO" H 8950 1050 50  0000 C CNN
F 2 "" H 8950 900 50  0001 C CNN
F 3 "" H 8950 900 50  0001 C CNN
	1    8950 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 900  8950 1350
Wire Wire Line
	8950 1350 8300 1350
$EndSCHEMATC
