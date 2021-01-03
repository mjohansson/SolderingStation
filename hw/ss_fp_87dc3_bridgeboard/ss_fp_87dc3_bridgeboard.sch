EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "87DC3_201 Bridge board"
Date "2020-11-28"
Rev "r0.1"
Comp "MaJo SS2k"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5F96373E
P 950 950
AR Path="/5F94C41C/5F96373E" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5F96373E" Ref="J?"  Part="1" 
AR Path="/5F96373E" Ref="J101"  Part="1" 
F 0 "J101" V 950 700 50  0000 C CNN
F 1 "Conn_01x02" V 1050 900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 950 950 50  0001 C CNN
F 3 "~" H 950 950 50  0001 C CNN
	1    950  950 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F963F4E
P 1800 950
AR Path="/5F94C41C/5F963F4E" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5F963F4E" Ref="J?"  Part="1" 
AR Path="/5F963F4E" Ref="J102"  Part="1" 
F 0 "J102" V 1800 600 50  0000 C CNN
F 1 "Conn_01x04" V 1900 900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1800 950 50  0001 C CNN
F 3 "~" H 1800 950 50  0001 C CNN
	1    1800 950 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5F9656C4
P 1450 1750
AR Path="/5F94C41C/5F9656C4" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5F9656C4" Ref="J?"  Part="1" 
AR Path="/5F9656C4" Ref="J103"  Part="1" 
F 0 "J103" V 1450 1500 50  0000 C CNN
F 1 "Conn_01x03" V 1550 1750 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1450 1750 50  0001 C CNN
F 3 "~" H 1450 1750 50  0001 C CNN
	1    1450 1750
	0    -1   1    0   
$EndComp
Wire Wire Line
	950  1150 950  1250
Wire Wire Line
	950  1350 1350 1350
Wire Wire Line
	1350 1350 1350 1550
Wire Wire Line
	1700 1150 1700 1350
Wire Wire Line
	1700 1350 1450 1350
Wire Wire Line
	1450 1350 1450 1550
Wire Wire Line
	2000 1150 2000 1450
Wire Wire Line
	2000 1450 1550 1450
Wire Wire Line
	1550 1450 1550 1550
Text Notes 1500 1300 0    50   ~ 0
A
Text Notes 1900 1400 0    50   ~ 0
B
Text Label 1350 1350 2    50   ~ 0
COM_1
Wire Wire Line
	950  1250 1050 1250
Wire Wire Line
	1050 1250 1050 1150
Connection ~ 950  1250
Wire Wire Line
	950  1250 950  1350
NoConn ~ 1800 1150
NoConn ~ 1900 1150
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 6027E0F4
P 1950 1600
AR Path="/5F94C41C/6027E0F4" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/6027E0F4" Ref="Logo?"  Part="1" 
AR Path="/6027E0F4" Ref="Logo101"  Part="1" 
F 0 "Logo101" H 1950 1500 50  0000 C CNN
F 1 "Logo_MJ" H 1950 1500 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 1950 1600 50  0001 C CNN
F 3 "" H 1950 1600 50  0001 C CNN
	1    1950 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FCF5869
P 3350 950
AR Path="/5F94C41C/5FCF5869" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCF5869" Ref="J?"  Part="1" 
AR Path="/5FCF5869" Ref="J104"  Part="1" 
F 0 "J104" V 3350 700 50  0000 C CNN
F 1 "Conn_01x02" V 3450 900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3350 950 50  0001 C CNN
F 3 "~" H 3350 950 50  0001 C CNN
	1    3350 950 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FCF58D5
P 4200 950
AR Path="/5F94C41C/5FCF58D5" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCF58D5" Ref="J?"  Part="1" 
AR Path="/5FCF58D5" Ref="J105"  Part="1" 
F 0 "J105" V 4200 600 50  0000 C CNN
F 1 "Conn_01x04" V 4300 900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4200 950 50  0001 C CNN
F 3 "~" H 4200 950 50  0001 C CNN
	1    4200 950 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FCF58DF
P 3850 1750
AR Path="/5F94C41C/5FCF58DF" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCF58DF" Ref="J?"  Part="1" 
AR Path="/5FCF58DF" Ref="J106"  Part="1" 
F 0 "J106" V 3850 1500 50  0000 C CNN
F 1 "Conn_01x03" V 3950 1750 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3850 1750 50  0001 C CNN
F 3 "~" H 3850 1750 50  0001 C CNN
	1    3850 1750
	0    -1   1    0   
$EndComp
Wire Wire Line
	3350 1150 3350 1250
Wire Wire Line
	3350 1350 3750 1350
Wire Wire Line
	3750 1350 3750 1550
Wire Wire Line
	4100 1150 4100 1350
Wire Wire Line
	4100 1350 3850 1350
Wire Wire Line
	3850 1350 3850 1550
Wire Wire Line
	4400 1150 4400 1450
Wire Wire Line
	4400 1450 3950 1450
Wire Wire Line
	3950 1450 3950 1550
Text Notes 3900 1300 0    50   ~ 0
A
Text Notes 4300 1400 0    50   ~ 0
B
Text Label 3750 1350 2    50   ~ 0
COM_2
Wire Wire Line
	3350 1250 3450 1250
Wire Wire Line
	3450 1250 3450 1150
Connection ~ 3350 1250
Wire Wire Line
	3350 1250 3350 1350
NoConn ~ 4200 1150
NoConn ~ 4300 1150
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 5FCF58FB
P 4350 1600
AR Path="/5F94C41C/5FCF58FB" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/5FCF58FB" Ref="Logo?"  Part="1" 
AR Path="/5FCF58FB" Ref="Logo102"  Part="1" 
F 0 "Logo102" H 4350 1500 50  0000 C CNN
F 1 "Logo_MJ" H 4350 1500 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 4350 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FCFADED
P 950 2500
AR Path="/5F94C41C/5FCFADED" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFADED" Ref="J?"  Part="1" 
AR Path="/5FCFADED" Ref="J107"  Part="1" 
F 0 "J107" V 950 2250 50  0000 C CNN
F 1 "Conn_01x02" V 1050 2450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 950 2500 50  0001 C CNN
F 3 "~" H 950 2500 50  0001 C CNN
	1    950  2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FCFAEAB
P 1800 2500
AR Path="/5F94C41C/5FCFAEAB" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEAB" Ref="J?"  Part="1" 
AR Path="/5FCFAEAB" Ref="J108"  Part="1" 
F 0 "J108" V 1800 2150 50  0000 C CNN
F 1 "Conn_01x04" V 1900 2450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1800 2500 50  0001 C CNN
F 3 "~" H 1800 2500 50  0001 C CNN
	1    1800 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FCFAEB5
P 1450 3300
AR Path="/5F94C41C/5FCFAEB5" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEB5" Ref="J?"  Part="1" 
AR Path="/5FCFAEB5" Ref="J111"  Part="1" 
F 0 "J111" V 1450 3050 50  0000 C CNN
F 1 "Conn_01x03" V 1550 3300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1450 3300 50  0001 C CNN
F 3 "~" H 1450 3300 50  0001 C CNN
	1    1450 3300
	0    -1   1    0   
$EndComp
Wire Wire Line
	950  2700 950  2800
Wire Wire Line
	950  2900 1350 2900
Wire Wire Line
	1350 2900 1350 3100
Wire Wire Line
	1700 2700 1700 2900
Wire Wire Line
	1700 2900 1450 2900
Wire Wire Line
	1450 2900 1450 3100
Wire Wire Line
	2000 2700 2000 3000
Wire Wire Line
	2000 3000 1550 3000
Wire Wire Line
	1550 3000 1550 3100
Text Notes 1500 2850 0    50   ~ 0
A
Text Notes 1900 2950 0    50   ~ 0
B
Text Label 1350 2900 2    50   ~ 0
COM_3
Wire Wire Line
	950  2800 1050 2800
Wire Wire Line
	1050 2800 1050 2700
Connection ~ 950  2800
Wire Wire Line
	950  2800 950  2900
NoConn ~ 1800 2700
NoConn ~ 1900 2700
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 5FCFAED1
P 1950 3150
AR Path="/5F94C41C/5FCFAED1" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/5FCFAED1" Ref="Logo?"  Part="1" 
AR Path="/5FCFAED1" Ref="Logo103"  Part="1" 
F 0 "Logo103" H 1950 3050 50  0000 C CNN
F 1 "Logo_MJ" H 1950 3050 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 1950 3150 50  0001 C CNN
F 3 "" H 1950 3150 50  0001 C CNN
	1    1950 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FCFAEDB
P 3350 2500
AR Path="/5F94C41C/5FCFAEDB" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEDB" Ref="J?"  Part="1" 
AR Path="/5FCFAEDB" Ref="J109"  Part="1" 
F 0 "J109" V 3350 2250 50  0000 C CNN
F 1 "Conn_01x02" V 3450 2450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3350 2500 50  0001 C CNN
F 3 "~" H 3350 2500 50  0001 C CNN
	1    3350 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FCFAEE5
P 4200 2500
AR Path="/5F94C41C/5FCFAEE5" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEE5" Ref="J?"  Part="1" 
AR Path="/5FCFAEE5" Ref="J110"  Part="1" 
F 0 "J110" V 4200 2150 50  0000 C CNN
F 1 "Conn_01x04" V 4300 2450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4200 2500 50  0001 C CNN
F 3 "~" H 4200 2500 50  0001 C CNN
	1    4200 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FCFAEEF
P 3850 3300
AR Path="/5F94C41C/5FCFAEEF" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEEF" Ref="J?"  Part="1" 
AR Path="/5FCFAEEF" Ref="J112"  Part="1" 
F 0 "J112" V 3850 3050 50  0000 C CNN
F 1 "Conn_01x03" V 3950 3300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3850 3300 50  0001 C CNN
F 3 "~" H 3850 3300 50  0001 C CNN
	1    3850 3300
	0    -1   1    0   
$EndComp
Wire Wire Line
	3350 2700 3350 2800
Wire Wire Line
	3350 2900 3750 2900
Wire Wire Line
	3750 2900 3750 3100
Wire Wire Line
	4100 2700 4100 2900
Wire Wire Line
	4100 2900 3850 2900
Wire Wire Line
	3850 2900 3850 3100
Wire Wire Line
	4400 2700 4400 3000
Wire Wire Line
	4400 3000 3950 3000
Wire Wire Line
	3950 3000 3950 3100
Text Notes 3900 2850 0    50   ~ 0
A
Text Notes 4300 2950 0    50   ~ 0
B
Text Label 3750 2900 2    50   ~ 0
COM_4
Wire Wire Line
	3350 2800 3450 2800
Wire Wire Line
	3450 2800 3450 2700
Connection ~ 3350 2800
Wire Wire Line
	3350 2800 3350 2900
NoConn ~ 4200 2700
NoConn ~ 4300 2700
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 5FCFAF0B
P 4350 3150
AR Path="/5F94C41C/5FCFAF0B" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/5FCFAF0B" Ref="Logo?"  Part="1" 
AR Path="/5FCFAF0B" Ref="Logo104"  Part="1" 
F 0 "Logo104" H 4350 3050 50  0000 C CNN
F 1 "Logo_MJ" H 4350 3050 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 4350 3150 50  0001 C CNN
F 3 "" H 4350 3150 50  0001 C CNN
	1    4350 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60D452C2
P 1050 3900
AR Path="/5F94C41C/60D452C2" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/60D452C2" Ref="J?"  Part="1" 
AR Path="/60D452C2" Ref="J113"  Part="1" 
F 0 "J113" V 1050 3650 50  0000 C CNN
F 1 "Conn_01x02" V 1150 3850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1050 3900 50  0001 C CNN
F 3 "~" H 1050 3900 50  0001 C CNN
	1    1050 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 60D45424
P 1900 3900
AR Path="/5F94C41C/60D45424" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/60D45424" Ref="J?"  Part="1" 
AR Path="/60D45424" Ref="J114"  Part="1" 
F 0 "J114" V 1900 3550 50  0000 C CNN
F 1 "Conn_01x04" V 2000 3850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 1900 3900 50  0001 C CNN
F 3 "~" H 1900 3900 50  0001 C CNN
	1    1900 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 60D4542E
P 1550 4700
AR Path="/5F94C41C/60D4542E" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/60D4542E" Ref="J?"  Part="1" 
AR Path="/60D4542E" Ref="J117"  Part="1" 
F 0 "J117" V 1550 4450 50  0000 C CNN
F 1 "Conn_01x03" V 1650 4700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 1550 4700 50  0001 C CNN
F 3 "~" H 1550 4700 50  0001 C CNN
	1    1550 4700
	0    -1   1    0   
$EndComp
Wire Wire Line
	1050 4100 1050 4200
Wire Wire Line
	1050 4300 1450 4300
Wire Wire Line
	1450 4300 1450 4500
Wire Wire Line
	1800 4100 1800 4300
Wire Wire Line
	1800 4300 1550 4300
Wire Wire Line
	1550 4300 1550 4500
Wire Wire Line
	2100 4100 2100 4400
Wire Wire Line
	2100 4400 1650 4400
Wire Wire Line
	1650 4400 1650 4500
Text Notes 1600 4250 0    50   ~ 0
A
Text Notes 2000 4350 0    50   ~ 0
B
Text Label 1450 4300 2    50   ~ 0
COM_5
Wire Wire Line
	1050 4200 1150 4200
Wire Wire Line
	1150 4200 1150 4100
Connection ~ 1050 4200
Wire Wire Line
	1050 4200 1050 4300
NoConn ~ 1900 4100
NoConn ~ 2000 4100
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 60D4544A
P 2050 4550
AR Path="/5F94C41C/60D4544A" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/60D4544A" Ref="Logo?"  Part="1" 
AR Path="/60D4544A" Ref="Logo105"  Part="1" 
F 0 "Logo105" H 2050 4450 50  0000 C CNN
F 1 "Logo_MJ" H 2050 4450 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 2050 4550 50  0001 C CNN
F 3 "" H 2050 4550 50  0001 C CNN
	1    2050 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60D45454
P 3450 3900
AR Path="/5F94C41C/60D45454" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/60D45454" Ref="J?"  Part="1" 
AR Path="/60D45454" Ref="J115"  Part="1" 
F 0 "J115" V 3450 3650 50  0000 C CNN
F 1 "Conn_01x02" V 3550 3850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3450 3900 50  0001 C CNN
F 3 "~" H 3450 3900 50  0001 C CNN
	1    3450 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 60D4545E
P 4300 3900
AR Path="/5F94C41C/60D4545E" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/60D4545E" Ref="J?"  Part="1" 
AR Path="/60D4545E" Ref="J116"  Part="1" 
F 0 "J116" V 4300 3550 50  0000 C CNN
F 1 "Conn_01x04" V 4400 3850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4300 3900 50  0001 C CNN
F 3 "~" H 4300 3900 50  0001 C CNN
	1    4300 3900
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 60D45468
P 3950 4700
AR Path="/5F94C41C/60D45468" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/60D45468" Ref="J?"  Part="1" 
AR Path="/60D45468" Ref="J118"  Part="1" 
F 0 "J118" V 3950 4450 50  0000 C CNN
F 1 "Conn_01x03" V 4050 4700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3950 4700 50  0001 C CNN
F 3 "~" H 3950 4700 50  0001 C CNN
	1    3950 4700
	0    -1   1    0   
$EndComp
Wire Wire Line
	3450 4100 3450 4200
Wire Wire Line
	3450 4300 3850 4300
Wire Wire Line
	3850 4300 3850 4500
Wire Wire Line
	4200 4100 4200 4300
Wire Wire Line
	4200 4300 3950 4300
Wire Wire Line
	3950 4300 3950 4500
Wire Wire Line
	4500 4100 4500 4400
Wire Wire Line
	4500 4400 4050 4400
Wire Wire Line
	4050 4400 4050 4500
Text Notes 4000 4250 0    50   ~ 0
A
Text Notes 4400 4350 0    50   ~ 0
B
Text Label 3850 4300 2    50   ~ 0
COM_6
Wire Wire Line
	3450 4200 3550 4200
Wire Wire Line
	3550 4200 3550 4100
Connection ~ 3450 4200
Wire Wire Line
	3450 4200 3450 4300
NoConn ~ 4300 4100
NoConn ~ 4400 4100
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 60D45484
P 4450 4550
AR Path="/5F94C41C/60D45484" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/60D45484" Ref="Logo?"  Part="1" 
AR Path="/60D45484" Ref="Logo106"  Part="1" 
F 0 "Logo106" H 4450 4450 50  0000 C CNN
F 1 "Logo_MJ" H 4450 4450 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 4450 4550 50  0001 C CNN
F 3 "" H 4450 4550 50  0001 C CNN
	1    4450 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
