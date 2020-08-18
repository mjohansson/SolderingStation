EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 8
Title "Buttons bridge-adapter"
Date "2020-08-02"
Rev "R1a"
Comp "MaJo Electronics :)"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5F96373E
P 4500 3500
AR Path="/5F94C41C/5F96373E" Ref="J4"  Part="1" 
AR Path="/5F94C9C0/5F96373E" Ref="J7"  Part="1" 
F 0 "J7" V 4500 3250 50  0000 C CNN
F 1 "Conn_01x02" V 4600 3450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4500 3500 50  0001 C CNN
F 3 "~" H 4500 3500 50  0001 C CNN
	1    4500 3500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 5F963F4E
P 5350 3500
AR Path="/5F94C41C/5F963F4E" Ref="J5"  Part="1" 
AR Path="/5F94C9C0/5F963F4E" Ref="J8"  Part="1" 
F 0 "J8" V 5350 3150 50  0000 C CNN
F 1 "Conn_01x04" V 5450 3450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5350 3500 50  0001 C CNN
F 3 "~" H 5350 3500 50  0001 C CNN
	1    5350 3500
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5F9656C4
P 5000 4300
AR Path="/5F94C41C/5F9656C4" Ref="J6"  Part="1" 
AR Path="/5F94C9C0/5F9656C4" Ref="J9"  Part="1" 
F 0 "J9" V 5000 4050 50  0000 C CNN
F 1 "Conn_01x03" V 5100 4300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5000 4300 50  0001 C CNN
F 3 "~" H 5000 4300 50  0001 C CNN
	1    5000 4300
	0    -1   1    0   
$EndComp
Wire Wire Line
	4500 3700 4500 3800
Wire Wire Line
	4500 3900 4900 3900
Wire Wire Line
	4900 3900 4900 4100
Wire Wire Line
	5250 3700 5250 3900
Wire Wire Line
	5250 3900 5000 3900
Wire Wire Line
	5000 3900 5000 4100
Wire Wire Line
	5550 3700 5550 4000
Wire Wire Line
	5550 4000 5100 4000
Wire Wire Line
	5100 4000 5100 4100
Text Notes 5050 3850 0    50   ~ 0
A
Text Notes 5450 3950 0    50   ~ 0
B
Text Label 4900 3900 2    50   ~ 0
COM
Wire Wire Line
	4500 3800 4600 3800
Wire Wire Line
	4600 3800 4600 3700
Connection ~ 4500 3800
Wire Wire Line
	4500 3800 4500 3900
NoConn ~ 5350 3700
NoConn ~ 5450 3700
$Comp
L customlib_mj:Logo_MJ Logo1
U 1 1 6027E0F4
P 6050 4050
AR Path="/5F94C41C/6027E0F4" Ref="Logo1"  Part="1" 
AR Path="/5F94C9C0/6027E0F4" Ref="Logo2"  Part="1" 
F 0 "Logo2" H 6259 4048 50  0000 C CNN
F 1 "Logo_MJ" H 6050 3950 50  0001 C CNN
F 2 "customlib_mj_fp:MJ_Mini" H 6050 4050 50  0001 C CNN
F 3 "" H 6050 4050 50  0001 C CNN
	1    6050 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
