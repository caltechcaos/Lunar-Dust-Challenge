EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x07_Female J6
U 1 1 605BE303
P 3300 2800
F 0 "J6" H 3328 2826 50  0000 L CNN
F 1 "Conn_01x07_Female" H 3328 2735 50  0000 L CNN
F 2 "Connector_PinSocket_1.00mm:PinSocket_1x07_P1.00mm_Vertical_SMD_Pin1Left" H 3300 2800 50  0001 C CNN
F 3 "~" H 3300 2800 50  0001 C CNN
	1    3300 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Male J1
U 1 1 605C1455
P 1200 1600
F 0 "J1" H 1308 2081 50  0000 C CNN
F 1 "Conn_01x07_Male" H 1308 1990 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x07_P1.00mm_Vertical_SMD_Pin1Left" H 1200 1600 50  0001 C CNN
F 3 "~" H 1200 1600 50  0001 C CNN
	1    1200 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Male J2
U 1 1 605C560B
P 1150 2800
F 0 "J2" H 1258 3281 50  0000 C CNN
F 1 "Conn_01x07_Male" H 1258 3190 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x07_P1.00mm_Vertical_SMD_Pin1Left" H 1150 2800 50  0001 C CNN
F 3 "~" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Female J5
U 1 1 605C7E01
P 3250 1600
F 0 "J5" H 3278 1626 50  0000 L CNN
F 1 "Conn_01x07_Female" H 3278 1535 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x07_P1.00mm_Vertical_SMD_Pin1Right" H 3250 1600 50  0001 C CNN
F 3 "~" H 3250 1600 50  0001 C CNN
	1    3250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1300 1800 1300
Wire Wire Line
	1400 1900 1800 1900
Wire Wire Line
	1800 1900 1800 2500
Wire Wire Line
	1800 2500 1350 2500
Connection ~ 1800 1900
Wire Wire Line
	1800 1900 3050 1900
Wire Wire Line
	1800 2500 3100 2500
Connection ~ 1800 2500
Wire Wire Line
	1800 1900 1800 1300
Connection ~ 1800 1300
Wire Wire Line
	1800 1300 3050 1300
Wire Wire Line
	1800 2500 1800 3100
Wire Wire Line
	1800 3100 1350 3100
Wire Wire Line
	1800 3100 3100 3100
Connection ~ 1800 3100
Wire Wire Line
	1400 1400 1950 1400
Wire Wire Line
	1950 1400 1950 1800
Wire Wire Line
	1400 1800 1950 1800
Connection ~ 1950 1400
Wire Wire Line
	1950 1400 3050 1400
Connection ~ 1950 1800
Wire Wire Line
	1950 1800 3050 1800
Wire Wire Line
	1350 2600 1950 2600
Wire Wire Line
	1950 1800 1950 2600
Connection ~ 1950 2600
Wire Wire Line
	1950 2600 3100 2600
Wire Wire Line
	1350 2700 2100 2700
Wire Wire Line
	1400 1500 2100 1500
Wire Wire Line
	3050 1600 2250 1600
Wire Wire Line
	1400 1700 2100 1700
Wire Wire Line
	2100 1500 2100 1700
Connection ~ 2100 1500
Wire Wire Line
	2100 1500 3050 1500
Connection ~ 2100 1700
Wire Wire Line
	2100 1700 3050 1700
Wire Wire Line
	2100 1700 2100 2700
Connection ~ 2100 2700
Wire Wire Line
	2100 2700 3100 2700
Wire Wire Line
	1350 2900 2100 2900
Wire Wire Line
	2100 2700 2100 2900
Connection ~ 2100 2900
Wire Wire Line
	2100 2900 3100 2900
Wire Wire Line
	1950 2600 1950 3000
Wire Wire Line
	1350 3000 1950 3000
Connection ~ 1950 3000
Wire Wire Line
	1950 3000 3100 3000
Wire Wire Line
	2250 1600 2250 2800
Wire Wire Line
	1350 2800 2250 2800
Connection ~ 2250 1600
Wire Wire Line
	2250 1600 1400 1600
Connection ~ 2250 2800
Wire Wire Line
	2250 2800 3100 2800
$Comp
L Connector:Conn_01x07_Female J8
U 1 1 605EC520
P 3300 4950
F 0 "J8" H 3328 4976 50  0000 L CNN
F 1 "Conn_01x07_Female" H 3328 4885 50  0000 L CNN
F 2 "Connector_PinSocket_1.00mm:PinSocket_1x07_P1.00mm_Vertical_SMD_Pin1Left" H 3300 4950 50  0001 C CNN
F 3 "~" H 3300 4950 50  0001 C CNN
	1    3300 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Male J4
U 1 1 605EC52C
P 1150 4950
F 0 "J4" H 1258 5431 50  0000 C CNN
F 1 "Conn_01x07_Male" H 1258 5340 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x07_P1.00mm_Vertical_SMD_Pin1Left" H 1150 4950 50  0001 C CNN
F 3 "~" H 1150 4950 50  0001 C CNN
	1    1150 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x07_Female J7
U 1 1 605EC532
P 3250 3750
F 0 "J7" H 3278 3776 50  0000 L CNN
F 1 "Conn_01x07_Female" H 3278 3685 50  0000 L CNN
F 2 "Connector_PinSocket_1.00mm:PinSocket_1x07_P1.00mm_Vertical_SMD_Pin1Left" H 3250 3750 50  0001 C CNN
F 3 "~" H 3250 3750 50  0001 C CNN
	1    3250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3450 1800 3450
Wire Wire Line
	1400 4050 1800 4050
Wire Wire Line
	1800 4050 1800 4650
Wire Wire Line
	1800 4650 1350 4650
Connection ~ 1800 4050
Wire Wire Line
	1800 4050 3050 4050
Wire Wire Line
	1800 4650 3100 4650
Connection ~ 1800 4650
Wire Wire Line
	1800 4050 1800 3450
Connection ~ 1800 3450
Wire Wire Line
	1800 3450 3050 3450
Wire Wire Line
	1800 4650 1800 5250
Wire Wire Line
	1800 5250 1350 5250
Wire Wire Line
	1800 5250 3100 5250
Connection ~ 1800 5250
Wire Wire Line
	1400 3550 1950 3550
Wire Wire Line
	1950 3550 1950 3950
Wire Wire Line
	1400 3950 1950 3950
Connection ~ 1950 3550
Wire Wire Line
	1950 3550 3050 3550
Connection ~ 1950 3950
Wire Wire Line
	1950 3950 3050 3950
Wire Wire Line
	1350 4750 1950 4750
Wire Wire Line
	1950 3950 1950 4750
Connection ~ 1950 4750
Wire Wire Line
	1950 4750 3100 4750
Wire Wire Line
	1350 4850 2100 4850
Wire Wire Line
	1400 3650 2100 3650
Wire Wire Line
	3050 3750 2250 3750
Wire Wire Line
	1400 3850 2100 3850
Wire Wire Line
	2100 3650 2100 3850
Connection ~ 2100 3650
Wire Wire Line
	2100 3650 3050 3650
Connection ~ 2100 3850
Wire Wire Line
	2100 3850 3050 3850
Wire Wire Line
	2100 3850 2100 4850
Connection ~ 2100 4850
Wire Wire Line
	2100 4850 3100 4850
Wire Wire Line
	1350 5050 2100 5050
Wire Wire Line
	2100 4850 2100 5050
Connection ~ 2100 5050
Wire Wire Line
	2100 5050 3100 5050
Wire Wire Line
	1950 4750 1950 5150
Wire Wire Line
	1350 5150 1950 5150
Connection ~ 1950 5150
Wire Wire Line
	1950 5150 3100 5150
Wire Wire Line
	2250 3750 2250 4950
Wire Wire Line
	1350 4950 2250 4950
Connection ~ 2250 3750
Wire Wire Line
	2250 3750 1400 3750
Connection ~ 2250 4950
Wire Wire Line
	2250 4950 3100 4950
Wire Wire Line
	1800 3100 1800 3450
Wire Wire Line
	1950 3550 1950 3000
Wire Wire Line
	2100 2900 2100 3650
Wire Wire Line
	2250 3750 2250 2800
$Comp
L Connector:Conn_01x07_Male J3
U 1 1 605EC526
P 1200 3750
F 0 "J3" H 1308 4231 50  0000 C CNN
F 1 "Conn_01x07_Male" H 1308 4140 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x07_P1.00mm_Vertical_SMD_Pin1Left" H 1200 3750 50  0001 C CNN
F 3 "~" H 1200 3750 50  0001 C CNN
	1    1200 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
