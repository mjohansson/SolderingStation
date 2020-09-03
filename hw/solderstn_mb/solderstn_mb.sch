EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 22
Title "DIY Soldering station, top level"
Date "2020-04-26"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1550 4850 1400 1400
U 5ED59CBF
F0 "Ethernet" 50
F1 "ethernet.sch" 50
$EndSheet
$Sheet
S 1550 950  1400 1400
U 5F472B62
F0 "Power ctrl" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 6100 1000 1400 1400
U 5EAEB4B5
F0 "STM32F429 PWR" 50
F1 "mcu_2.sch" 50
F2 "CH_A_KTY_REED_BIAS_ENABLE" I L 6100 1950 50 
F3 "KTY_REED_BIAS_CH_A" O R 7500 2050 50 
F4 "KTY_REED_BIAS_CH_B" O R 7500 2250 50 
F5 "CH_B_KTY_REED_BIAS_ENABLE" I L 6100 2150 50 
$EndSheet
$Sheet
S 3800 950  1400 1400
U 5F472FC2
F0 "Front panel connections" 50
F1 "front_panel_conn.sch" 50
F2 "AUX_TX" O L 3800 2250 50 
F3 "AUX_RX" I L 3800 2150 50 
$EndSheet
$Sheet
S 3800 4850 1400 1400
U 5F4730B9
F0 "Rear panel connections" 50
F1 "rear_panel_conn.sch" 50
F2 "CH_A_HEATER_1" I R 5200 5150 50 
F3 "CH_A_HEATER_2" I R 5200 5250 50 
F4 "CH_A_TC1" O R 5200 4950 50 
F5 "CH_A_TC2_KTY" O R 5200 5050 50 
F6 "CH_B_HEATER_1" I R 5200 5750 50 
F7 "CH_B_HEATER_2" I R 5200 5850 50 
F8 "CH_B_TC1" O R 5200 5550 50 
F9 "CH_B_TC2_KTY" O R 5200 5650 50 
F10 "Audio_L" I L 3800 4950 50 
F11 "Audio_L_int" O L 3800 5050 50 
F12 "Audio_R" I L 3800 5150 50 
F13 "Audio_R_int" O L 3800 5250 50 
$EndSheet
$Sheet
S 6100 2850 1400 1400
U 5F785D6E
F0 "Weller contol" 50
F1 "Weller_ctrl.sch" 50
F2 "CH_A_HEATER_1" O L 6100 3650 50 
F3 "CH_A_HEATER_2" O L 6100 3750 50 
F4 "CH_B_HEATER_1" O L 6100 4050 50 
F5 "CH_B_HEATER_2" O L 6100 4150 50 
F6 "CH_A_TC1" I L 6100 3450 50 
F7 "CH_A_TC2_KTY" I L 6100 3550 50 
F8 "CH_B_TC1" I L 6100 3850 50 
F9 "CH_B_TC2_KTY" I L 6100 3950 50 
F10 "HWID_ADC_SEL" I L 6100 3250 50 
F11 "CH_A_KTY_REED_BIAS" I R 7500 3150 50 
F12 "CH_B_KTY_REED_BIAS" I R 7500 2950 50 
$EndSheet
$Sheet
S 1550 2850 1400 1400
U 5FAFD5BA
F0 "Audio & FM-radio" 50
F1 "audio_fmradio.sch" 50
F2 "Audio_R_o" O R 2950 4050 50 
F3 "Audio_L_o" O R 2950 3800 50 
F4 "Audio_R_int" I R 2950 4150 50 
F5 "Audio_L_int" I R 2950 3900 50 
$EndSheet
$Sheet
S 3800 2850 1400 1400
U 5EACD927
F0 "STM32F429 MCU" 50
F1 "mcu_1.sch" 50
F2 "AUX_HOST_RX" I L 3800 2950 50 
F3 "AUX_HOST_TX" O L 3800 3050 50 
F4 "HWID_ADC_SELECT" O R 5200 3350 50 
F5 "CH_A_KTY_REED_BIAS_EN" O R 5200 3150 50 
F6 "CH_B_KTY_REED_BIAS_EN" O R 5200 3250 50 
$EndSheet
Wire Wire Line
	3800 2250 3650 2250
Wire Wire Line
	3650 2250 3650 2950
Wire Wire Line
	3650 2950 3800 2950
Wire Wire Line
	3800 2150 3550 2150
Wire Wire Line
	3550 2150 3550 3050
Wire Wire Line
	3550 3050 3800 3050
Wire Wire Line
	7500 2250 7650 2250
Wire Wire Line
	7650 2250 7650 2950
Wire Wire Line
	7650 2950 7500 2950
Wire Wire Line
	7500 2050 7800 2050
Wire Wire Line
	7800 2050 7800 3150
Wire Wire Line
	7800 3150 7500 3150
Wire Wire Line
	6100 3450 5400 3450
Wire Wire Line
	5400 3450 5400 4950
Wire Wire Line
	5400 4950 5200 4950
Wire Wire Line
	6100 3550 5500 3550
Wire Wire Line
	5500 3550 5500 5050
Wire Wire Line
	5500 5050 5200 5050
Wire Wire Line
	6100 3650 5600 3650
Wire Wire Line
	5600 3650 5600 5150
Wire Wire Line
	5600 5150 5200 5150
Wire Wire Line
	6100 3750 5700 3750
Wire Wire Line
	5700 3750 5700 5250
Wire Wire Line
	5700 5250 5200 5250
Wire Wire Line
	6100 3850 5750 3850
Wire Wire Line
	5750 3850 5750 5550
Wire Wire Line
	5750 5550 5200 5550
Wire Wire Line
	6100 3950 5850 3950
Wire Wire Line
	5850 3950 5850 5650
Wire Wire Line
	5850 5650 5200 5650
Wire Wire Line
	6100 4050 5950 4050
Wire Wire Line
	5950 4050 5950 5750
Wire Wire Line
	5950 5750 5200 5750
Wire Wire Line
	6100 4150 6050 4150
Wire Wire Line
	6050 4150 6050 5850
Wire Wire Line
	6050 5850 5200 5850
Text Notes 9000 1100 0    70   Italic 14
I2C-addresses (on I2C1)
Text Notes 9100 1200 0    60   ~ 12
TMP100 (temperature sensors) :
Text Notes 9200 1900 0    50   ~ 10
1001000 (Front panel, outside left)\n1001010 (FP, outside right)\n1001100 (FP, inside left)\n1001101 (FP, inside middle)\n1001110 (FP, inside right)\n1001001 (Main board #1)\n1001011 (MB #2)\n1001111 (MB #3)
Text Notes 9100 2050 0    60   ~ 12
INA226 (power-channel current sensors) :
Text Notes 9200 2400 0    50   ~ 10
1000000 (ch A, heater 1)\n1000001 (ch A, heater 2)\n1000100 (ch B, heater 1)\n1000101 (ch B, heater 2)
Text Notes 9100 2550 0    60   ~ 12
SI4735 (FM-radio rx) :
Text Notes 9200 2750 0    50   ~ 10
0010001 (if ~SEN~ pulled low [default])\n1100011 (alternative, if ~SEN~ pulled high)
Wire Wire Line
	5200 3150 5300 3150
Wire Wire Line
	5300 3150 5300 1950
Wire Wire Line
	5300 1950 6100 1950
Wire Wire Line
	5200 3250 5400 3250
Wire Wire Line
	5400 3250 5400 2150
Wire Wire Line
	5400 2150 6100 2150
Wire Wire Line
	5200 3350 5700 3350
Wire Wire Line
	5700 3350 5700 3250
Wire Wire Line
	5700 3250 6100 3250
Wire Wire Line
	2950 4150 3050 4150
Wire Wire Line
	3050 4150 3050 5250
Wire Wire Line
	3050 5250 3800 5250
Wire Wire Line
	2950 4050 3150 4050
Wire Wire Line
	3150 4050 3150 5150
Wire Wire Line
	3150 5150 3800 5150
Wire Wire Line
	2950 3900 3300 3900
Wire Wire Line
	3300 3900 3300 5050
Wire Wire Line
	3300 5050 3800 5050
Wire Wire Line
	2950 3800 3400 3800
Wire Wire Line
	3400 3800 3400 4950
Wire Wire Line
	3400 4950 3800 4950
Text Notes 9100 2900 0    60   ~ 12
DS3231 (TCXO RTC module) :
Text Notes 9200 3150 0    50   ~ 10
1101000 (DS3231)\n1010--- (24C32, addr customized with A2-A0)\n1010111 (24C32, default (A2-A0 open))
$Comp
L customlib_mj:FN283-1-06_Schaffner_AC-mainboard_cutout M101
U 1 1 5F595E63
P 1450 7450
F 0 "M101" H 1450 7650 50  0000 C CNN
F 1 "FN283-1-06_Schaffner_AC-mainboard_cutout" H 1450 7250 50  0000 C CNN
F 2 "customlib_mj_fp:FN283_mainboard_cutout" H 1450 7450 50  0001 C CNN
F 3 "" H 1450 7450 50  0001 C CNN
	1    1450 7450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
