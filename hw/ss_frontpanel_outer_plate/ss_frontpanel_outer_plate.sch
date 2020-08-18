EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Solderstation Frontpanel (outer plate)"
Date "2020-08-02"
Rev "P1a"
Comp "MaJo Electronics :)"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Mechanical:MountingHole H1
U 1 1 5FB1860C
P 5250 6950
F 0 "H1" H 5604 6996 50  0000 C CNN
F 1 "MountingHole" H 5604 6905 50  0000 C CNN
F 2 "customlib_mj_fp:MountingHole_3.5mm_Hammond_panel_screws" H 5250 6950 50  0001 C CNN
F 3 "~" H 5250 6950 50  0001 C CNN
	1    5250 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FB18D09
P 6000 6950
F 0 "H2" H 6354 6996 50  0000 C CNN
F 1 "MountingHole" H 6354 6905 50  0000 C CNN
F 2 "customlib_mj_fp:MountingHole_3.5mm_Hammond_panel_screws" H 6000 6950 50  0001 C CNN
F 3 "~" H 6000 6950 50  0001 C CNN
	1    6000 6950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5FB18D47
P 5250 7350
F 0 "H3" H 5604 7396 50  0000 C CNN
F 1 "MountingHole" H 5604 7305 50  0000 C CNN
F 2 "customlib_mj_fp:MountingHole_3.5mm_Hammond_panel_screws" H 5250 7350 50  0001 C CNN
F 3 "~" H 5250 7350 50  0001 C CNN
	1    5250 7350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5FB18EE6
P 6000 7350
F 0 "H4" H 6354 7396 50  0000 C CNN
F 1 "MountingHole" H 6354 7305 50  0000 C CNN
F 2 "customlib_mj_fp:MountingHole_3.5mm_Hammond_panel_screws" H 6000 7350 50  0001 C CNN
F 3 "~" H 6000 7350 50  0001 C CNN
	1    6000 7350
	1    0    0    -1  
$EndComp
$Sheet
S 6950 4050 2350 2150
U 5FB1FD88
F0 "Touch-sense controller" 50
F1 "Frontpanel_touch_sense.sch" 50
$EndSheet
$Comp
L customlib_mj:NHD3.12-Mechanical_window M1
U 1 1 5FB2C09C
P 3050 5900
F 0 "M1" H 3050 6150 50  0000 C CNN
F 1 "NHD3.12-Mechanical_window" H 3050 5650 50  0000 C CNN
F 2 "customlib_mj_fp:NHD3_12-Reverse_Bezel" H 3050 5900 50  0001 C CNN
F 3 "" H 3050 5900 50  0001 C CNN
	1    3050 5900
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Mech_cutout_SS_left_pwrbtn_and_speedbtns M2
U 1 1 5FB2CD09
P 2200 6550
F 0 "M2" H 2200 6300 50  0000 C CNN
F 1 "Mech_cutout_SS_left_pwrbtn_and_speedbtns" H 2200 6250 50  0000 C CNN
F 2 "customlib_mj_fp:Frontpanel_L_Powerbtn_Pushbtns_outer_cutouts" H 2200 6100 50  0001 C CNN
F 3 "" H 2200 6100 50  0001 C CNN
	1    2200 6550
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Mech_cutout_SS_right_rotary_and_speedbtns M3
U 1 1 5FB2D7A3
P 3550 6550
F 0 "M3" H 3550 6350 50  0000 C CNN
F 1 "Mech_cutout_SS_right_rotary_and_speedbtns" H 3550 5950 50  0000 C CNN
F 2 "customlib_mj_fp:Frontpanel_R_RotaryEnc_Pushbtns_outer_cutouts" H 3550 6100 50  0001 C CNN
F 3 "" H 3550 6100 50  0001 C CNN
	1    3550 6550
	1    0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small Logo2
U 1 1 6004349E
P 10650 6200
F 0 "Logo2" H 10650 6475 50  0000 C CNN
F 1 "Logo_Open_Hardware_Small" H 10650 6000 50  0000 C CNN
F 2 "Symbol:OSHW-Logo_5.7x6mm_SilkScreen" H 10650 6200 50  0001 C CNN
F 3 "~" H 10650 6200 50  0001 C CNN
	1    10650 6200
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Logo_MJ Logo1
U 1 1 60048A8C
P 10400 5600
F 0 "Logo1" H 10400 5700 50  0000 C CNN
F 1 "Logo_MJ" H 10400 5500 50  0000 C CNN
F 2 "customlib_mj_fp:MJ_10.3x12.7" H 10400 5600 50  0001 C CNN
F 3 "" H 10400 5600 50  0001 C CNN
	1    10400 5600
	1    0    0    -1  
$EndComp
$Comp
L customlib_mj:Logo_MJ Logo3
U 1 1 60054C86
P 10850 5600
F 0 "Logo3" H 10850 5700 50  0000 C CNN
F 1 "Logo_Kicad" H 10850 5500 50  0000 C CNN
F 2 "Symbol:KiCad-Logo2_5mm_SilkScreen" H 10850 5600 50  0001 C CNN
F 3 "" H 10850 5600 50  0001 C CNN
	1    10850 5600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
