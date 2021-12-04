EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L power:GND #PWR066
U 1 1 5DC33EC0
P 10150 6800
F 0 "#PWR066" H 10150 6550 50  0001 C CNN
F 1 "GND" H 10155 6627 50  0000 C CNN
F 2 "" H 10150 6800 50  0001 C CNN
F 3 "" H 10150 6800 50  0001 C CNN
	1    10150 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5DE04AED
P 5250 2600
AR Path="/5DDE6CFA/5DE04AED" Ref="J?"  Part="1" 
AR Path="/5DDE1103/5DE04AED" Ref="J7"  Part="1" 
F 0 "J7" H 5168 2275 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 5168 2366 50  0000 C CNN
F 2 "iclr-hw:PHOENIX_1757242" H 5250 2600 50  0001 C CNN
F 3 "~" H 5250 2600 50  0001 C CNN
	1    5250 2600
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5DE04AFB
P 8500 3900
AR Path="/5DDE6CFA/5DE04AFB" Ref="J?"  Part="1" 
AR Path="/5DDE1103/5DE04AFB" Ref="J8"  Part="1" 
F 0 "J8" V 8464 3712 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 8373 3712 50  0000 R CNN
F 2 "iclr-hw:PHOENIX_1757242" H 8500 3900 50  0001 C CNN
F 3 "~" H 8500 3900 50  0001 C CNN
	1    8500 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE04B01
P 7850 4450
AR Path="/5DDE6CFA/5DE04B01" Ref="R?"  Part="1" 
AR Path="/5DDE1103/5DE04B01" Ref="R32"  Part="1" 
F 0 "R32" H 7920 4496 50  0000 L CNN
F 1 "1K" H 7920 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 4450 50  0001 C CNN
F 3 "~" H 7850 4450 50  0001 C CNN
	1    7850 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE04B07
P 7850 4150
AR Path="/5DDE6CFA/5DE04B07" Ref="D?"  Part="1" 
AR Path="/5DDE1103/5DE04B07" Ref="D14"  Part="1" 
F 0 "D14" V 7889 4033 50  0000 R CNN
F 1 "FIRING" V 7798 4033 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 7850 4150 50  0001 C CNN
F 3 "~" H 7850 4150 50  0001 C CNN
	1    7850 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 4000 8300 4000
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5DE04B13
P 8500 5050
AR Path="/5DDE6CFA/5DE04B13" Ref="Q?"  Part="1" 
AR Path="/5DDE1103/5DE04B13" Ref="Q5"  Part="1" 
F 0 "Q5" H 8706 5096 50  0000 L CNN
F 1 "PMV20ENR" H 8706 5005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8700 5150 50  0001 C CNN
F 3 "~" H 8500 5050 50  0001 C CNN
	1    8500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5050 8100 5050
Wire Wire Line
	8600 5250 8600 5450
$Comp
L power:GND #PWR?
U 1 1 5DE04B1B
P 8600 5450
AR Path="/5DDE6CFA/5DE04B1B" Ref="#PWR?"  Part="1" 
AR Path="/5DDE1103/5DE04B1B" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 8600 5200 50  0001 C CNN
F 1 "GND" H 8605 5277 50  0000 C CNN
F 2 "" H 8600 5450 50  0001 C CNN
F 3 "" H 8600 5450 50  0001 C CNN
	1    8600 5450
	1    0    0    -1  
$EndComp
Connection ~ 8600 4150
Wire Wire Line
	8600 4150 8600 4200
$Comp
L Isolator:LTV-817S U?
U 1 1 5DE04B23
P 9450 4700
AR Path="/5DDE6CFA/5DE04B23" Ref="U?"  Part="1" 
AR Path="/5DDE1103/5DE04B23" Ref="U10"  Part="1" 
F 0 "U10" H 9450 5025 50  0000 C CNN
F 1 "LTV-817S" H 9450 4934 50  0000 C CNN
F 2 "Package_DIP:SMDIP-4_W9.53mm" H 9450 4400 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 9100 5000 50  0001 C CNN
	1    9450 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 4150 9750 4600
Wire Wire Line
	8600 4150 9750 4150
$Comp
L Device:R R?
U 1 1 5DE04B2B
P 9750 5050
AR Path="/5DDE6CFA/5DE04B2B" Ref="R?"  Part="1" 
AR Path="/5DDE1103/5DE04B2B" Ref="R34"  Part="1" 
F 0 "R34" H 9820 5096 50  0000 L CNN
F 1 "500" H 9820 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9680 5050 50  0001 C CNN
F 3 "~" H 9750 5050 50  0001 C CNN
	1    9750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5250 9450 5250
Wire Wire Line
	9450 5250 9450 5300
$Comp
L power:GND #PWR?
U 1 1 5DE04B33
P 9450 5300
AR Path="/5DDE6CFA/5DE04B33" Ref="#PWR?"  Part="1" 
AR Path="/5DDE1103/5DE04B33" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 9450 5050 50  0001 C CNN
F 1 "GND" H 9455 5127 50  0000 C CNN
F 2 "" H 9450 5300 50  0001 C CNN
F 3 "" H 9450 5300 50  0001 C CNN
	1    9450 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DE04B39
P 9150 5050
AR Path="/5DDE6CFA/5DE04B39" Ref="R?"  Part="1" 
AR Path="/5DDE1103/5DE04B39" Ref="R33"  Part="1" 
F 0 "R33" H 9220 5096 50  0000 L CNN
F 1 "500" H 9220 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9080 5050 50  0001 C CNN
F 3 "~" H 9150 5050 50  0001 C CNN
	1    9150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5250 9450 5250
Connection ~ 9450 5250
Wire Wire Line
	9150 4800 8900 4800
Text Notes 4800 2500 0    50   ~ 0
External ematch supply
$Comp
L Device:D_Schottky D?
U 1 1 5DE04B52
P 8600 4350
AR Path="/5DAD2180/5DE04B52" Ref="D?"  Part="1" 
AR Path="/5DB4FA2A/5DE04B52" Ref="D?"  Part="1" 
AR Path="/5DDE6CFA/5DE04B52" Ref="D?"  Part="1" 
AR Path="/5DDE1103/5DE04B52" Ref="D15"  Part="1" 
F 0 "D15" V 8646 4271 50  0000 R CNN
F 1 "D_Schottky" V 8555 4271 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 8600 4350 50  0001 C CNN
F 3 "http://www.smc-diodes.com/propdf/DSS12U%20THRU%20DSS125U%20N1873%20REV.A.pdf" H 8600 4350 50  0001 C CNN
	1    8600 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 5200 9150 5250
Wire Wire Line
	9750 5200 9750 5250
Wire Wire Line
	9750 4900 9750 4800
Wire Wire Line
	9150 4900 9150 4800
Connection ~ 9150 4800
$Comp
L Device:R R?
U 1 1 5DE04B5E
P 10150 4650
AR Path="/5DDE6CFA/5DE04B5E" Ref="R?"  Part="1" 
AR Path="/5DDE1103/5DE04B5E" Ref="R35"  Part="1" 
F 0 "R35" H 10220 4696 50  0000 L CNN
F 1 "1K" H 10220 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10080 4650 50  0001 C CNN
F 3 "~" H 10150 4650 50  0001 C CNN
	1    10150 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE04B64
P 10150 4350
AR Path="/5DDE6CFA/5DE04B64" Ref="D?"  Part="1" 
AR Path="/5DDE1103/5DE04B64" Ref="D16"  Part="1" 
F 0 "D16" V 10189 4233 50  0000 R CNN
F 1 "CONTINUITY" V 10098 4233 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 10150 4350 50  0001 C CNN
F 3 "~" H 10150 4350 50  0001 C CNN
	1    10150 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9750 4150 10150 4150
Wire Wire Line
	10150 4150 10150 4200
Connection ~ 9750 4150
$Comp
L power:GND #PWR?
U 1 1 5DE04B6D
P 10150 4850
AR Path="/5DDE6CFA/5DE04B6D" Ref="#PWR?"  Part="1" 
AR Path="/5DDE1103/5DE04B6D" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 10150 4600 50  0001 C CNN
F 1 "GND" H 10155 4677 50  0000 C CNN
F 2 "" H 10150 4850 50  0001 C CNN
F 3 "" H 10150 4850 50  0001 C CNN
	1    10150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4850 10150 4800
$Comp
L power:+3V3 #PWR?
U 1 1 5DE04B7A
P 9150 4600
AR Path="/5DDE6CFA/5DE04B7A" Ref="#PWR?"  Part="1" 
AR Path="/5DDE1103/5DE04B7A" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 9150 4450 50  0001 C CNN
F 1 "+3V3" H 9165 4773 50  0000 C CNN
F 2 "" H 9150 4600 50  0001 C CNN
F 3 "" H 9150 4600 50  0001 C CNN
	1    9150 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5DE32338
P 4200 4050
AR Path="/5DDE6CFA/5DE32338" Ref="J?"  Part="1" 
AR Path="/5DDE1103/5DE32338" Ref="J6"  Part="1" 
F 0 "J6" V 4164 3862 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 4073 3862 50  0000 R CNN
F 2 "iclr-hw:PHOENIX_1757242" H 4200 4050 50  0001 C CNN
F 3 "~" H 4200 4050 50  0001 C CNN
	1    4200 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DE3233E
P 3550 4600
AR Path="/5DDE6CFA/5DE3233E" Ref="R?"  Part="1" 
AR Path="/5DDE1103/5DE3233E" Ref="R27"  Part="1" 
F 0 "R27" H 3620 4646 50  0000 L CNN
F 1 "1K" H 3620 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3480 4600 50  0001 C CNN
F 3 "~" H 3550 4600 50  0001 C CNN
	1    3550 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE32344
P 3550 4300
AR Path="/5DDE6CFA/5DE32344" Ref="D?"  Part="1" 
AR Path="/5DDE1103/5DE32344" Ref="D10"  Part="1" 
F 0 "D10" V 3589 4183 50  0000 R CNN
F 1 "FIRING" V 3498 4183 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 3550 4300 50  0001 C CNN
F 3 "~" H 3550 4300 50  0001 C CNN
	1    3550 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 4150 4000 4150
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5DE32350
P 4250 5200
AR Path="/5DDE6CFA/5DE32350" Ref="Q?"  Part="1" 
AR Path="/5DDE1103/5DE32350" Ref="Q4"  Part="1" 
F 0 "Q4" H 4456 5246 50  0000 L CNN
F 1 "PMV20ENR" H 4456 5155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4450 5300 50  0001 C CNN
F 3 "~" H 4250 5200 50  0001 C CNN
	1    4250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5200 3850 5200
Wire Wire Line
	4350 5400 4350 5600
$Comp
L power:GND #PWR?
U 1 1 5DE32358
P 4350 5600
AR Path="/5DDE6CFA/5DE32358" Ref="#PWR?"  Part="1" 
AR Path="/5DDE1103/5DE32358" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 4350 5350 50  0001 C CNN
F 1 "GND" H 4355 5427 50  0000 C CNN
F 2 "" H 4350 5600 50  0001 C CNN
F 3 "" H 4350 5600 50  0001 C CNN
	1    4350 5600
	1    0    0    -1  
$EndComp
Connection ~ 4350 4300
Wire Wire Line
	4350 4300 4350 4350
$Comp
L Isolator:LTV-817S U?
U 1 1 5DE32360
P 5200 4850
AR Path="/5DDE6CFA/5DE32360" Ref="U?"  Part="1" 
AR Path="/5DDE1103/5DE32360" Ref="U9"  Part="1" 
F 0 "U9" H 5200 5175 50  0000 C CNN
F 1 "LTV-817S" H 5200 5084 50  0000 C CNN
F 2 "Package_DIP:SMDIP-4_W9.53mm" H 5200 4550 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4850 5150 50  0001 C CNN
	1    5200 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 4300 5500 4750
Wire Wire Line
	4350 4300 5500 4300
$Comp
L Device:R R?
U 1 1 5DE32368
P 5500 5200
AR Path="/5DDE6CFA/5DE32368" Ref="R?"  Part="1" 
AR Path="/5DDE1103/5DE32368" Ref="R29"  Part="1" 
F 0 "R29" H 5570 5246 50  0000 L CNN
F 1 "500" H 5570 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 5200 50  0001 C CNN
F 3 "~" H 5500 5200 50  0001 C CNN
	1    5500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5400 5200 5400
Wire Wire Line
	5200 5400 5200 5450
$Comp
L power:GND #PWR?
U 1 1 5DE32370
P 5200 5450
AR Path="/5DDE6CFA/5DE32370" Ref="#PWR?"  Part="1" 
AR Path="/5DDE1103/5DE32370" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 5200 5200 50  0001 C CNN
F 1 "GND" H 5205 5277 50  0000 C CNN
F 2 "" H 5200 5450 50  0001 C CNN
F 3 "" H 5200 5450 50  0001 C CNN
	1    5200 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DE32376
P 4900 5200
AR Path="/5DDE6CFA/5DE32376" Ref="R?"  Part="1" 
AR Path="/5DDE1103/5DE32376" Ref="R28"  Part="1" 
F 0 "R28" H 4970 5246 50  0000 L CNN
F 1 "500" H 4970 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4830 5200 50  0001 C CNN
F 3 "~" H 4900 5200 50  0001 C CNN
	1    4900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5400 5200 5400
Connection ~ 5200 5400
Wire Wire Line
	4900 4950 4650 4950
$Comp
L Device:D_Schottky D?
U 1 1 5DE3238F
P 4350 4500
AR Path="/5DAD2180/5DE3238F" Ref="D?"  Part="1" 
AR Path="/5DB4FA2A/5DE3238F" Ref="D?"  Part="1" 
AR Path="/5DDE6CFA/5DE3238F" Ref="D?"  Part="1" 
AR Path="/5DDE1103/5DE3238F" Ref="D11"  Part="1" 
F 0 "D11" V 4396 4421 50  0000 R CNN
F 1 "D_Schottky" V 4305 4421 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123F" H 4350 4500 50  0001 C CNN
F 3 "http://www.smc-diodes.com/propdf/DSS12U%20THRU%20DSS125U%20N1873%20REV.A.pdf" H 4350 4500 50  0001 C CNN
	1    4350 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 5350 4900 5400
Wire Wire Line
	5500 5350 5500 5400
Wire Wire Line
	5500 5050 5500 4950
Wire Wire Line
	4900 5050 4900 4950
Connection ~ 4900 4950
$Comp
L Device:R R?
U 1 1 5DE3239B
P 5900 4800
AR Path="/5DDE6CFA/5DE3239B" Ref="R?"  Part="1" 
AR Path="/5DDE1103/5DE3239B" Ref="R30"  Part="1" 
F 0 "R30" H 5970 4846 50  0000 L CNN
F 1 "1K" H 5970 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5830 4800 50  0001 C CNN
F 3 "~" H 5900 4800 50  0001 C CNN
	1    5900 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DE323A1
P 5900 4500
AR Path="/5DDE6CFA/5DE323A1" Ref="D?"  Part="1" 
AR Path="/5DDE1103/5DE323A1" Ref="D12"  Part="1" 
F 0 "D12" V 5939 4383 50  0000 R CNN
F 1 "CONTINUITY" V 5848 4383 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 5900 4500 50  0001 C CNN
F 3 "~" H 5900 4500 50  0001 C CNN
	1    5900 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 4300 5900 4300
Wire Wire Line
	5900 4300 5900 4350
Connection ~ 5500 4300
$Comp
L power:GND #PWR?
U 1 1 5DE323AA
P 5900 5000
AR Path="/5DDE6CFA/5DE323AA" Ref="#PWR?"  Part="1" 
AR Path="/5DDE1103/5DE323AA" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 5900 4750 50  0001 C CNN
F 1 "GND" H 5905 4827 50  0000 C CNN
F 2 "" H 5900 5000 50  0001 C CNN
F 3 "" H 5900 5000 50  0001 C CNN
	1    5900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5000 5900 4950
$Comp
L power:+3V3 #PWR?
U 1 1 5DE323B7
P 4900 4750
AR Path="/5DDE6CFA/5DE323B7" Ref="#PWR?"  Part="1" 
AR Path="/5DDE1103/5DE323B7" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 4900 4600 50  0001 C CNN
F 1 "+3V3" H 4915 4923 50  0000 C CNN
F 2 "" H 4900 4750 50  0001 C CNN
F 3 "" H 4900 4750 50  0001 C CNN
	1    4900 4750
	1    0    0    -1  
$EndComp
Text HLabel 3850 5200 0    50   Input ~ 0
Nuke1
Text HLabel 4650 4950 0    50   Input ~ 0
Cont1
Text HLabel 8100 5050 0    50   Input ~ 0
Nuke2
Text HLabel 8900 4800 0    50   Input ~ 0
Cont2
Wire Wire Line
	3550 4150 3000 4150
Connection ~ 3550 4150
Wire Wire Line
	7850 4000 7350 4000
Connection ~ 7850 4000
Wire Wire Line
	6350 2600 6350 2850
$Comp
L power:GND #PWR0101
U 1 1 5DEC1515
P 6350 2850
F 0 "#PWR0101" H 6350 2600 50  0001 C CNN
F 1 "GND" H 6355 2677 50  0000 C CNN
F 2 "" H 6350 2850 50  0001 C CNN
F 3 "" H 6350 2850 50  0001 C CNN
	1    6350 2850
	1    0    0    -1  
$EndComp
Text Label 6100 2700 2    50   ~ 0
External_Supply
Wire Wire Line
	5450 2700 6100 2700
Text Label 3000 4150 0    50   ~ 0
External_Supply
Text Label 7350 4000 0    50   ~ 0
External_Supply
Wire Wire Line
	8600 4500 8600 4600
Wire Wire Line
	7850 4600 8600 4600
Connection ~ 8600 4600
Wire Wire Line
	8600 4600 8600 4850
Wire Wire Line
	8300 4000 8300 3700
Wire Wire Line
	8300 3700 8400 3700
Wire Wire Line
	8600 3700 8500 3700
Wire Wire Line
	8600 3700 8600 4150
Wire Wire Line
	4350 4650 4350 4750
Wire Wire Line
	3550 4750 4350 4750
Connection ~ 4350 4750
Wire Wire Line
	4350 4750 4350 5000
Wire Wire Line
	4350 3850 4200 3850
Wire Wire Line
	4350 3850 4350 4300
Wire Wire Line
	4100 3850 4000 3850
Wire Wire Line
	4000 3850 4000 4150
Wire Wire Line
	5450 2600 6350 2600
$EndSCHEMATC
