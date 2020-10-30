EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 22 22
Title "STM22F429 MCU pinout, clks, reset"
Date "2020-04-26"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L customlib_mj:STM32F429VITx U401
U 1 1 5EACD9C1
P 5750 2500
F 0 "U401" H 5406 4390 60  0000 L CNN
F 1 "STM32F429VITx" H 5406 4284 60  0000 L CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 4850 2750 60  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32f429ng.pdf" H 2050 3950 60  0001 L CNN
F 4 "STM32F429VITx" H 5450 2850 60  0001 L CNN "manf#"
F 5 "ARM Cortex-M4 MCU, 2048KB flash, 192KB RAM, 180MHz, 1.8-3.6V, 82 GPIO, LQFP-100 14x14mm. Ref. Man : RM0090" H 3050 2450 60  0001 L CNN "Field5"
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:STM32F429VITx U401
U 2 1 5EB04B60
P 3700 7700
F 0 "U401" H 4250 9450 60  0000 L CNN
F 1 "STM32F429VITx" H 3350 9450 60  0000 L CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 2800 7950 60  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32f429ng.pdf" H 0   9150 60  0001 L CNN
F 4 "STM32F429VITx" H 3400 8050 60  0001 L CNN "manf#"
F 5 "ARM Cortex-M4 MCU, 2048KB flash, 192KB RAM, 180MHz, 1.8-3.6V, 82 GPIO, LQFP-100 14x14mm. Ref. Man : RM0090" H 1000 7650 60  0001 L CNN "Field5"
	2    3700 7700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02203
U 1 1 5EB15629
P 550 3000
F 0 "#PWR02203" H 550 2750 50  0001 C CNN
F 1 "GND" V 555 2793 50  0000 C CNN
F 2 "" H 550 3000 50  0001 C CNN
F 3 "" H 550 3000 50  0001 C CNN
	1    550  3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2203
U 1 1 5EB163A2
P 700 2950
F 0 "R2203" V 625 2950 50  0000 C CNN
F 1 "10k" V 700 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 700 2950 50  0001 C CNN
F 3 "~" H 700 2950 50  0001 C CNN
	1    700  2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 2200 1400 2200
Wire Wire Line
	1850 2300 1400 2300
Wire Wire Line
	1850 1900 1400 1900
Wire Wire Line
	1400 1800 1850 1800
Wire Wire Line
	1400 2000 1850 2000
Wire Wire Line
	1400 2100 1850 2100
Wire Wire Line
	1850 1600 1400 1600
Wire Wire Line
	1850 1300 1400 1300
Wire Wire Line
	1850 1400 1400 1400
Wire Wire Line
	1400 1000 1850 1000
Wire Wire Line
	1850 1100 1400 1100
Wire Wire Line
	1400 3800 1850 3800
Wire Wire Line
	1400 3900 1850 3900
Wire Wire Line
	1400 4000 1850 4000
Wire Wire Line
	9650 1000 10150 1000
Wire Wire Line
	10150 1300 9650 1300
Wire Wire Line
	10150 1400 9650 1400
Wire Wire Line
	10150 3700 9650 3700
Wire Wire Line
	1400 4100 1850 4100
Wire Wire Line
	1850 4200 1400 4200
Wire Wire Line
	1800 6100 1700 6100
Text Label 1800 6100 2    50   ~ 0
BOOT0
$Comp
L Device:R_Small R2207
U 1 1 5EB3BB62
P 1600 7600
F 0 "R2207" V 1550 7500 50  0000 R CNN
F 1 "0R" V 1650 7400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1600 7600 50  0001 C CNN
F 3 "~" H 1600 7600 50  0001 C CNN
	1    1600 7600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C2206
U 1 1 5EB3C36F
P 950 7300
F 0 "C2206" V 850 7300 50  0000 C CNN
F 1 "10p" V 900 7100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 950 7300 50  0001 C CNN
F 3 "~" H 950 7300 50  0001 C CNN
	1    950  7300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2207
U 1 1 5EB3CBCD
P 950 7600
F 0 "C2207" V 1050 7600 50  0000 C CNN
F 1 "10p" V 900 7400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 950 7600 50  0001 C CNN
F 3 "~" H 950 7600 50  0001 C CNN
	1    950  7600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02217
U 1 1 5EB40961
P 600 7550
F 0 "#PWR02217" H 600 7300 50  0001 C CNN
F 1 "GND" H 600 7425 50  0000 C CNN
F 2 "" H 600 7550 50  0001 C CNN
F 3 "" H 600 7550 50  0001 C CNN
	1    600  7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  7600 800  7600
Wire Wire Line
	800  7600 800  7500
Wire Wire Line
	800  7300 850  7300
Wire Wire Line
	600  7550 600  7450
Wire Wire Line
	600  7450 800  7450
Connection ~ 800  7450
Wire Wire Line
	10550 2400 10800 2400
$Comp
L customlib_mj:STM32_bootmodes #TXT02201
U 1 1 5EBF9055
P 2650 5350
F 0 "#TXT02201" H 1700 6000 71  0001 C CNN
F 1 "STM32_bootmodes" H 2650 6000 71  0001 C CNN
F 2 "" H 2650 5350 71  0001 C CNN
F 3 "" H 2650 5350 71  0001 C CNN
	1    2650 5350
	1    0    0    -1  
$EndComp
Connection ~ 1600 6700
Wire Wire Line
	1600 6700 1800 6700
Wire Wire Line
	1700 7600 1800 7600
Wire Wire Line
	1600 6750 1600 6700
$Comp
L Device:C_Small C2205
U 1 1 5EB3183C
P 1600 6850
F 0 "C2205" H 1675 6850 50  0000 L CNN
F 1 "100n" H 1625 6925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1600 6850 50  0001 C CNN
F 3 "~" H 1600 6850 50  0001 C CNN
	1    1600 6850
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR02216
U 1 1 5ECF7161
P 1600 7000
F 0 "#PWR02216" H 1600 6750 50  0001 C CNN
F 1 "GND" H 1600 6875 50  0000 C CNN
F 2 "" H 1600 7000 50  0001 C CNN
F 3 "" H 1600 7000 50  0001 C CNN
	1    1600 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 7000 1600 6950
$Comp
L customlib_mj:Pushbutton_SMD_TS-1102W-4316 SW2202
U 1 1 5ED018D7
P 1250 5950
F 0 "SW2202" H 1250 5800 50  0000 C CNN
F 1 "Pushbutton_SMD_TS-1102W-4316" H 1250 5800 50  0001 C CNN
F 2 "customlib_mj_fp:SMD_PUSHBTN_6x6mm" H 1250 6050 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Tactile-Switches_SOFNG-TS-1102W-4316_C111373.html" V 1100 5950 50  0001 C CNN
	1    1250 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02210
U 1 1 5ECF51F9
P 5900 5550
F 0 "#PWR02210" H 5900 5300 50  0001 C CNN
F 1 "GND" H 5900 5425 50  0000 C CNN
F 2 "" H 5900 5550 50  0001 C CNN
F 3 "" H 5900 5550 50  0001 C CNN
	1    5900 5550
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Pushbutton_SMD_TS-1102W-4316 SW2201
U 1 1 5ECF190A
P 5850 5350
F 0 "SW2201" H 5800 5200 50  0000 C CNN
F 1 "Pushbutton_SMD_TS-1102W-4316" H 5850 5200 50  0001 C CNN
F 2 "customlib_mj_fp:SMD_PUSHBTN_6x6mm" H 5850 5450 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Tactile-Switches_SOFNG-TS-1102W-4316_C111373.html" V 5700 5350 50  0001 C CNN
	1    5850 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2206
U 1 1 5EB2FE9F
P 1700 6250
F 0 "R2206" V 1625 6225 50  0000 L CNN
F 1 "10k" V 1775 6175 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1700 6250 50  0001 C CNN
F 3 "~" H 1700 6250 50  0001 C CNN
	1    1700 6250
	1    0    0    1   
$EndComp
$Comp
L power:VDD #PWR02212
U 1 1 5EB34A34
P 1300 5750
F 0 "#PWR02212" H 1300 5600 50  0001 C CNN
F 1 "VDD" H 1300 5875 50  0000 C CNN
F 2 "" H 1300 5750 50  0001 C CNN
F 3 "" H 1300 5750 50  0001 C CNN
	1    1300 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2204
U 1 1 5ED1DA11
P 1450 6250
F 0 "C2204" H 1525 6250 50  0000 L CNN
F 1 "100n" H 1475 6325 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 6250 50  0001 C CNN
F 3 "~" H 1450 6250 50  0001 C CNN
	1    1450 6250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02215
U 1 1 5ED1E2C4
P 1700 6400
F 0 "#PWR02215" H 1700 6150 50  0001 C CNN
F 1 "GND" H 1700 6275 50  0000 C CNN
F 2 "" H 1700 6400 50  0001 C CNN
F 3 "" H 1700 6400 50  0001 C CNN
	1    1700 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02214
U 1 1 5ED1EE7F
P 1450 6400
F 0 "#PWR02214" H 1450 6150 50  0001 C CNN
F 1 "GND" H 1450 6275 50  0000 C CNN
F 2 "" H 1450 6400 50  0001 C CNN
F 3 "" H 1450 6400 50  0001 C CNN
	1    1450 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6400 1700 6350
Wire Wire Line
	1700 6150 1700 6100
Connection ~ 1700 6100
Wire Wire Line
	1700 6100 1450 6100
Wire Wire Line
	1450 6400 1450 6350
Wire Wire Line
	1450 6150 1450 6100
Connection ~ 1450 6100
Wire Wire Line
	1100 6100 1250 6100
Wire Wire Line
	1250 6050 1250 6100
Connection ~ 1250 6100
Wire Wire Line
	1250 6100 1350 6100
Wire Wire Line
	1350 6050 1350 6100
Connection ~ 1350 6100
Wire Wire Line
	1350 6100 1450 6100
Wire Wire Line
	1250 5850 1250 5800
Wire Wire Line
	1250 5800 1300 5800
Wire Wire Line
	1350 5800 1350 5850
Wire Wire Line
	1300 5750 1300 5800
Connection ~ 1300 5800
Wire Wire Line
	1300 5800 1350 5800
Text Notes 7350 5650 2    60   ~ 12
RESET
Text Notes 1100 6000 2    60   ~ 12
Force\nbootloader
$Comp
L customlib_mj:W25Q64FV U2202
U 1 1 5F361AE2
P 8750 5450
F 0 "U2202" H 8900 5800 60  0000 C CNN
F 1 "W25Q64FV" H 9050 5100 60  0000 C CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 8750 5450 60  0001 C CNN
F 3 "https://www.pjrc.com/store/w25q64fv.pdf" H 8750 5450 60  0001 C CNN
	1    8750 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 7300 1150 7300
Wire Wire Line
	1050 7600 1150 7600
Wire Wire Line
	800  7300 800  7400
$Comp
L customlib_mj:Crystal_TSX3225_16MF18X-AC3 Y2202
U 1 1 5F429432
P 1150 7450
F 0 "Y2202" V 1350 7450 50  0000 L CNN
F 1 "TSX-3225 16.0000MF18X-AC3" V 1450 7400 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_TSX3225-4Pin_3.2x2.5mm_HandSoldering" H 1150 7450 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?dl=brief_TSX-3225&lang=en" H 1150 7450 50  0001 C CNN
	1    1150 7450
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 7550 1150 7600
Connection ~ 1150 7600
Wire Wire Line
	1150 7600 1500 7600
Wire Wire Line
	1150 7350 1150 7300
Connection ~ 1150 7300
Wire Wire Line
	1150 7300 1800 7300
Wire Wire Line
	1050 7400 800  7400
Connection ~ 800  7400
Wire Wire Line
	800  7400 800  7450
Wire Wire Line
	1050 7500 800  7500
Connection ~ 800  7500
Wire Wire Line
	800  7500 800  7450
Wire Wire Line
	5600 7500 6250 7500
Wire Wire Line
	5600 7300 6250 7300
Wire Wire Line
	5600 7400 6250 7400
Text Label 6250 7400 2    50   ~ 0
Flash_MISO
Wire Wire Line
	8450 5450 8000 5450
Wire Wire Line
	8450 5550 8000 5550
Wire Wire Line
	8450 5350 8000 5350
Wire Wire Line
	9100 5450 9050 5450
Wire Wire Line
	9100 5550 9050 5550
Wire Wire Line
	9500 5350 9050 5350
Text Label 9500 5350 2    50   ~ 0
Flash_MISO
$Comp
L power:VDD #PWR02207
U 1 1 5F44F4B6
P 8750 4950
F 0 "#PWR02207" H 8750 4800 50  0001 C CNN
F 1 "VDD" H 8750 5075 50  0000 C CNN
F 2 "" H 8750 4950 50  0001 C CNN
F 3 "" H 8750 4950 50  0001 C CNN
	1    8750 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02213
U 1 1 5F44FBEC
P 8750 5950
F 0 "#PWR02213" H 8750 5700 50  0001 C CNN
F 1 "GND" H 8750 5825 50  0000 C CNN
F 2 "" H 8750 5950 50  0001 C CNN
F 3 "" H 8750 5950 50  0001 C CNN
	1    8750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5950 8750 5850
Wire Wire Line
	8750 5050 8750 4950
Wire Wire Line
	5600 7600 6250 7600
Text Label 6250 7100 2    50   ~ 0
~Flash_CSn~
Text Label 8000 5350 0    50   ~ 0
~Flash_CSn~
Wire Wire Line
	9100 5450 9100 5500
Wire Wire Line
	9100 5500 9250 5500
Connection ~ 9100 5500
Wire Wire Line
	9100 5500 9100 5550
$Comp
L power:VDD #PWR02209
U 1 1 5F46890F
P 9250 5500
F 0 "#PWR02209" H 9250 5350 50  0001 C CNN
F 1 "VDD" H 9250 5625 50  0000 C CNN
F 2 "" H 9250 5500 50  0001 C CNN
F 3 "" H 9250 5500 50  0001 C CNN
	1    9250 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 7100 5600 7100
Wire Wire Line
	6250 6200 5600 6200
Wire Wire Line
	5600 6600 6250 6600
Wire Wire Line
	5600 6700 6250 6700
Wire Wire Line
	5600 6800 6250 6800
Wire Wire Line
	5600 6900 6250 6900
Wire Wire Line
	5600 7000 6250 7000
Wire Wire Line
	5600 7200 6250 7200
Wire Wire Line
	5600 6300 6250 6300
Wire Wire Line
	5600 6400 6250 6400
Wire Wire Line
	5600 6500 6250 6500
Wire Wire Line
	5600 6100 6250 6100
Text HLabel 6250 6100 2    50   Input ~ 0
AUX_HOST_RX
Text HLabel 6250 6200 2    50   Output ~ 0
AUX_HOST_TX
Wire Wire Line
	1850 3600 1400 3600
Wire Wire Line
	10050 2200 9650 2200
Wire Wire Line
	9650 900  10150 900 
Wire Wire Line
	9650 1100 10150 1100
Wire Wire Line
	9650 1200 10150 1200
Wire Wire Line
	9650 1500 10150 1500
Wire Wire Line
	9650 1600 10150 1600
Wire Wire Line
	9650 1700 10150 1700
Wire Wire Line
	9650 1800 10150 1800
Wire Wire Line
	9650 1900 10150 1900
Wire Wire Line
	9650 2000 10150 2000
Wire Wire Line
	9650 2100 10150 2100
Wire Wire Line
	1850 900  1400 900 
Wire Wire Line
	1850 1200 1400 1200
Wire Wire Line
	1850 1500 1400 1500
Wire Wire Line
	1850 1700 1400 1700
Wire Wire Line
	1850 2400 1400 2400
Wire Wire Line
	1850 2700 1400 2700
Wire Wire Line
	1850 2800 1400 2800
Wire Wire Line
	600  2950 550  2950
Wire Wire Line
	550  2950 550  3000
Wire Wire Line
	1850 2900 1550 2900
Wire Wire Line
	800  2950 1550 2950
Wire Wire Line
	1550 2950 1550 2900
Connection ~ 1550 2900
Wire Wire Line
	1550 2900 1400 2900
Wire Wire Line
	10150 2700 9650 2700
Wire Wire Line
	10150 2800 9650 2800
Wire Wire Line
	10150 2900 9650 2900
Wire Wire Line
	10150 3000 9650 3000
Wire Wire Line
	10150 3100 9650 3100
Wire Wire Line
	10150 3200 9650 3200
Wire Wire Line
	10150 3300 9650 3300
Wire Wire Line
	10150 3400 9650 3400
Wire Wire Line
	10150 3600 9650 3600
Wire Wire Line
	9650 3800 10150 3800
Wire Wire Line
	9650 3900 10150 3900
Wire Wire Line
	9650 4000 10150 4000
Wire Wire Line
	9650 4100 10150 4100
Wire Wire Line
	9650 4200 10150 4200
Wire Wire Line
	1850 3000 1400 3000
Wire Wire Line
	1850 3100 1400 3100
Wire Wire Line
	1850 3200 1400 3200
Wire Wire Line
	1850 3300 1400 3300
Wire Wire Line
	1850 3400 1400 3400
Wire Wire Line
	1850 3500 1400 3500
Text GLabel 1400 900  0    50   Input ~ 0
CH_A_KTY_HWID_MB_ADC2
Text GLabel 1400 1000 0    50   Input ~ 0
RMII_REF_CLK
Text GLabel 1400 1100 0    50   BiDi ~ 0
ETH_MDIO
Text GLabel 1400 1200 0    50   Input ~ 0
CH_B_KTY_HWID_FP_ADC2
Text GLabel 1400 1300 0    50   Output ~ 0
DAC_OUT1
Text GLabel 1400 1400 0    50   Output ~ 0
DAC_OUT2
Text GLabel 1400 1500 0    50   Input ~ 0
CH_B_IN_STAND_ADC1
Text GLabel 1400 1600 0    50   Input ~ 0
RMII_CRS_DV
Text GLabel 1400 1700 0    50   Output ~ 0
RCLKo_8M
Text GLabel 1400 1800 0    50   Output ~ 0
DBGUART_TX
Text GLabel 1400 1900 0    50   Input ~ 0
DBGUART_RX
Text GLabel 1400 2000 0    50   BiDi ~ 0
USB1_DM
Text GLabel 1400 2100 0    50   BiDi ~ 0
USB1_DP
Text GLabel 1400 2200 0    50   BiDi ~ 0
SWDIO
Text GLabel 1400 2300 0    50   Input ~ 0
SWCLK
Text GLabel 1400 2400 0    50   Output ~ 0
FM_I2S_WS
Text GLabel 1400 2700 0    50   Input ~ 0
CH_B_TC1_AMP_ADC1
Text GLabel 1400 2800 0    50   Input ~ 0
CH_B_TC2_AMP_ADC2
Text GLabel 1400 2900 0    50   Output ~ 0
~SYS_RSTn~
Text GLabel 6250 7300 2    50   Output ~ 0
DISP_FLASH_SCK
Text GLabel 6250 6800 2    50   Output ~ 0
DISP_D~Cn~
Text GLabel 6250 7500 2    50   Output ~ 0
DISP_FLASH_MOSI
Text GLabel 1400 3300 0    50   Output ~ 0
I2C1_SCL
Text GLabel 1400 3400 0    50   BiDi ~ 0
I2C1_SDA
Text GLabel 6250 6900 2    50   Output ~ 0
~DISP_CSn~
Text GLabel 1400 3600 0    50   Input ~ 0
FAN3_RPM
Text GLabel 1400 3800 0    50   Output ~ 0
RMII_TX_EN
Text GLabel 1400 3900 0    50   Output ~ 0
RMII_TX_D0
Text GLabel 1400 4000 0    50   Output ~ 0
RMII_TX_D1
Text GLabel 1400 4100 0    50   BiDi ~ 0
USB2_DM
Text GLabel 1400 4200 0    50   BiDi ~ 0
USB2_DP
Text GLabel 1100 6100 0    50   BiDi ~ 0
MCU_BOOT0
Text GLabel 6150 5000 0    50   Input ~ 0
~EXT_RSTn~
Text GLabel 6250 6300 2    50   Output ~ 0
AUX_BOOT0
Text GLabel 6250 6500 2    50   Output ~ 0
~AUDIO_MUTEn~
Text GLabel 6250 6600 2    50   Input ~ 0
FAN1_RPM
Text GLabel 6250 6700 2    50   Input ~ 0
FAN2_RPM
Text GLabel 6250 7000 2    50   Input ~ 0
FP_ENC_A
Text GLabel 6250 7200 2    50   Input ~ 0
FP_ENC_B
Text GLabel 6350 7650 2    50   Input ~ 0
~PHY_IRQn~
Text GLabel 10150 900  2    50   Input ~ 0
CH_A_IN_STAND_ADC1
Text GLabel 10150 1000 2    50   Output ~ 0
ETH_MDC
Text GLabel 10150 1100 2    50   Input ~ 0
CH_A_TC1_AMP_ADC1
Text GLabel 10150 1200 2    50   Input ~ 0
CH_A_TC2_AMP_ADC2
Text GLabel 10150 1300 2    50   Input ~ 0
RMII_RX_D0
Text GLabel 10150 1400 2    50   Input ~ 0
RMII_RX_D1
Text GLabel 10150 1500 2    50   Output ~ 0
CH_A_FET1_PWM
Text GLabel 10150 1600 2    50   Output ~ 0
CH_A_FET2_PWM
Text GLabel 10150 1700 2    50   Output ~ 0
CH_B_FET1_PWM
Text GLabel 10150 1800 2    50   Output ~ 0
CH_B_FET2_PWM
Text GLabel 10150 1900 2    50   Output ~ 0
FM_I2S_CK
Text GLabel 10150 2000 2    50   Input ~ 0
~FM_INTn~
Text GLabel 10150 2100 2    50   Input ~ 0
FM_I2S_SD
Text GLabel 10150 2700 2    50   Input ~ 0
~FP_BTN_1An~
Text GLabel 10150 2800 2    50   Input ~ 0
~FP_BTN_1Bn~
Text GLabel 10150 2900 2    50   Input ~ 0
~FP_BTN_2An~
Text GLabel 10150 3000 2    50   Input ~ 0
~FP_BTN_2Bn~
Text GLabel 10150 3100 2    50   Input ~ 0
~FP_ENC_SWn~
Text GLabel 10150 3500 2    50   Input ~ 0
~AUX_INTn~
Text GLabel 10150 3300 2    50   Input ~ 0
CH_A_DRV_OK
Text GLabel 10150 3400 2    50   Input ~ 0
CH_B_DRV_OK
Text GLabel 10150 3600 2    50   Input ~ 0
~VBUS2_FLGn~
Text GLabel 10150 3700 2    50   Output ~ 0
VBUS2_ENABLE
Text GLabel 10150 3800 2    50   Output ~ 0
PWRDRV_ENABLE
Text GLabel 1400 3100 0    50   Output ~ 0
FAN1_PWM
Text GLabel 1400 3200 0    50   Output ~ 0
FAN2_PWM
Text GLabel 1400 3000 0    50   Output ~ 0
FAN3_PWM
Text GLabel 1400 3500 0    50   Output ~ 0
PWRBTN_LED_PWM
Text HLabel 10150 4100 2    50   Output ~ 0
CH_A_KTY_REED_BIAS_EN
$Comp
L power:VDD #PWR02205
U 1 1 5FCFC625
P 800 4900
F 0 "#PWR02205" H 800 4750 50  0001 C CNN
F 1 "VDD" H 800 5025 50  0000 C CNN
F 2 "" H 800 4900 50  0001 C CNN
F 3 "" H 800 4900 50  0001 C CNN
	1    800  4900
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02206
U 1 1 5FCFCC54
P 1100 4900
F 0 "#PWR02206" H 1100 4750 50  0001 C CNN
F 1 "VDD" H 1100 5025 50  0000 C CNN
F 2 "" H 1100 4900 50  0001 C CNN
F 3 "" H 1100 4900 50  0001 C CNN
	1    1100 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2204
U 1 1 5FCFCE2B
P 800 5050
F 0 "R2204" V 725 5025 50  0000 L CNN
F 1 "4k7" V 875 4975 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 800 5050 50  0001 C CNN
F 3 "~" H 800 5050 50  0001 C CNN
	1    800  5050
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R2205
U 1 1 5FCFD6CD
P 1100 5050
F 0 "R2205" V 1025 5025 50  0000 L CNN
F 1 "4k7" V 1175 4975 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1100 5050 50  0001 C CNN
F 3 "~" H 1100 5050 50  0001 C CNN
	1    1100 5050
	1    0    0    1   
$EndComp
Text Label 1850 3300 2    50   ~ 0
SCL
Text Label 1850 3400 2    50   ~ 0
SDA
Wire Wire Line
	550  5250 800  5250
Wire Wire Line
	800  5250 800  5150
Wire Wire Line
	650  5400 1100 5400
Wire Wire Line
	1100 5400 1100 5150
Text Label 550  5250 0    50   ~ 0
SCL
Text Label 650  5400 0    50   ~ 0
SDA
Wire Wire Line
	800  4900 800  4950
Wire Wire Line
	1100 4900 1100 4950
Text Notes 9000 6250 2    60   ~ 12
SPI flash
$Comp
L customlib_mj:MCP1316 U2201
U 1 1 5F477B99
P 6800 5250
F 0 "U2201" H 7050 5150 50  0000 L CNN
F 1 "MCP1316T-26LE-OT" H 6850 5050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6800 5250 50  0001 C CNN
F 3 "https://www.microchip.com/wwwproducts/en/MCP1316" H 6800 5250 50  0001 C CNN
	1    6800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5300 6100 5300
$Comp
L power:GND #PWR02211
U 1 1 5F4832E7
P 6800 5550
F 0 "#PWR02211" H 6800 5300 50  0001 C CNN
F 1 "GND" H 6800 5425 50  0000 C CNN
F 2 "" H 6800 5550 50  0001 C CNN
F 3 "" H 6800 5550 50  0001 C CNN
	1    6800 5550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02204
U 1 1 5F48365E
P 6800 4850
F 0 "#PWR02204" H 6800 4700 50  0001 C CNN
F 1 "VDD" H 6800 4975 50  0000 C CNN
F 2 "" H 6800 4850 50  0001 C CNN
F 3 "" H 6800 4850 50  0001 C CNN
	1    6800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5450 6800 5550
Wire Wire Line
	6800 5050 6800 5000
Wire Wire Line
	5850 5250 5850 5200
Wire Wire Line
	5850 5200 5950 5200
Wire Wire Line
	5950 5200 5950 5250
Connection ~ 5950 5200
Wire Wire Line
	5950 5200 6300 5200
Wire Wire Line
	5850 5450 5850 5500
Wire Wire Line
	5850 5500 5900 5500
Wire Wire Line
	5950 5500 5950 5450
Wire Wire Line
	5900 5550 5900 5500
Connection ~ 5900 5500
Wire Wire Line
	5900 5500 5950 5500
Wire Wire Line
	6150 5000 6300 5000
Wire Wire Line
	6300 5000 6300 5200
Connection ~ 6300 5200
Wire Wire Line
	6300 5200 6500 5200
$Comp
L Device:C_Small C2203
U 1 1 5F4DE90E
P 7000 5000
F 0 "C2203" H 7075 5000 50  0000 L CNN
F 1 "100n" H 7025 5075 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 5000 50  0001 C CNN
F 3 "~" H 7000 5000 50  0001 C CNN
	1    7000 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02208
U 1 1 5F4E12A9
P 7200 5000
F 0 "#PWR02208" H 7200 4750 50  0001 C CNN
F 1 "GND" H 7200 4875 50  0000 C CNN
F 2 "" H 7200 5000 50  0001 C CNN
F 3 "" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5000 6800 5000
Connection ~ 6800 5000
Wire Wire Line
	6800 5000 6800 4850
Wire Wire Line
	7100 5000 7200 5000
Wire Wire Line
	7100 5200 7400 5200
Text GLabel 7400 5200 2    50   Output ~ 0
~MCU_RSTn~
Wire Wire Line
	1400 6700 1600 6700
Text GLabel 1400 6700 0    50   Input ~ 0
~MCU_RSTn~
Text Label 10050 2200 2    50   ~ 0
DLED_WDT
Text Label 6100 5300 0    50   ~ 0
DLED_WDT
Wire Wire Line
	9650 3500 10150 3500
Text Notes 10950 1750 1    50   ~ 0
TIM8
Text GLabel 10150 3200 2    50   Input ~ 0
~FP_ENC2_SWn~
Text GLabel 10150 3900 2    50   Input ~ 0
FP_ENC2_A
Text GLabel 10150 4000 2    50   Input ~ 0
FP_ENC2_B
Text Notes 10700 4000 0    50   ~ 0
TIM4 (ENC)
Text Notes 6900 7200 1    50   ~ 0
TIM1\n(ENC)
Text HLabel 10150 4200 2    50   Output ~ 0
CH_B_KTY_REED_BIAS_EN
Wire Wire Line
	1400 3700 1850 3700
Text Notes 700  3650 0    50   ~ 0
TIM11
Text Notes 450  3550 0    50   ~ 0
TIM10
Text Notes 800  3150 0    50   ~ 0
TIM2,\nTIM3
Text HLabel 6250 6400 2    50   Output ~ 0
HWID_ADC_SELECT
Text Notes 6700 6700 0    50   ~ 0
TIM9
Text Label 6250 7300 2    50   ~ 0
Flash_SCK
Text Label 6250 7500 2    50   ~ 0
Flash_MOSI
Text Label 8000 5450 0    50   ~ 0
Flash_SCK
Text Label 8000 5550 0    50   ~ 0
Flash_MOSI
$Comp
L power:GND #PWR02219
U 1 1 5F7A2F27
P 10100 5850
F 0 "#PWR02219" H 10100 5600 50  0001 C CNN
F 1 "GND" H 10100 5725 50  0000 C CNN
F 2 "" H 10100 5850 50  0001 C CNN
F 3 "" H 10100 5850 50  0001 C CNN
	1    10100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5750 10100 5750
Wire Wire Line
	10100 5750 10100 5850
$Comp
L power:VDD #PWR02218
U 1 1 5F7ADB62
P 10050 5650
F 0 "#PWR02218" H 10050 5500 50  0001 C CNN
F 1 "VDD" H 10050 5775 50  0000 C CNN
F 2 "" H 10050 5650 50  0001 C CNN
F 3 "" H 10050 5650 50  0001 C CNN
	1    10050 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 5650 10050 5650
Wire Wire Line
	10150 5250 10050 5250
Text Label 9750 5250 0    50   ~ 0
32kHz
$Comp
L Device:R_Small R2202
U 1 1 5F7CE3ED
P 10050 5000
F 0 "R2202" V 9950 5000 50  0000 C CNN
F 1 "1k" V 10125 4925 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10050 5000 50  0001 C CNN
F 3 "~" H 10050 5000 50  0001 C CNN
	1    10050 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	10050 5100 10050 5250
Connection ~ 10050 5250
Wire Wire Line
	10050 5250 9750 5250
$Comp
L power:VDD #PWR02202
U 1 1 5F7D9F71
P 10050 4850
F 0 "#PWR02202" H 10050 4700 50  0001 C CNN
F 1 "VDD" H 10050 4975 50  0000 C CNN
F 2 "" H 10050 4850 50  0001 C CNN
F 3 "" H 10050 4850 50  0001 C CNN
	1    10050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4850 10050 4900
Wire Wire Line
	10150 5450 9900 5450
Wire Wire Line
	10150 5550 9900 5550
Text Label 9900 5450 0    50   ~ 0
SCL
Text Label 9900 5550 0    50   ~ 0
SDA
$Comp
L Device:C_Small C2201
U 1 1 5F7FBC1B
P 8250 6100
F 0 "C2201" H 8325 6100 50  0000 L CNN
F 1 "100n" H 8275 6175 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8250 6100 50  0001 C CNN
F 3 "~" H 8250 6100 50  0001 C CNN
	1    8250 6100
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2202
U 1 1 5F7FC9BD
P 10950 6100
F 0 "C2202" H 11025 6100 50  0000 L CNN
F 1 "100n" H 10975 6175 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10950 6100 50  0001 C CNN
F 3 "~" H 10950 6100 50  0001 C CNN
	1    10950 6100
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR02220
U 1 1 5F7FCE1C
P 8250 5950
F 0 "#PWR02220" H 8250 5800 50  0001 C CNN
F 1 "VDD" H 8250 6075 50  0000 C CNN
F 2 "" H 8250 5950 50  0001 C CNN
F 3 "" H 8250 5950 50  0001 C CNN
	1    8250 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02221
U 1 1 5F7FD197
P 10950 5950
F 0 "#PWR02221" H 10950 5800 50  0001 C CNN
F 1 "VDD" H 10950 6075 50  0000 C CNN
F 2 "" H 10950 5950 50  0001 C CNN
F 3 "" H 10950 5950 50  0001 C CNN
	1    10950 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02222
U 1 1 5F7FD450
P 8250 6250
F 0 "#PWR02222" H 8250 6000 50  0001 C CNN
F 1 "GND" H 8250 6125 50  0000 C CNN
F 2 "" H 8250 6250 50  0001 C CNN
F 3 "" H 8250 6250 50  0001 C CNN
	1    8250 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02223
U 1 1 5F7FD757
P 10950 6250
F 0 "#PWR02223" H 10950 6000 50  0001 C CNN
F 1 "GND" H 10950 6125 50  0000 C CNN
F 2 "" H 10950 6250 50  0001 C CNN
F 3 "" H 10950 6250 50  0001 C CNN
	1    10950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 6250 10950 6200
Wire Wire Line
	10950 6000 10950 5950
Wire Wire Line
	8250 6000 8250 5950
Wire Wire Line
	8250 6250 8250 6200
Text Label 10800 2400 2    50   ~ 0
32kHz
Wire Wire Line
	6350 7650 6250 7650
Wire Wire Line
	6250 7650 6250 7600
Wire Wire Line
	10150 5350 9750 5350
Text Label 9750 5350 0    50   ~ 0
~RTC_INTn~
Text Label 1400 3700 0    50   ~ 0
~RTC_INTn~
Text Notes 10350 6250 2    60   ~ 12
DS3231\nRTC module\n
Text Notes 10850 6500 2    60   ~ 12
I2C addr: 1101000\n(+24C32 eeprom: 1010111)
$Comp
L customlib_mj:dogbone_3_ud JP2201
U 1 1 5F8B373D
P 10450 2400
F 0 "JP2201" V 10550 2450 50  0000 L CNN
F 1 "dogbone_3_ud" H 10475 2550 50  0001 C CNN
F 2 "customlib_mj_fp:db3_ud_0603" H 10450 2400 50  0001 C CNN
F 3 "" H 10450 2400 50  0001 C CNN
	1    10450 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 2400 9700 2400
Wire Wire Line
	10450 2500 9700 2500
Wire Wire Line
	10550 2400 10550 2300
Wire Wire Line
	10550 2300 10450 2300
$Comp
L Device:C_Small C2209
U 1 1 5F918167
P 9850 2600
F 0 "C2209" V 9800 2550 50  0000 R CNN
F 1 "10p" V 9800 2650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9850 2600 50  0001 C CNN
F 3 "~" H 9850 2600 50  0001 C CNN
	1    9850 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2208
U 1 1 5F919A57
P 9850 2300
F 0 "C2208" V 9800 2250 50  0000 R CNN
F 1 "10p" V 9800 2350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9850 2300 50  0001 C CNN
F 3 "~" H 9850 2300 50  0001 C CNN
	1    9850 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2201
U 1 1 5F91A4FA
P 4650 4900
F 0 "R2201" V 4750 4900 50  0000 R CNN
F 1 "1k" V 4650 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4650 4900 50  0001 C CNN
F 3 "~" H 4650 4900 50  0001 C CNN
	1    4650 4900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D2201
U 1 1 5F91A504
P 4850 5050
F 0 "D2201" H 4800 4950 50  0000 C CNN
F 1 "LED_gr" H 4850 5150 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 4850 5050 50  0001 C CNN
F 3 "~" V 4850 5050 50  0001 C CNN
	1    4850 5050
	0    1    -1   0   
$EndComp
$Comp
L customlib_mj:DMG1012T Q2201
U 1 1 5F94779B
P 4750 5450
F 0 "Q2201" H 4956 5496 50  0000 L CNN
F 1 "DMG1012T" H 5152 5405 50  0000 C CNN
F 2 "customlib_mj_fp:SOT-523" H 4950 5550 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds31783.pdf" H 4750 5450 50  0001 C CNN
	1    4750 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02226
U 1 1 5F949473
P 4850 5700
F 0 "#PWR02226" H 4850 5450 50  0001 C CNN
F 1 "GND" H 4850 5575 50  0000 C CNN
F 2 "" H 4850 5700 50  0001 C CNN
F 3 "" H 4850 5700 50  0001 C CNN
	1    4850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5650 4850 5700
Wire Wire Line
	4850 5150 4850 5200
Wire Wire Line
	4750 4900 4850 4900
Wire Wire Line
	4850 4900 4850 4950
$Comp
L power:VDD #PWR02225
U 1 1 5F97E392
P 4450 4850
F 0 "#PWR02225" H 4450 4700 50  0001 C CNN
F 1 "VDD" H 4450 4975 50  0000 C CNN
F 2 "" H 4450 4850 50  0001 C CNN
F 3 "" H 4450 4850 50  0001 C CNN
	1    4450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4900 4450 4900
Wire Wire Line
	4450 4900 4450 4850
Wire Wire Line
	4250 5450 4550 5450
Text Label 4250 5450 0    50   ~ 0
DLED_WDT
Wire Wire Line
	9750 2300 9700 2300
Wire Wire Line
	9700 2300 9700 2400
Connection ~ 9700 2400
Wire Wire Line
	9700 2400 9650 2400
Wire Wire Line
	9750 2600 9700 2600
Wire Wire Line
	9700 2600 9700 2500
Connection ~ 9700 2500
Wire Wire Line
	9700 2500 9650 2500
$Comp
L power:GND #PWR02201
U 1 1 5F9A955B
P 10050 2300
F 0 "#PWR02201" H 10050 2050 50  0001 C CNN
F 1 "GND" H 10050 2175 50  0000 C CNN
F 2 "" H 10050 2300 50  0001 C CNN
F 3 "" H 10050 2300 50  0001 C CNN
	1    10050 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02224
U 1 1 5F9B630E
P 10000 2600
F 0 "#PWR02224" H 10000 2350 50  0001 C CNN
F 1 "GND" H 10000 2475 50  0000 C CNN
F 2 "" H 10000 2600 50  0001 C CNN
F 3 "" H 10000 2600 50  0001 C CNN
	1    10000 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 2600 9950 2600
Wire Wire Line
	9950 2300 10050 2300
Text Notes 4600 5650 2    60   ~ 12
DbgLED
Text Notes 11200 2450 2    50   ~ 10
DNP (LSE\nnot used)
$Comp
L customlib_mj:DS3231_Module_6pins RTC2201
U 1 1 5FA4E1CC
P 10450 5450
F 0 "RTC2201" H 10450 5750 60  0000 C CNN
F 1 "DS3231_Module_6pins" V 10700 5450 60  0000 C CNN
F 2 "customlib_mj_fp:DS3231_module_6pin_horizontal_mnt" H 10450 5450 60  0001 C CNN
F 3 "" H 10450 5450 60  0001 C CNN
	1    10450 5450
	1    0    0    -1  
$EndComp
Text GLabel 5000 5200 2    50   Output ~ 0
DBGLEDn
Wire Wire Line
	5000 5200 4850 5200
Connection ~ 4850 5200
Wire Wire Line
	4850 5200 4850 5250
$EndSCHEMATC
