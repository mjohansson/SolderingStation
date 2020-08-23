EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 22
Title "Rearpanel headphone assembly"
Date "2020-08-19"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_Small R?
U 1 1 5F909E3E
P 7100 2750
AR Path="/5FAFD5BA/5F909E3E" Ref="R?"  Part="1" 
AR Path="/5F4730B9/5F907915/5F909E3E" Ref="R1301"  Part="1" 
F 0 "R1301" V 7000 2750 50  0000 C CNN
F 1 "100" V 7200 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7100 2750 50  0001 C CNN
F 3 "~" H 7100 2750 50  0001 C CNN
	1    7100 2750
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5F909E44
P 6750 2750
AR Path="/5FAFD5BA/5F909E44" Ref="C?"  Part="1" 
AR Path="/5F4730B9/5F907915/5F909E44" Ref="C1301"  Part="1" 
F 0 "C1301" V 6850 2750 50  0000 C CNN
F 1 "47u/10V" V 6650 2550 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 6750 2750 50  0001 C CNN
F 3 "~" H 6750 2750 50  0001 C CNN
	1    6750 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 2750 7000 2750
$Comp
L Device:R_Small R?
U 1 1 5F909E4B
P 7100 3050
AR Path="/5FAFD5BA/5F909E4B" Ref="R?"  Part="1" 
AR Path="/5F4730B9/5F907915/5F909E4B" Ref="R1302"  Part="1" 
F 0 "R1302" V 7000 3050 50  0000 C CNN
F 1 "100" V 7200 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7100 3050 50  0001 C CNN
F 3 "~" H 7100 3050 50  0001 C CNN
	1    7100 3050
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5F909E51
P 6750 3050
AR Path="/5FAFD5BA/5F909E51" Ref="C?"  Part="1" 
AR Path="/5F4730B9/5F907915/5F909E51" Ref="C1302"  Part="1" 
F 0 "C1302" V 6850 3050 50  0000 C CNN
F 1 "47u/10V" V 6650 2850 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 6750 3050 50  0001 C CNN
F 3 "~" H 6750 3050 50  0001 C CNN
	1    6750 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 3050 7000 3050
$Comp
L customlib_mj:SJ-3571N J?
U 1 1 5F909E58
P 8400 2900
AR Path="/5FAFD5BA/5F909E58" Ref="J?"  Part="1" 
AR Path="/5F4730B9/5F907915/5F909E58" Ref="J1301"  Part="1" 
F 0 "J1301" H 7824 2974 50  0000 C CNN
F 1 "SJ-3571N" H 7824 2883 50  0000 C CNN
F 2 "customlib_mj_fp:SJ-3571N" H 8400 2900 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/interconnect/connectors/audio-connectors/jacks/sj-357xn-series/sj-3571n" H 8400 2900 50  0001 C CNN
	1    8400 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 3050 7300 3050
Wire Wire Line
	7200 2750 7950 2750
Text Notes 8000 2500 0    50   ~ 10
Sleeve (1) : Gnd\nRing (3) : R ch\nTip (2) : L ch
$Comp
L power:GND #PWR?
U 1 1 5F909E61
P 7300 2450
AR Path="/5FAFD5BA/5F909E61" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5F907915/5F909E61" Ref="#PWR01301"  Part="1" 
F 0 "#PWR01301" H 7300 2200 50  0001 C CNN
F 1 "GND" H 7300 2300 50  0000 C CNN
F 2 "" H 7300 2450 50  0001 C CNN
F 3 "" H 7300 2450 50  0001 C CNN
	1    7300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2650 7500 2650
Wire Wire Line
	7500 2650 7500 2350
Wire Wire Line
	7500 2350 7300 2350
Wire Wire Line
	7300 2350 7300 2450
Text Label 7750 3050 2    50   ~ 0
L_ch_out
Text Label 7750 2750 2    50   ~ 0
R_ch_out
$Comp
L customlib_mj:SJ-3571N J1301
U 2 1 5F90A16C
P 6100 2400
F 0 "J1301" V 6100 2200 50  0000 R CNN
F 1 "SJ-3571N" V 6000 2400 50  0000 C CNN
F 2 "customlib_mj_fp:SJ-3571N" H 6100 2400 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/interconnect/connectors/audio-connectors/jacks/sj-357xn-series/sj-3571n" H 6100 2400 50  0001 C CNN
	2    6100 2400
	0    -1   1    0   
$EndComp
$Comp
L customlib_mj:SJ-3571N J1301
U 3 1 5F90A9A2
P 6100 3400
F 0 "J1301" V 6100 3200 50  0000 R CNN
F 1 "SJ-3571N" V 6000 3350 50  0000 C CNN
F 2 "customlib_mj_fp:SJ-3571N" H 6100 3400 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/interconnect/connectors/audio-connectors/jacks/sj-357xn-series/sj-3571n" H 6100 3400 50  0001 C CNN
	3    6100 3400
	0    -1   -1   0   
$EndComp
Text HLabel 5700 2750 0    50   Input ~ 0
Audio_R_ch
Text HLabel 5700 3050 0    50   Input ~ 0
Audio_L_ch
Text HLabel 5700 3150 0    50   Output ~ 0
Audio_int_L
Text HLabel 5700 2650 0    50   Output ~ 0
Audio_int_R
Wire Wire Line
	6200 2550 6200 2750
Wire Wire Line
	6200 2750 6650 2750
Wire Wire Line
	6200 3250 6200 3050
Wire Wire Line
	6200 3050 6650 3050
Wire Wire Line
	5700 2750 6100 2750
Wire Wire Line
	6100 2750 6100 2550
Wire Wire Line
	5700 3050 6100 3050
Wire Wire Line
	6100 3050 6100 3250
Wire Wire Line
	6000 2550 6000 2650
Wire Wire Line
	6000 2650 5700 2650
Wire Wire Line
	6000 3250 6000 3150
Wire Wire Line
	6000 3150 5700 3150
Text Label 6100 2750 2    50   ~ 0
R_ch
Text Label 6100 3050 2    50   ~ 0
L_ch
Text Label 6000 3150 2    50   ~ 0
L_int
Text Label 6000 2650 2    50   ~ 0
R_int
Wire Wire Line
	4550 2850 4250 2850
Wire Wire Line
	3750 3050 3450 3050
Wire Wire Line
	4250 3050 4550 3050
Wire Wire Line
	3750 2850 3450 2850
Text Label 3450 2850 0    50   ~ 0
L_ch
Text Label 4550 2850 2    50   ~ 0
L_int
Text Label 4550 3050 2    50   ~ 0
R_int
Text Label 3450 3050 0    50   ~ 0
R_ch
$Comp
L power:GND #PWR?
U 1 1 5F91D9D6
P 3350 3300
AR Path="/5FAFD5BA/5F91D9D6" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5F907915/5F91D9D6" Ref="#PWR01302"  Part="1" 
F 0 "#PWR01302" H 3350 3050 50  0001 C CNN
F 1 "GND" H 3350 3150 50  0000 C CNN
F 2 "" H 3350 3300 50  0001 C CNN
F 3 "" H 3350 3300 50  0001 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F91E0F4
P 4650 3300
AR Path="/5FAFD5BA/5F91E0F4" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5F907915/5F91E0F4" Ref="#PWR01303"  Part="1" 
F 0 "#PWR01303" H 4650 3050 50  0001 C CNN
F 1 "GND" H 4650 3150 50  0000 C CNN
F 2 "" H 4650 3300 50  0001 C CNN
F 3 "" H 4650 3300 50  0001 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3300 4650 3150
Wire Wire Line
	4250 2950 4650 2950
Wire Wire Line
	3350 3300 3350 3150
Wire Wire Line
	3350 2950 3750 2950
Text Notes 3400 3600 0    50   ~ 10
Right-angle 2.54mm pinheader
$Comp
L customlib_mj:SLESD5Z5V D1301
U 1 1 5FA1408F
P 7300 3500
F 0 "D1301" V 7254 3790 50  0000 C CNN
F 1 "SLESD5Z5V" V 7345 3790 50  0000 C CNN
F 2 "customlib_mj_fp:D_SOD-523" H 7250 3500 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 7250 3500 50  0001 C CNN
	1    7300 3500
	0    1    1    0   
$EndComp
$Comp
L customlib_mj:SLESD5Z5V D1302
U 1 1 5FA1555C
P 7950 3500
F 0 "D1302" V 7904 3790 50  0000 C CNN
F 1 "SLESD5Z5V" V 7995 3790 50  0000 C CNN
F 2 "customlib_mj_fp:D_SOD-523" H 7900 3500 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/TVS_SLKORMICRO-Elec-SLESD5Z5V_C268188.html" H 7900 3500 50  0001 C CNN
	1    7950 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 3400 7300 3050
Connection ~ 7300 3050
Wire Wire Line
	7300 3050 8100 3050
Wire Wire Line
	7950 3400 7950 2750
Connection ~ 7950 2750
Wire Wire Line
	7950 2750 8100 2750
$Comp
L power:GND #PWR?
U 1 1 5FA1A157
P 7300 3750
AR Path="/5FAFD5BA/5FA1A157" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA1A157" Ref="#PWR01304"  Part="1" 
F 0 "#PWR01304" H 7300 3500 50  0001 C CNN
F 1 "GND" H 7300 3600 50  0000 C CNN
F 2 "" H 7300 3750 50  0001 C CNN
F 3 "" H 7300 3750 50  0001 C CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FA1A4B1
P 7950 3750
AR Path="/5FAFD5BA/5FA1A4B1" Ref="#PWR?"  Part="1" 
AR Path="/5F4730B9/5F907915/5FA1A4B1" Ref="#PWR01305"  Part="1" 
F 0 "#PWR01305" H 7950 3500 50  0001 C CNN
F 1 "GND" H 7950 3600 50  0000 C CNN
F 2 "" H 7950 3750 50  0001 C CNN
F 3 "" H 7950 3750 50  0001 C CNN
	1    7950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3750 7950 3600
Wire Wire Line
	7300 3750 7300 3600
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1302
U 1 1 5FA40A6F
P 3950 3050
F 0 "J1302" H 4000 3467 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4000 3376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 3950 3050 50  0001 C CNN
F 3 "~" H 3950 3050 50  0001 C CNN
	1    3950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3150 3350 3150
Connection ~ 3350 3150
Wire Wire Line
	3350 3150 3350 2950
Wire Wire Line
	4250 3150 4650 3150
Connection ~ 4650 3150
Wire Wire Line
	4650 3150 4650 2950
NoConn ~ 3750 3250
NoConn ~ 4250 3250
NoConn ~ 8100 2850
NoConn ~ 8100 2950
$EndSCHEMATC
