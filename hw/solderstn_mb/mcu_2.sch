EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title "STM32F429 MCU power, decoupling"
Date "2020-04-26"
Rev "R0.1"
Comp "SolderingStationGroup : Jonny Svärd / Mathias Johansson / Magnus Thulesius"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L customlib_mj:STM32F429VITx U?
U 3 1 5EAFCF37
P 5050 3550
F 0 "U?" H 4706 4840 60  0000 L CNN
F 1 "STM32F429VITx" H 4706 4734 60  0000 L CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 4150 3800 60  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/stm32f429ng.pdf" H 1350 5000 60  0001 L CNN
F 4 "STM32F429VITx" H 4750 3900 60  0001 L CNN "manf#"
F 5 "ARM Cortex-M4 MCU, 2048KB flash, 192KB RAM, 180MHz, 1.8-3.6V, 82 GPIO, LQFP-100 14x14mm. Ref. Man : RM0090" H 2350 3500 60  0001 L CNN "Field5"
	3    5050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F35AB5B
P 3800 2200
F 0 "#PWR?" H 3800 1950 50  0001 C CNN
F 1 "GND" H 3805 2027 50  0000 C CNN
F 2 "" H 3800 2200 50  0001 C CNN
F 3 "" H 3800 2200 50  0001 C CNN
	1    3800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5F35ADFC
P 3400 2300
F 0 "#PWR?" H 3400 2150 50  0001 C CNN
F 1 "VDD" H 3415 2473 50  0000 C CNN
F 2 "" H 3400 2300 50  0001 C CNN
F 3 "" H 3400 2300 50  0001 C CNN
	1    3400 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F35B134
P 3300 2550
F 0 "R?" H 3359 2596 50  0000 L CNN
F 1 "R_Small" H 3359 2505 50  0000 L CNN
F 2 "" H 3300 2550 50  0001 C CNN
F 3 "~" H 3300 2550 50  0001 C CNN
	1    3300 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F35B2D2
P 2950 2450
F 0 "C?" H 3042 2496 50  0000 L CNN
F 1 "C_Small" H 3042 2405 50  0000 L CNN
F 2 "" H 2950 2450 50  0001 C CNN
F 3 "~" H 2950 2450 50  0001 C CNN
	1    2950 2450
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Ferrite_Bead_Small FB?
U 1 1 5F35B5A8
P 2800 3000
F 0 "FB?" H 2900 3046 50  0000 L CNN
F 1 "Ferrite_Bead_Small" H 2900 2955 50  0000 L CNN
F 2 "" V 2730 3000 50  0001 C CNN
F 3 "~" H 2800 3000 50  0001 C CNN
	1    2800 3000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
