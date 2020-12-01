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
P 2600 2750
AR Path="/5F94C41C/5F96373E" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5F96373E" Ref="J?"  Part="1" 
AR Path="/5F96373E" Ref="J101"  Part="1" 
F 0 "J101" V 2600 2500 50  0000 C CNN
F 1 "Conn_01x02" V 2700 2700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2600 2750 50  0001 C CNN
F 3 "~" H 2600 2750 50  0001 C CNN
	1    2600 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F963F4E
P 3450 2750
AR Path="/5F94C41C/5F963F4E" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5F963F4E" Ref="J?"  Part="1" 
AR Path="/5F963F4E" Ref="J102"  Part="1" 
F 0 "J102" V 3450 2400 50  0000 C CNN
F 1 "Conn_01x04" V 3550 2700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3450 2750 50  0001 C CNN
F 3 "~" H 3450 2750 50  0001 C CNN
	1    3450 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5F9656C4
P 3100 3550
AR Path="/5F94C41C/5F9656C4" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5F9656C4" Ref="J?"  Part="1" 
AR Path="/5F9656C4" Ref="J103"  Part="1" 
F 0 "J103" V 3100 3300 50  0000 C CNN
F 1 "Conn_01x03" V 3200 3550 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3100 3550 50  0001 C CNN
F 3 "~" H 3100 3550 50  0001 C CNN
	1    3100 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	2600 2950 2600 3050
Wire Wire Line
	2600 3150 3000 3150
Wire Wire Line
	3000 3150 3000 3350
Wire Wire Line
	3350 2950 3350 3150
Wire Wire Line
	3350 3150 3100 3150
Wire Wire Line
	3100 3150 3100 3350
Wire Wire Line
	3650 2950 3650 3250
Wire Wire Line
	3650 3250 3200 3250
Wire Wire Line
	3200 3250 3200 3350
Text Notes 3150 3100 0    50   ~ 0
A
Text Notes 3550 3200 0    50   ~ 0
B
Text Label 3000 3150 2    50   ~ 0
COM_1
Wire Wire Line
	2600 3050 2700 3050
Wire Wire Line
	2700 3050 2700 2950
Connection ~ 2600 3050
Wire Wire Line
	2600 3050 2600 3150
NoConn ~ 3450 2950
NoConn ~ 3550 2950
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 6027E0F4
P 3600 3400
AR Path="/5F94C41C/6027E0F4" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/6027E0F4" Ref="Logo?"  Part="1" 
AR Path="/6027E0F4" Ref="Logo101"  Part="1" 
F 0 "Logo101" H 3600 3300 50  0000 C CNN
F 1 "Logo_MJ" H 3600 3300 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 3600 3400 50  0001 C CNN
F 3 "" H 3600 3400 50  0001 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FCF5869
P 5000 2750
AR Path="/5F94C41C/5FCF5869" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCF5869" Ref="J?"  Part="1" 
AR Path="/5FCF5869" Ref="J104"  Part="1" 
F 0 "J104" V 5000 2500 50  0000 C CNN
F 1 "Conn_01x02" V 5100 2700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5000 2750 50  0001 C CNN
F 3 "~" H 5000 2750 50  0001 C CNN
	1    5000 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FCF58D5
P 5850 2750
AR Path="/5F94C41C/5FCF58D5" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCF58D5" Ref="J?"  Part="1" 
AR Path="/5FCF58D5" Ref="J105"  Part="1" 
F 0 "J105" V 5850 2400 50  0000 C CNN
F 1 "Conn_01x04" V 5950 2700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5850 2750 50  0001 C CNN
F 3 "~" H 5850 2750 50  0001 C CNN
	1    5850 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FCF58DF
P 5500 3550
AR Path="/5F94C41C/5FCF58DF" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCF58DF" Ref="J?"  Part="1" 
AR Path="/5FCF58DF" Ref="J106"  Part="1" 
F 0 "J106" V 5500 3300 50  0000 C CNN
F 1 "Conn_01x03" V 5600 3550 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5500 3550 50  0001 C CNN
F 3 "~" H 5500 3550 50  0001 C CNN
	1    5500 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	5000 2950 5000 3050
Wire Wire Line
	5000 3150 5400 3150
Wire Wire Line
	5400 3150 5400 3350
Wire Wire Line
	5750 2950 5750 3150
Wire Wire Line
	5750 3150 5500 3150
Wire Wire Line
	5500 3150 5500 3350
Wire Wire Line
	6050 2950 6050 3250
Wire Wire Line
	6050 3250 5600 3250
Wire Wire Line
	5600 3250 5600 3350
Text Notes 5550 3100 0    50   ~ 0
A
Text Notes 5950 3200 0    50   ~ 0
B
Text Label 5400 3150 2    50   ~ 0
COM_2
Wire Wire Line
	5000 3050 5100 3050
Wire Wire Line
	5100 3050 5100 2950
Connection ~ 5000 3050
Wire Wire Line
	5000 3050 5000 3150
NoConn ~ 5850 2950
NoConn ~ 5950 2950
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 5FCF58FB
P 6000 3400
AR Path="/5F94C41C/5FCF58FB" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/5FCF58FB" Ref="Logo?"  Part="1" 
AR Path="/5FCF58FB" Ref="Logo102"  Part="1" 
F 0 "Logo102" H 6000 3300 50  0000 C CNN
F 1 "Logo_MJ" H 6000 3300 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 6000 3400 50  0001 C CNN
F 3 "" H 6000 3400 50  0001 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FCFADED
P 2600 4300
AR Path="/5F94C41C/5FCFADED" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFADED" Ref="J?"  Part="1" 
AR Path="/5FCFADED" Ref="J107"  Part="1" 
F 0 "J107" V 2600 4050 50  0000 C CNN
F 1 "Conn_01x02" V 2700 4250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2600 4300 50  0001 C CNN
F 3 "~" H 2600 4300 50  0001 C CNN
	1    2600 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FCFAEAB
P 3450 4300
AR Path="/5F94C41C/5FCFAEAB" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEAB" Ref="J?"  Part="1" 
AR Path="/5FCFAEAB" Ref="J108"  Part="1" 
F 0 "J108" V 3450 3950 50  0000 C CNN
F 1 "Conn_01x04" V 3550 4250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3450 4300 50  0001 C CNN
F 3 "~" H 3450 4300 50  0001 C CNN
	1    3450 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FCFAEB5
P 3100 5100
AR Path="/5F94C41C/5FCFAEB5" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEB5" Ref="J?"  Part="1" 
AR Path="/5FCFAEB5" Ref="J111"  Part="1" 
F 0 "J111" V 3100 4850 50  0000 C CNN
F 1 "Conn_01x03" V 3200 5100 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3100 5100 50  0001 C CNN
F 3 "~" H 3100 5100 50  0001 C CNN
	1    3100 5100
	0    -1   1    0   
$EndComp
Wire Wire Line
	2600 4500 2600 4600
Wire Wire Line
	2600 4700 3000 4700
Wire Wire Line
	3000 4700 3000 4900
Wire Wire Line
	3350 4500 3350 4700
Wire Wire Line
	3350 4700 3100 4700
Wire Wire Line
	3100 4700 3100 4900
Wire Wire Line
	3650 4500 3650 4800
Wire Wire Line
	3650 4800 3200 4800
Wire Wire Line
	3200 4800 3200 4900
Text Notes 3150 4650 0    50   ~ 0
A
Text Notes 3550 4750 0    50   ~ 0
B
Text Label 3000 4700 2    50   ~ 0
COM_3
Wire Wire Line
	2600 4600 2700 4600
Wire Wire Line
	2700 4600 2700 4500
Connection ~ 2600 4600
Wire Wire Line
	2600 4600 2600 4700
NoConn ~ 3450 4500
NoConn ~ 3550 4500
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 5FCFAED1
P 3600 4950
AR Path="/5F94C41C/5FCFAED1" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/5FCFAED1" Ref="Logo?"  Part="1" 
AR Path="/5FCFAED1" Ref="Logo103"  Part="1" 
F 0 "Logo103" H 3600 4850 50  0000 C CNN
F 1 "Logo_MJ" H 3600 4850 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 3600 4950 50  0001 C CNN
F 3 "" H 3600 4950 50  0001 C CNN
	1    3600 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5FCFAEDB
P 5000 4300
AR Path="/5F94C41C/5FCFAEDB" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEDB" Ref="J?"  Part="1" 
AR Path="/5FCFAEDB" Ref="J109"  Part="1" 
F 0 "J109" V 5000 4050 50  0000 C CNN
F 1 "Conn_01x02" V 5100 4250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 5000 4300 50  0001 C CNN
F 3 "~" H 5000 4300 50  0001 C CNN
	1    5000 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5FCFAEE5
P 5850 4300
AR Path="/5F94C41C/5FCFAEE5" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEE5" Ref="J?"  Part="1" 
AR Path="/5FCFAEE5" Ref="J110"  Part="1" 
F 0 "J110" V 5850 3950 50  0000 C CNN
F 1 "Conn_01x04" V 5950 4250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5850 4300 50  0001 C CNN
F 3 "~" H 5850 4300 50  0001 C CNN
	1    5850 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FCFAEEF
P 5500 5100
AR Path="/5F94C41C/5FCFAEEF" Ref="J?"  Part="1" 
AR Path="/5F94C9C0/5FCFAEEF" Ref="J?"  Part="1" 
AR Path="/5FCFAEEF" Ref="J112"  Part="1" 
F 0 "J112" V 5500 4850 50  0000 C CNN
F 1 "Conn_01x03" V 5600 5100 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5500 5100 50  0001 C CNN
F 3 "~" H 5500 5100 50  0001 C CNN
	1    5500 5100
	0    -1   1    0   
$EndComp
Wire Wire Line
	5000 4500 5000 4600
Wire Wire Line
	5000 4700 5400 4700
Wire Wire Line
	5400 4700 5400 4900
Wire Wire Line
	5750 4500 5750 4700
Wire Wire Line
	5750 4700 5500 4700
Wire Wire Line
	5500 4700 5500 4900
Wire Wire Line
	6050 4500 6050 4800
Wire Wire Line
	6050 4800 5600 4800
Wire Wire Line
	5600 4800 5600 4900
Text Notes 5550 4650 0    50   ~ 0
A
Text Notes 5950 4750 0    50   ~ 0
B
Text Label 5400 4700 2    50   ~ 0
COM_4
Wire Wire Line
	5000 4600 5100 4600
Wire Wire Line
	5100 4600 5100 4500
Connection ~ 5000 4600
Wire Wire Line
	5000 4600 5000 4700
NoConn ~ 5850 4500
NoConn ~ 5950 4500
$Comp
L customlib_mj:Logo_MJ Logo?
U 1 1 5FCFAF0B
P 6000 4950
AR Path="/5F94C41C/5FCFAF0B" Ref="Logo?"  Part="1" 
AR Path="/5F94C9C0/5FCFAF0B" Ref="Logo?"  Part="1" 
AR Path="/5FCFAF0B" Ref="Logo104"  Part="1" 
F 0 "Logo104" H 6000 4850 50  0000 C CNN
F 1 "Logo_MJ" H 6000 4850 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 6000 4950 50  0001 C CNN
F 3 "" H 6000 4950 50  0001 C CNN
	1    6000 4950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
