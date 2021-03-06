EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Connector:AudioJack3_Ground_SwitchTR J?
U 1 1 6131806A
P 1625 1225
F 0 "J?" H 1607 1550 50  0000 C CNN
F 1 "AudioJack3_Ground_SwitchTR" H 1607 1459 50  0000 C CNN
F 2 "" H 1625 1225 50  0001 C CNN
F 3 "~" H 1625 1225 50  0001 C CNN
	1    1625 1225
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 6131969B
P 1625 1725
F 0 "#PWR?" H 1625 1475 50  0001 C CNN
F 1 "GNDA" H 1630 1552 50  0000 C CNN
F 2 "" H 1625 1725 50  0001 C CNN
F 3 "" H 1625 1725 50  0001 C CNN
	1    1625 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 1125 1950 1125
Wire Wire Line
	1950 1125 1950 1525
Wire Wire Line
	1950 1725 1625 1725
Connection ~ 1625 1725
Wire Wire Line
	1825 1525 1950 1525
Connection ~ 1950 1525
Wire Wire Line
	1950 1525 1950 1725
$Comp
L Device:R R?
U 1 1 61319BF1
P 2400 1275
F 0 "R?" H 2470 1321 50  0000 L CNN
F 1 "100K" H 2470 1230 50  0000 L CNN
F 2 "" V 2330 1275 50  0001 C CNN
F 3 "~" H 2400 1275 50  0001 C CNN
	1    2400 1275
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61319CB3
P 2400 1575
F 0 "R?" H 2470 1621 50  0000 L CNN
F 1 "100K" H 2470 1530 50  0000 L CNN
F 2 "" V 2330 1575 50  0001 C CNN
F 3 "~" H 2400 1575 50  0001 C CNN
	1    2400 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1425 1825 1425
Connection ~ 2400 1425
$Comp
L power:GND #PWR?
U 1 1 6131B994
P 4500 6050
F 0 "#PWR?" H 4500 5800 50  0001 C CNN
F 1 "GND" H 4505 5877 50  0000 C CNN
F 2 "" H 4500 6050 50  0001 C CNN
F 3 "" H 4500 6050 50  0001 C CNN
	1    4500 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6131B5EA
P 2950 6200
F 0 "R?" H 3020 6246 50  0000 L CNN
F 1 "22R" H 3020 6155 50  0000 L CNN
F 2 "" V 2880 6200 50  0001 C CNN
F 3 "~" H 2950 6200 50  0001 C CNN
	1    2950 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6131C18F
P 3300 6200
F 0 "R?" H 3370 6246 50  0000 L CNN
F 1 "22R" H 3370 6155 50  0000 L CNN
F 2 "" V 3230 6200 50  0001 C CNN
F 3 "~" H 3300 6200 50  0001 C CNN
	1    3300 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6131C6AF
P 4050 6200
F 0 "R?" H 4120 6246 50  0000 L CNN
F 1 "470K" H 4120 6155 50  0000 L CNN
F 2 "" V 3980 6200 50  0001 C CNN
F 3 "~" H 4050 6200 50  0001 C CNN
	1    4050 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6131C759
P 4050 6500
F 0 "R?" H 4120 6546 50  0000 L CNN
F 1 "470K" H 4120 6455 50  0000 L CNN
F 2 "" V 3980 6500 50  0001 C CNN
F 3 "~" H 4050 6500 50  0001 C CNN
	1    4050 6500
	1    0    0    -1  
$EndComp
Connection ~ 4050 6350
$Comp
L Device:C C?
U 1 1 61324990
P 4500 6500
F 0 "C?" H 4615 6546 50  0000 L CNN
F 1 "10uF" H 4615 6455 50  0000 L CNN
F 2 "" H 4538 6350 50  0001 C CNN
F 3 "~" H 4500 6500 50  0001 C CNN
	1    4500 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6350 4500 6350
$Comp
L power:+3V3 #PWR?
U 1 1 613257F1
P 4050 6050
F 0 "#PWR?" H 4050 5900 50  0001 C CNN
F 1 "+3V3" H 4065 6223 50  0000 C CNN
F 2 "" H 4050 6050 50  0001 C CNN
F 3 "" H 4050 6050 50  0001 C CNN
	1    4050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6132BF09
P 3650 5900
F 0 "R?" H 3720 5946 50  0000 L CNN
F 1 "1K" H 3720 5855 50  0000 L CNN
F 2 "" V 3580 5900 50  0001 C CNN
F 3 "~" H 3650 5900 50  0001 C CNN
	1    3650 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 61331C2F
P 4500 5900
F 0 "D?" V 4454 5980 50  0000 L CNN
F 1 "ESD5Z3.3T1G" V 4545 5980 50  0000 L CNN
F 2 "" H 4500 5900 50  0001 C CNN
F 3 "~" H 4500 5900 50  0001 C CNN
	1    4500 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 5750 4500 5750
Text GLabel 4750 5750 2    50   Input ~ 0
ADC
Wire Wire Line
	4500 5750 4750 5750
Connection ~ 4500 5750
Connection ~ 3300 6050
Wire Wire Line
	3300 6050 3650 6050
Connection ~ 3300 6350
Wire Wire Line
	2950 6050 3300 6050
Wire Wire Line
	2950 6350 3300 6350
Wire Wire Line
	3300 6350 3650 6350
Text Notes 950  6450 0    50   ~ 0
YHDC SCT-013-00 CT
Text Notes 2950 6550 0    50   ~ 0
23kW Max @ 240V
Wire Wire Line
	2950 6350 2350 6350
Connection ~ 2950 6350
Text Notes 3000 6450 0    50   ~ 0
Burden
$Comp
L Device:R R?
U 1 1 6133B882
P 2950 7000
F 0 "R?" H 3020 7046 50  0000 L CNN
F 1 "120R" H 3020 6955 50  0000 L CNN
F 2 "" V 2880 7000 50  0001 C CNN
F 3 "~" H 2950 7000 50  0001 C CNN
	1    2950 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6133B998
P 3300 7000
F 0 "R?" H 3370 7046 50  0000 L CNN
F 1 "120R" H 3370 6955 50  0000 L CNN
F 2 "" V 3230 7000 50  0001 C CNN
F 3 "~" H 3300 7000 50  0001 C CNN
	1    3300 7000
	1    0    0    -1  
$EndComp
Connection ~ 3300 6850
Wire Wire Line
	3300 6850 3500 6850
Connection ~ 3300 7150
Wire Wire Line
	2950 6850 3300 6850
Wire Wire Line
	2950 7150 3300 7150
Wire Wire Line
	3300 7150 3850 7150
Text Notes 2700 6800 0    50   ~ 0
YHDC SCT-013-00 CT
Text Notes 2800 7350 0    50   ~ 0
4kW Max @ 240V
Wire Wire Line
	2950 6850 2800 6850
Connection ~ 2950 6850
Wire Wire Line
	2950 7150 2800 7150
Connection ~ 2950 7150
Text Notes 3000 7250 0    50   ~ 0
Burden
$Comp
L power:GNDA #PWR?
U 1 1 6133DE1D
P 4050 6650
F 0 "#PWR?" H 4050 6400 50  0001 C CNN
F 1 "GNDA" H 4055 6477 50  0000 C CNN
F 2 "" H 4050 6650 50  0001 C CNN
F 3 "" H 4050 6650 50  0001 C CNN
	1    4050 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 6133E681
P 2150 6650
F 0 "#PWR?" H 2150 6400 50  0001 C CNN
F 1 "GNDA" H 2155 6477 50  0000 C CNN
F 2 "" H 2150 6650 50  0001 C CNN
F 3 "" H 2150 6650 50  0001 C CNN
	1    2150 6650
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3_Ground_SwitchTR J?
U 1 1 6133F4AE
P 2150 6150
F 0 "J?" H 2132 6475 50  0000 C CNN
F 1 "AudioJack3_Ground_SwitchTR" H 2132 6384 50  0000 C CNN
F 2 "" H 2150 6150 50  0001 C CNN
F 3 "~" H 2150 6150 50  0001 C CNN
	1    2150 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6050 2700 6050
Wire Wire Line
	2700 6050 2700 6150
Wire Wire Line
	2700 6150 2350 6150
Connection ~ 2950 6050
Wire Wire Line
	2350 6050 2450 6050
Wire Wire Line
	2450 6050 2450 6450
Wire Wire Line
	2450 6650 2150 6650
Connection ~ 2150 6650
Wire Wire Line
	2350 6450 2450 6450
Connection ~ 2450 6450
Wire Wire Line
	2450 6450 2450 6650
Text Notes 1250 6850 0    50   ~ 0
tip: white\nring: red\nsleeve: shield
$Comp
L Connector:Barrel_Jack_Switch J?
U 1 1 613475FC
P 1225 4475
F 0 "J?" H 1282 4792 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1282 4701 50  0000 C CNN
F 2 "" H 1275 4435 50  0001 C CNN
F 3 "~" H 1275 4435 50  0001 C CNN
	1    1225 4475
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61348A46
P 1925 4375
F 0 "C?" V 1673 4375 50  0000 C CNN
F 1 "1uF 25V" V 1764 4375 50  0000 C CNN
F 2 "" H 1963 4225 50  0001 C CNN
F 3 "~" H 1925 4375 50  0001 C CNN
	1    1925 4375
	0    1    1    0   
$EndComp
Wire Wire Line
	1525 4375 1675 4375
$Comp
L Device:R R?
U 1 1 6134A33E
P 2275 4375
F 0 "R?" V 2375 4325 50  0000 L CNN
F 1 "120K" V 2175 4275 50  0000 L CNN
F 2 "" V 2205 4375 50  0001 C CNN
F 3 "~" H 2275 4375 50  0001 C CNN
	1    2275 4375
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2075 4375 2125 4375
Wire Wire Line
	1675 4375 1675 3925
Connection ~ 1675 4375
Wire Wire Line
	1675 4375 1775 4375
$Comp
L Device:R R?
U 1 1 6134D31E
P 2675 4375
F 0 "R?" V 2775 4325 50  0000 L CNN
F 1 "10K" V 2575 4325 50  0000 L CNN
F 2 "" V 2605 4375 50  0001 C CNN
F 3 "~" H 2675 4375 50  0001 C CNN
	1    2675 4375
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6134EFE6
P 2475 4075
F 0 "R?" H 2545 4121 50  0000 L CNN
F 1 "470K" H 2545 4030 50  0000 L CNN
F 2 "" V 2405 4075 50  0001 C CNN
F 3 "~" H 2475 4075 50  0001 C CNN
	1    2475 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2425 4375 2475 4375
Wire Wire Line
	2475 4225 2475 4375
Connection ~ 2475 4375
Wire Wire Line
	2475 4375 2525 4375
Wire Wire Line
	2475 3925 2475 3825
Wire Wire Line
	2475 3825 3400 3825
Text GLabel 3750 3825 2    50   Input ~ 0
ADC
$Comp
L power:GND #PWR?
U 1 1 6135524C
P 3400 4125
F 0 "#PWR?" H 3400 3875 50  0001 C CNN
F 1 "GND" H 3405 3952 50  0000 C CNN
F 2 "" H 3400 4125 50  0001 C CNN
F 3 "" H 3400 4125 50  0001 C CNN
	1    3400 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 61355414
P 3400 3975
F 0 "D?" V 3354 4055 50  0000 L CNN
F 1 "ESD5Z3.3T1G" V 3445 4055 50  0000 L CNN
F 2 "" H 3400 3975 50  0001 C CNN
F 3 "~" H 3400 3975 50  0001 C CNN
	1    3400 3975
	0    1    1    0   
$EndComp
Connection ~ 3400 3825
Wire Wire Line
	3400 3825 3750 3825
$Comp
L Device:R R?
U 1 1 613582B9
P 2950 4225
F 0 "R?" H 3020 4271 50  0000 L CNN
F 1 "470K" H 3020 4180 50  0000 L CNN
F 2 "" V 2880 4225 50  0001 C CNN
F 3 "~" H 2950 4225 50  0001 C CNN
	1    2950 4225
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 613582C3
P 2950 4525
F 0 "R?" H 3020 4571 50  0000 L CNN
F 1 "470K" H 3020 4480 50  0000 L CNN
F 2 "" V 2880 4525 50  0001 C CNN
F 3 "~" H 2950 4525 50  0001 C CNN
	1    2950 4525
	1    0    0    -1  
$EndComp
Connection ~ 2950 4375
$Comp
L Device:C C?
U 1 1 613582CE
P 3400 4525
F 0 "C?" H 3515 4571 50  0000 L CNN
F 1 "10uF" H 3515 4480 50  0000 L CNN
F 2 "" H 3438 4375 50  0001 C CNN
F 3 "~" H 3400 4525 50  0001 C CNN
	1    3400 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4375 3400 4375
$Comp
L power:+3V3 #PWR?
U 1 1 613582D9
P 2950 4075
F 0 "#PWR?" H 2950 3925 50  0001 C CNN
F 1 "+3V3" H 2965 4248 50  0000 C CNN
F 2 "" H 2950 4075 50  0001 C CNN
F 3 "" H 2950 4075 50  0001 C CNN
	1    2950 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	2825 4375 2950 4375
$Comp
L power:GNDA #PWR?
U 1 1 613582F8
P 2950 4675
F 0 "#PWR?" H 2950 4425 50  0001 C CNN
F 1 "GNDA" H 2955 4502 50  0000 C CNN
F 2 "" H 2950 4675 50  0001 C CNN
F 3 "" H 2950 4675 50  0001 C CNN
	1    2950 4675
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 613763AE
P 4500 6650
F 0 "#PWR?" H 4500 6400 50  0001 C CNN
F 1 "GNDA" H 4505 6477 50  0000 C CNN
F 2 "" H 4500 6650 50  0001 C CNN
F 3 "" H 4500 6650 50  0001 C CNN
	1    4500 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 613774B8
P 3400 4675
F 0 "#PWR?" H 3400 4425 50  0001 C CNN
F 1 "GNDA" H 3405 4502 50  0000 C CNN
F 2 "" H 3400 4675 50  0001 C CNN
F 3 "" H 3400 4675 50  0001 C CNN
	1    3400 4675
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 61377A23
P 1675 4675
F 0 "#PWR?" H 1675 4425 50  0001 C CNN
F 1 "GNDA" H 1680 4502 50  0000 C CNN
F 2 "" H 1675 4675 50  0001 C CNN
F 3 "" H 1675 4675 50  0001 C CNN
	1    1675 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 4575 1675 4575
Wire Wire Line
	1675 4575 1675 4675
Wire Wire Line
	1525 4475 1675 4475
Wire Wire Line
	1675 4475 1675 4575
Connection ~ 1675 4575
Text Notes 1200 7275 0    50   ~ 0
nb rewire CT Sensor Jack\nplug disconnect red signal\nwire from cable shield and\nconnect to ring.
Text Notes 1625 3700 0    100  ~ 0
AC-AC 9V VRMS Sample
Wire Notes Line
	850  3500 850  5025
Wire Notes Line
	850  5025 4175 5025
Wire Notes Line
	4175 5025 4175 3500
Wire Notes Line
	4175 3500 850  3500
Text Notes 2375 5575 0    100  ~ 0
CT Current Sensors
Wire Notes Line
	825  5325 5500 5325
Wire Notes Line
	5500 5325 5500 7475
Wire Notes Line
	5500 7475 825  7475
Wire Notes Line
	825  7475 825  5325
$Comp
L Device:C C?
U 1 1 6134F3D7
P 3650 6200
F 0 "C?" H 3765 6246 50  0000 L CNN
F 1 "0.1uF" H 3765 6155 50  0000 L CNN
F 2 "" H 3688 6050 50  0001 C CNN
F 3 "~" H 3650 6200 50  0001 C CNN
	1    3650 6200
	1    0    0    -1  
$EndComp
Connection ~ 3650 6050
Connection ~ 3650 6350
Wire Wire Line
	3650 6350 4050 6350
Text Notes 850  8750 0    50   ~ 0
https://www.casler.org/wordpress/low-current-measurement-performance-of-the-sct013/\nhttps://github.com/openenergymonitor/emontx3/blob/master/hardware/schematic.png\nhttps://github.com/openenergymonitor/emonpi/blob/master/hardware/emonpi/emonpi_V1_6/emonPi_V1.6_sch.png
$EndSCHEMATC
