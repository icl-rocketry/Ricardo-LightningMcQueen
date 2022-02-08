EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L power:GND #PWR?
U 1 1 61C1BDAC
P 7250 4400
AR Path="/61C1BDAC" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BDAC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7250 4150 50  0001 C CNN
F 1 "GND" H 7255 4227 50  0000 C CNN
F 2 "" H 7250 4400 50  0001 C CNN
F 3 "" H 7250 4400 50  0001 C CNN
	1    7250 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 4100 7400 4200
Wire Wire Line
	7400 4200 7750 4200
$Comp
L power:GND #PWR?
U 1 1 61C1BDB4
P 7200 4200
AR Path="/61C1BDB4" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BDB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7200 3950 50  0001 C CNN
F 1 "GND" V 7205 4027 50  0000 C CNN
F 2 "" H 7200 4200 50  0001 C CNN
F 3 "" H 7200 4200 50  0001 C CNN
	1    7200 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4100 7600 4100
$Comp
L Device:R_Small RAC?
U 1 1 61C1BDBB
P 7500 3850
AR Path="/61C1BDBB" Ref="RAC?"  Part="1" 
AR Path="/61BEB629/61C1BDBB" Ref="RAC"  Part="1" 
F 0 "RAC" V 7304 3850 50  0000 C CNN
F 1 "10mΩ" V 7395 3850 50  0000 C CNN
F 2 "" H 7500 3850 50  0001 C CNN
F 3 "~" H 7500 3850 50  0001 C CNN
	1    7500 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 3850 7600 4100
Wire Wire Line
	8550 5600 8550 5300
$Comp
L power:GND #PWR?
U 1 1 61C1BDC3
P 8150 5700
AR Path="/61C1BDC3" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BDC3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8150 5450 50  0001 C CNN
F 1 "GND" H 8200 5550 50  0000 R CNN
F 2 "" H 8150 5700 50  0001 C CNN
F 3 "" H 8150 5700 50  0001 C CNN
	1    8150 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61C1BDC9
P 6950 4700
AR Path="/61C1BDC9" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BDC9" Ref="R16"  Part="1" 
F 0 "R16" V 6900 4800 50  0000 C CNN
F 1 "100Ω" V 7000 4750 50  0000 C CNN
F 2 "" H 6950 4700 50  0001 C CNN
F 3 "~" H 6950 4700 50  0001 C CNN
	1    6950 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61C1BDCF
P 6700 4900
AR Path="/61C1BDCF" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BDCF" Ref="R10"  Part="1" 
F 0 "R10" H 6641 4854 50  0000 R CNN
F 1 "430kΩ" H 6641 4945 50  0000 R CNN
F 2 "" H 6700 4900 50  0001 C CNN
F 3 "~" H 6700 4900 50  0001 C CNN
	1    6700 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 4600 7400 4600
Wire Wire Line
	7400 4600 7400 4700
Wire Wire Line
	7400 4700 7250 4700
Wire Wire Line
	6850 4700 6700 4700
Connection ~ 6700 4700
$Comp
L Device:C_Small C?
U 1 1 61C1BDE2
P 7250 4850
AR Path="/61C1BDE2" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BDE2" Ref="C1"  Part="1" 
F 0 "C1" H 7342 4896 50  0000 L CNN
F 1 "0.1μF" H 7342 4805 50  0000 L CNN
F 2 "" H 7250 4850 50  0001 C CNN
F 3 "~" H 7250 4850 50  0001 C CNN
	1    7250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4700 7250 4750
Connection ~ 7250 4700
Wire Wire Line
	7250 4700 7050 4700
$Comp
L power:GND #PWR?
U 1 1 61C1BDEB
P 7250 4950
AR Path="/61C1BDEB" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BDEB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7250 4700 50  0001 C CNN
F 1 "GND" H 7255 4777 50  0000 C CNN
F 2 "" H 7250 4950 50  0001 C CNN
F 3 "" H 7250 4950 50  0001 C CNN
	1    7250 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C1BDF1
P 6700 5000
AR Path="/61C1BDF1" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BDF1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 4750 50  0001 C CNN
F 1 "GND" H 6705 4827 50  0000 C CNN
F 2 "" H 6700 5000 50  0001 C CNN
F 3 "" H 6700 5000 50  0001 C CNN
	1    6700 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 61C1BDF7
P 6300 4700
AR Path="/61C1BDF7" Ref="J?"  Part="1" 
AR Path="/61BEB629/61C1BDF7" Ref="J1"  Part="1" 
F 0 "J1" H 6350 4700 50  0000 C CNN
F 1 "Thermistor Connection" H 6550 4800 50  0000 C CNN
F 2 "" H 6300 4700 50  0001 C CNN
F 3 "~" H 6300 4700 50  0001 C CNN
	1    6300 4700
	-1   0    0    1   
$EndComp
$Comp
L power_new_18122021-rescue:BQ24618RGET-iclr IC?
U 1 1 61C1BE0B
P 7750 4100
AR Path="/61C1BE0B" Ref="IC?"  Part="1" 
AR Path="/61BEB629/61C1BE0B" Ref="IC?"  Part="1" 
F 0 "IC?" H 8400 4150 50  0000 L CNN
F 1 "BQ24618RGET" H 8200 4250 50  0000 L CNN
F 2 "QFN50P400X400X100-25N-D" H 9000 4700 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/bq24618" H 9000 4600 50  0001 L CNN
F 4 "Stand-Alone USB-Friendly Synchronous Switch-Mode Li-Ion or Li-Polymer Battery Charger " H 9000 4500 50  0001 L CNN "Description"
F 5 "1" H 9000 4400 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 9000 4300 50  0001 L CNN "Manufacturer_Name"
F 7 "BQ24618RGET" H 9000 4200 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-BQ24618RGET" H 9000 4100 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/BQ24618RGET?qs=g5raLcSarOYqImwS4qptMw%3D%3D" H 9000 4000 50  0001 L CNN "Mouser Price/Stock"
F 10 "BQ24618RGET" H 9000 3900 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/bq24618rget/texas-instruments?region=nac" H 9000 3800 50  0001 L CNN "Arrow Price/Stock"
	1    7750 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C1BE11
P 9000 5400
AR Path="/61C1BE11" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BE11" Ref="R7"  Part="1" 
F 0 "R7" H 8850 5450 50  0000 L CNN
F 1 "100kΩ" H 8700 5350 50  0000 L CNN
F 2 "" V 8930 5400 50  0001 C CNN
F 3 "~" H 9000 5400 50  0001 C CNN
	1    9000 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C1BE17
P 9500 5400
AR Path="/61C1BE17" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BE17" Ref="R3"  Part="1" 
F 0 "R3" H 9550 5450 50  0000 L CNN
F 1 "100kΩ" H 9550 5350 50  0000 L CNN
F 2 "" V 9430 5400 50  0001 C CNN
F 3 "~" H 9500 5400 50  0001 C CNN
	1    9500 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C1BE1D
P 9250 5400
AR Path="/61C1BE1D" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BE1D" Ref="R5"  Part="1" 
F 0 "R5" H 9300 5450 50  0000 L CNN
F 1 "100kΩ" H 9150 5350 50  0000 L CNN
F 2 "" V 9180 5400 50  0001 C CNN
F 3 "~" H 9250 5400 50  0001 C CNN
	1    9250 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C1BE23
P 9000 6000
AR Path="/61C1BE23" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BE23" Ref="R8"  Part="1" 
F 0 "R8" H 8850 6050 50  0000 L CNN
F 1 "32kΩ" H 8750 5950 50  0000 L CNN
F 2 "" V 8930 6000 50  0001 C CNN
F 3 "~" H 9000 6000 50  0001 C CNN
	1    9000 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C1BE29
P 9500 6000
AR Path="/61C1BE29" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BE29" Ref="R4"  Part="1" 
F 0 "R4" H 9570 6046 50  0000 L CNN
F 1 "150kΩ" H 9570 5955 50  0000 L CNN
F 2 "" V 9430 6000 50  0001 C CNN
F 3 "~" H 9500 6000 50  0001 C CNN
	1    9500 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61C1BE2F
P 9250 6000
AR Path="/61C1BE2F" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BE2F" Ref="R6"  Part="1" 
F 0 "R6" H 9300 6050 50  0000 L CNN
F 1 "13kΩ" H 9250 5950 50  0000 L CNN
F 2 "" V 9180 6000 50  0001 C CNN
F 3 "~" H 9250 6000 50  0001 C CNN
	1    9250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5250 9500 5200
Wire Wire Line
	9500 5200 9250 5200
Wire Wire Line
	9000 5200 9000 5250
Wire Wire Line
	9250 5250 9250 5200
Connection ~ 9250 5200
Wire Wire Line
	9250 5200 9000 5200
Wire Wire Line
	9000 6150 9000 6200
Wire Wire Line
	9000 6200 9250 6200
Wire Wire Line
	9500 6200 9500 6150
Wire Wire Line
	9250 6150 9250 6200
Connection ~ 9250 6200
Wire Wire Line
	9250 6200 9500 6200
$Comp
L power:GND #PWR?
U 1 1 61C1BE41
P 9250 6200
AR Path="/61C1BE41" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BE41" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 5950 50  0001 C CNN
F 1 "GND" H 9255 6027 50  0000 C CNN
F 2 "" H 9250 6200 50  0001 C CNN
F 3 "" H 9250 6200 50  0001 C CNN
	1    9250 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5800 9500 5850
Wire Wire Line
	9500 5550 9500 5800
Connection ~ 9500 5800
Wire Wire Line
	9750 5800 9500 5800
Wire Wire Line
	9000 5600 9000 5850
Wire Wire Line
	9000 5550 9000 5600
Connection ~ 9000 5600
Wire Wire Line
	9000 5600 8550 5600
$Comp
L Device:CP_Small C?
U 1 1 61C1BE4F
P 9400 4100
AR Path="/61C1BE4F" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BE4F" Ref="C5"  Part="1" 
F 0 "C5" V 9450 4200 50  0000 C CNN
F 1 "1μF" V 9450 4000 50  0000 C CNN
F 2 "" H 9400 4100 50  0001 C CNN
F 3 "~" H 9400 4100 50  0001 C CNN
	1    9400 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C1BE55
P 9600 4100
AR Path="/61C1BE55" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BE55" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9600 3850 50  0001 C CNN
F 1 "GND" V 9605 3972 50  0000 R CNN
F 2 "" H 9600 4100 50  0001 C CNN
F 3 "" H 9600 4100 50  0001 C CNN
	1    9600 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9500 4100 9600 4100
$Comp
L Device:D_Schottky_Small D?
U 1 1 61C1BE5C
P 9200 3850
AR Path="/61C1BE5C" Ref="D?"  Part="1" 
AR Path="/61BEB629/61C1BE5C" Ref="D1"  Part="1" 
F 0 "D1" V 9150 3900 50  0000 L CNN
F 1 "BAT54" V 9250 3900 50  0000 L CNN
F 2 "" V 9200 3850 50  0001 C CNN
F 3 "~" V 9200 3850 50  0001 C CNN
	1    9200 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2450 4400 2450
Wire Wire Line
	9150 4200 9850 4200
$Comp
L power:GND #PWR?
U 1 1 61C1BE71
P 9850 4200
AR Path="/61C1BE71" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BE71" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 3950 50  0001 C CNN
F 1 "GND" H 9855 4027 50  0000 C CNN
F 2 "" H 9850 4200 50  0001 C CNN
F 3 "" H 9850 4200 50  0001 C CNN
	1    9850 4200
	1    0    0    -1  
$EndComp
Connection ~ 9850 4200
Wire Wire Line
	9850 4200 10000 4200
$Comp
L power:GND #PWR?
U 1 1 61C1BE79
P 10000 4200
AR Path="/61C1BE79" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BE79" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10000 3950 50  0001 C CNN
F 1 "GND" H 10005 4027 50  0000 C CNN
F 2 "" H 10000 4200 50  0001 C CNN
F 3 "" H 10000 4200 50  0001 C CNN
	1    10000 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 61C1BE7F
P 6550 3400
AR Path="/61C1BE7F" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BE7F" Ref="C8"  Part="1" 
F 0 "C8" H 6462 3354 50  0000 R CNN
F 1 "10μF" H 6462 3445 50  0000 R CNN
F 2 "" H 6550 3400 50  0001 C CNN
F 3 "~" H 6550 3400 50  0001 C CNN
	1    6550 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 61C1BE85
P 6150 3350
AR Path="/61C1BE85" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BE85" Ref="C9"  Part="1" 
F 0 "C9" H 6062 3304 50  0000 R CNN
F 1 "10μF" H 6062 3395 50  0000 R CNN
F 2 "" H 6150 3350 50  0001 C CNN
F 3 "~" H 6150 3350 50  0001 C CNN
	1    6150 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 3850 7600 3500
Connection ~ 7600 3850
$Comp
L power:GND #PWR?
U 1 1 61C1BE8D
P 6150 3100
AR Path="/61C1BE8D" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BE8D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 2850 50  0001 C CNN
F 1 "GND" H 6155 2927 50  0000 C CNN
F 2 "" H 6150 3100 50  0001 C CNN
F 3 "" H 6150 3100 50  0001 C CNN
	1    6150 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C1BE93
P 6550 3300
AR Path="/61C1BE93" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BE93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 3050 50  0001 C CNN
F 1 "GND" H 6555 3127 50  0000 C CNN
F 2 "" H 6550 3300 50  0001 C CNN
F 3 "" H 6550 3300 50  0001 C CNN
	1    6550 3300
	-1   0    0    1   
$EndComp
Connection ~ 7600 4100
Connection ~ 7400 4100
Wire Wire Line
	7400 4100 7400 3850
$Comp
L Device:C_Small C?
U 1 1 61C1BEA3
P 7500 4100
AR Path="/61C1BEA3" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BEA3" Ref="C3"  Part="1" 
F 0 "C3" V 7550 4150 50  0000 L CNN
F 1 "0.1μF" V 7600 3900 50  0000 L CNN
F 2 "" H 7500 4100 50  0001 C CNN
F 3 "~" H 7500 4100 50  0001 C CNN
	1    7500 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61C1BEA9
P 5050 4400
AR Path="/61C1BEA9" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BEA9" Ref="R14"  Part="1" 
F 0 "R14" V 4950 4250 50  0000 L CNN
F 1 "100kΩ" V 4850 4150 50  0000 L CNN
F 2 "" H 5050 4400 50  0001 C CNN
F 3 "~" H 5050 4400 50  0001 C CNN
	1    5050 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61C1BEAF
P 5050 4200
AR Path="/61C1BEAF" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BEAF" Ref="C14"  Part="1" 
F 0 "C14" V 5300 4150 50  0000 L CNN
F 1 "0.1µF" V 5200 4050 50  0000 L CNN
F 2 "" H 5050 4200 50  0001 C CNN
F 3 "~" H 5050 4200 50  0001 C CNN
	1    5050 4200
	0    -1   -1   0   
$EndComp
$Comp
L power_new_18122021-rescue:SI7617DN-T1-GE3-iclr Q?
U 1 1 61C1BEBC
P 7050 4050
AR Path="/61C1BEBC" Ref="Q?"  Part="1" 
AR Path="/61BEB629/61C1BEBC" Ref="Q2"  Part="1" 
F 0 "Q2" H 7550 3650 50  0000 C CNN
F 1 "SI7617DN-T1-GE3" H 7550 4224 50  0000 C CNN
F 2 "SIS862DNT1GE3" H 7900 4150 50  0001 L CNN
F 3 "http://www.vishay.com/docs/65164/si7617dn.pdf" H 7900 4050 50  0001 L CNN
F 4 "VISHAY - SI7617DN-T1-GE3 - MOSFET, P CH, 30V, 35A, POWERPAK" H 7900 3950 50  0001 L CNN "Description"
F 5 "Vishay" H 7900 3750 50  0001 L CNN "Manufacturer_Name"
F 6 "SI7617DN-T1-GE3" H 7900 3650 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "781-SI7617DN-GE3" H 7900 3550 50  0001 L CNN "Mouser Part Number"
F 8 "https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/SI7617DN-T1-GE3?qs=kt16UJ73eEF1rWSJwJchzg%3D%3D" H 7900 3450 50  0001 L CNN "Mouser Price/Stock"
F 9 "SI7617DN-T1-GE3" H 7900 3350 50  0001 L CNN "Arrow Part Number"
F 10 "https://www.arrow.com/en/products/si7617dn-t1-ge3/vishay?region=nac" H 7900 3250 50  0001 L CNN "Arrow Price/Stock"
	1    7050 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	7050 3850 7200 3850
Connection ~ 7400 3850
Wire Wire Line
	7050 3950 7200 3950
Wire Wire Line
	7200 3950 7200 3850
Connection ~ 7200 3850
Wire Wire Line
	7200 3850 7400 3850
Wire Wire Line
	7050 4050 7200 4050
Wire Wire Line
	7200 4050 7200 3950
Connection ~ 7200 3950
Wire Wire Line
	6050 3750 5900 3750
Wire Wire Line
	6050 3850 5900 3850
Wire Wire Line
	5900 3850 5900 3750
Wire Wire Line
	6050 3950 5900 3950
Wire Wire Line
	5900 3950 5900 3850
Connection ~ 5900 3850
Wire Wire Line
	6050 4050 5900 4050
Wire Wire Line
	5900 4050 5900 3950
Connection ~ 5900 3950
$Comp
L Device:R_Small R?
U 1 1 61C1BED4
P 4700 4300
AR Path="/61C1BED4" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BED4" Ref="R17"  Part="1" 
F 0 "R17" V 4900 4250 50  0000 L CNN
F 1 "10Ω" V 4800 4250 50  0000 L CNN
F 2 "" H 4700 4300 50  0001 C CNN
F 3 "~" H 4700 4300 50  0001 C CNN
	1    4700 4300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 61C1BEDA
P 5700 4300
AR Path="/61C1BEDA" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BEDA" Ref="R18"  Part="1" 
F 0 "R18" V 5896 4300 50  0000 C CNN
F 1 "1kΩ" V 5805 4300 50  0000 C CNN
F 2 "" H 5700 4300 50  0001 C CNN
F 3 "~" H 5700 4300 50  0001 C CNN
	1    5700 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 4400 4950 4300
Connection ~ 4950 4200
Wire Wire Line
	5300 4050 5300 4200
Wire Wire Line
	5150 4400 5300 4400
Wire Wire Line
	5300 4400 5300 4300
Connection ~ 5300 4300
Wire Wire Line
	5150 4200 5300 4200
Connection ~ 5300 4200
Wire Wire Line
	5300 4200 5300 4300
Wire Wire Line
	4800 4300 4950 4300
Connection ~ 4950 4300
Wire Wire Line
	4950 4300 4950 4200
Wire Wire Line
	5400 4400 5300 4400
Connection ~ 5300 4400
Wire Wire Line
	4250 3900 4350 3900
Connection ~ 4450 2450
$Comp
L power_new_18122021-rescue:SI7617DN-T1-GE3-iclr Q?
U 1 1 61C1BEFF
P 7800 2650
AR Path="/61C1BEFF" Ref="Q?"  Part="1" 
AR Path="/61BEB629/61C1BEFF" Ref="Q3"  Part="1" 
F 0 "Q3" H 8300 2915 50  0000 C CNN
F 1 "SI7617DN-T1-GE3" H 8300 2824 50  0000 C CNN
F 2 "SIS862DNT1GE3" H 8650 2750 50  0001 L CNN
F 3 "http://www.vishay.com/docs/65164/si7617dn.pdf" H 8650 2650 50  0001 L CNN
F 4 "VISHAY - SI7617DN-T1-GE3 - MOSFET, P CH, 30V, 35A, POWERPAK" H 8650 2550 50  0001 L CNN "Description"
F 5 "Vishay" H 8650 2350 50  0001 L CNN "Manufacturer_Name"
F 6 "SI7617DN-T1-GE3" H 8650 2250 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "781-SI7617DN-GE3" H 8650 2150 50  0001 L CNN "Mouser Part Number"
F 8 "https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/SI7617DN-T1-GE3?qs=kt16UJ73eEF1rWSJwJchzg%3D%3D" H 8650 2050 50  0001 L CNN "Mouser Price/Stock"
F 9 "SI7617DN-T1-GE3" H 8650 1950 50  0001 L CNN "Arrow Part Number"
F 10 "https://www.arrow.com/en/products/si7617dn-t1-ge3/vishay?region=nac" H 8650 1850 50  0001 L CNN "Arrow Price/Stock"
	1    7800 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 3100 6150 3250
Wire Wire Line
	6050 3500 6150 3500
Wire Wire Line
	6150 3450 6150 3500
Connection ~ 6150 3500
Wire Wire Line
	6150 3500 6350 3500
$Comp
L Device:C_Small C?
U 1 1 61C1BF0A
P 9450 4600
AR Path="/61C1BF0A" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BF0A" Ref="C11"  Part="1" 
F 0 "C11" H 9500 4550 50  0000 L CNN
F 1 "0.1μF" H 9500 4650 50  0000 L CNN
F 2 "" H 9450 4600 50  0001 C CNN
F 3 "~" H 9450 4600 50  0001 C CNN
	1    9450 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61C1BF10
P 9450 4800
AR Path="/61C1BF10" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BF10" Ref="C10"  Part="1" 
F 0 "C10" H 9250 4850 50  0000 L CNN
F 1 "0.1μF" H 9200 4750 50  0000 L CNN
F 2 "" H 9450 4800 50  0001 C CNN
F 3 "~" H 9450 4800 50  0001 C CNN
	1    9450 4800
	1    0    0    -1  
$EndComp
Connection ~ 9450 4700
$Comp
L power:GND #PWR?
U 1 1 61C1BF17
P 9450 5000
AR Path="/61C1BF17" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BF17" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9450 4750 50  0001 C CNN
F 1 "GND" H 9455 4827 50  0000 C CNN
F 2 "" H 9450 5000 50  0001 C CNN
F 3 "" H 9450 5000 50  0001 C CNN
	1    9450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5000 9450 4900
$Comp
L Device:R_Small R?
U 1 1 61C1BF1E
P 7400 3050
AR Path="/61C1BF1E" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BF1E" Ref="R15"  Part="1" 
F 0 "R15" V 7350 2800 50  0000 L CNN
F 1 "100kΩ" V 7350 3100 50  0000 L CNN
F 2 "" H 7400 3050 50  0001 C CNN
F 3 "~" H 7400 3050 50  0001 C CNN
	1    7400 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61C1BF24
P 7400 3200
AR Path="/61C1BF24" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BF24" Ref="C15"  Part="1" 
F 0 "C15" V 7350 3250 50  0000 L CNN
F 1 "0.1µF" V 7350 2950 50  0000 L CNN
F 2 "" H 7400 3200 50  0001 C CNN
F 3 "~" H 7400 3200 50  0001 C CNN
	1    7400 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 3200 7650 3200
Wire Wire Line
	7500 3050 7650 3050
Wire Wire Line
	7650 3050 7650 3200
Wire Wire Line
	7300 3200 7050 3200
Wire Wire Line
	7300 3050 7050 3050
Wire Wire Line
	7050 3050 7050 3200
Connection ~ 6350 3500
$Comp
L Connector:Conn_01x02_Female ADAPTER?
U 1 1 61C1BF31
P 1750 3700
AR Path="/61C1BF31" Ref="ADAPTER?"  Part="1" 
AR Path="/61BEB629/61C1BF31" Ref="EXTPower"  Part="1" 
F 0 "EXTPower" H 1850 3400 50  0000 C CNN
F 1 "Conn_01x02_Female" H 1900 3500 50  0000 C CNN
F 2 "" H 1750 3700 50  0001 C CNN
F 3 "~" H 1750 3700 50  0001 C CNN
	1    1750 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 61C1BF37
P 2850 4100
AR Path="/61C1BF37" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BF37" Ref="C16"  Part="1" 
F 0 "C16" V 3075 4100 50  0000 C CNN
F 1 "2.2μF" V 2984 4100 50  0000 C CNN
F 2 "" H 2850 4100 50  0001 C CNN
F 3 "~" H 2850 4100 50  0001 C CNN
	1    2850 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C1BF3D
P 2850 4350
AR Path="/61C1BF3D" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BF3D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2850 4100 50  0001 C CNN
F 1 "GND" V 2855 4222 50  0000 R CNN
F 2 "" H 2850 4350 50  0001 C CNN
F 3 "" H 2850 4350 50  0001 C CNN
	1    2850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3900 2850 4000
Wire Wire Line
	2850 4200 2850 4350
$Comp
L Device:CP_Small C?
U 1 1 61C1BF45
P 4350 4300
AR Path="/61C1BF45" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BF45" Ref="C7"  Part="1" 
F 0 "C7" V 4150 4250 50  0000 R CNN
F 1 "1µF" V 4250 4250 50  0000 R CNN
F 2 "" H 4350 4300 50  0001 C CNN
F 3 "~" H 4350 4300 50  0001 C CNN
	1    4350 4300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C1BF4B
P 4100 4300
AR Path="/61C1BF4B" Ref="#PWR?"  Part="1" 
AR Path="/61BEB629/61C1BF4B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 4050 50  0001 C CNN
F 1 "GND" V 4105 4127 50  0000 C CNN
F 2 "" H 4100 4300 50  0001 C CNN
F 3 "" H 4100 4300 50  0001 C CNN
	1    4100 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4300 4250 4300
Connection ~ 6550 3500
Wire Wire Line
	6550 3500 7600 3500
Connection ~ 4250 3900
Wire Wire Line
	4250 3800 4250 3900
Connection ~ 4250 3800
Wire Wire Line
	4250 3700 4250 3800
Wire Wire Line
	4250 3600 4250 3700
Connection ~ 4250 3700
Wire Wire Line
	3250 3800 3250 3700
Connection ~ 3250 3700
Wire Wire Line
	3250 3700 3250 3600
$Comp
L power_new_18122021-rescue:SI7617DN-T1-GE3-iclr Q1(ACFET)?
U 1 1 61C1BF64
P 3250 3600
AR Path="/61C1BF64" Ref="Q1(ACFET)?"  Part="1" 
AR Path="/61BEB629/61C1BF64" Ref="Q1(ACFET)"  Part="1" 
F 0 "Q1(ACFET)" H 3750 3865 50  0000 C CNN
F 1 "SI7617DN-T1-GE3" H 3750 3774 50  0000 C CNN
F 2 "SIS862DNT1GE3" H 4100 3700 50  0001 L CNN
F 3 "http://www.vishay.com/docs/65164/si7617dn.pdf" H 4100 3600 50  0001 L CNN
F 4 "VISHAY - SI7617DN-T1-GE3 - MOSFET, P CH, 30V, 35A, POWERPAK" H 4100 3500 50  0001 L CNN "Description"
F 5 "Vishay" H 4100 3300 50  0001 L CNN "Manufacturer_Name"
F 6 "SI7617DN-T1-GE3" H 4100 3200 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "781-SI7617DN-GE3" H 4100 3100 50  0001 L CNN "Mouser Part Number"
F 8 "https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/SI7617DN-T1-GE3?qs=kt16UJ73eEF1rWSJwJchzg%3D%3D" H 4100 3000 50  0001 L CNN "Mouser Price/Stock"
F 9 "SI7617DN-T1-GE3" H 4100 2900 50  0001 L CNN "Arrow Part Number"
F 10 "https://www.arrow.com/en/products/si7617dn-t1-ge3/vishay?region=nac" H 4100 2800 50  0001 L CNN "Arrow Price/Stock"
	1    3250 3600
	1    0    0    -1  
$EndComp
Connection ~ 7400 4200
$Comp
L Device:C_Small C?
U 1 1 61C1BF6B
P 7300 4200
AR Path="/61C1BF6B" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BF6B" Ref="C?"  Part="1" 
F 0 "C?" V 7250 4200 50  0000 L CNN
F 1 "0.1μF" V 7392 4155 50  0000 L CNN
F 2 "" H 7300 4200 50  0001 C CNN
F 3 "~" H 7300 4200 50  0001 C CNN
	1    7300 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 61C1BF71
P 7350 4400
AR Path="/61C1BF71" Ref="C?"  Part="1" 
AR Path="/61BEB629/61C1BF71" Ref="C4"  Part="1" 
F 0 "C4" V 7400 4450 50  0000 L CNN
F 1 "1μF" V 7300 4450 50  0000 L CNN
F 2 "" H 7350 4400 50  0001 C CNN
F 3 "~" H 7350 4400 50  0001 C CNN
	1    7350 4400
	0    -1   -1   0   
$EndComp
Text Label 5400 4400 0    50   ~ 0
Q1-G
Text Label 3250 3900 2    50   ~ 0
Q1-G
Text Label 4350 3900 0    50   ~ 0
Q1-D
Wire Wire Line
	4950 4550 4950 4400
Connection ~ 4950 4400
Text Label 4950 4550 2    50   ~ 0
Q1-D
$Comp
L Device:R_Small R?
U 1 1 61C1BF7D
P 2850 3800
AR Path="/61C1BF7D" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BF7D" Ref="R20"  Part="1" 
F 0 "R20" H 2900 3800 50  0000 L CNN
F 1 "2Ω" H 2900 3900 50  0000 L CNN
F 2 "" H 2850 3800 50  0001 C CNN
F 3 "~" H 2850 3800 50  0001 C CNN
	1    2850 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 3700 3250 3700
Text Label 8250 3300 1    50   ~ 0
VCC
Wire Wire Line
	4450 4300 4550 4300
Wire Wire Line
	4550 4300 4550 4500
Connection ~ 4550 4300
Wire Wire Line
	4550 4300 4600 4300
Text Label 4550 4500 2    50   ~ 0
VCC
Text Label 4400 2450 2    50   ~ 0
GND
Connection ~ 4450 2550
Wire Wire Line
	4450 2550 4450 2450
Wire Wire Line
	4450 2650 4450 2550
$Comp
L power_new_18122021-rescue:SIS412DN-T1-GE3-iclr Q?
U 1 1 61C1BF9B
P 4450 2450
AR Path="/61C1BF9B" Ref="Q?"  Part="1" 
AR Path="/61BEB629/61C1BF9B" Ref="Q5"  Part="1" 
F 0 "Q5" H 4950 2715 50  0000 C CNN
F 1 "SIS412DN-T1-GE3" H 4950 2624 50  0000 C CNN
F 2 "POWERPAK-1212-8" H 5300 2550 50  0001 L CNN
F 3 "https://www.vishay.com/docs/69006/sis412dn.pdf" H 5300 2450 50  0001 L CNN
F 4 "VISHAY - SIS412DN-T1-GE3 - MOSFET, N-CH, 30V, 12A, POWERPAK8" H 5300 2350 50  0001 L CNN "Description"
F 5 "Vishay" H 5300 2150 50  0001 L CNN "Manufacturer_Name"
F 6 "SIS412DN-T1-GE3" H 5300 2050 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "781-SIS412DN-T1-GE3" H 5300 1950 50  0001 L CNN "Mouser Part Number"
F 8 "https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/SIS412DN-T1-GE3?qs=cPOO8qjhL6NqDrBget0Fyg%3D%3D" H 5300 1850 50  0001 L CNN "Mouser Price/Stock"
F 9 "SIS412DN-T1-GE3" H 5300 1750 50  0001 L CNN "Arrow Part Number"
F 10 "https://www.arrow.com/en/products/sis412dn-t1-ge3/vishay?region=nac" H 5300 1650 50  0001 L CNN "Arrow Price/Stock"
	1    4450 2450
	1    0    0    -1  
$EndComp
Text Label 4450 2750 2    50   ~ 0
LODRV
Wire Wire Line
	10000 4200 10100 4200
Connection ~ 10000 4200
Text Label 10100 4200 0    50   ~ 0
GND
Text Label 8750 3300 1    50   ~ 0
LODRV
Wire Wire Line
	5450 2450 5550 2450
Text Label 5550 2450 0    50   ~ 0
Q5-D
Wire Wire Line
	5450 2450 5450 2550
Connection ~ 5450 2450
Connection ~ 5450 2550
Wire Wire Line
	5450 2550 5450 2650
Connection ~ 5450 2650
Wire Wire Line
	5450 2650 5450 2750
Wire Wire Line
	6350 3500 6450 3500
Wire Wire Line
	6450 3500 6450 2800
Connection ~ 6450 3500
Wire Wire Line
	6450 3500 6550 3500
Text Label 6450 2800 1    50   ~ 0
Q4-D
Text Label 10550 2550 0    50   ~ 0
Q4-D
Text Label 8650 5300 3    50   ~ 0
VFB
Text Label 9700 4700 0    50   ~ 0
SRP
Text Label 9550 4500 0    50   ~ 0
SRN
Wire Wire Line
	9450 4500 9550 4500
Connection ~ 9450 4500
Wire Wire Line
	9150 4500 9450 4500
Wire Wire Line
	9150 4600 9150 4700
Wire Wire Line
	9150 4700 9450 4700
Wire Wire Line
	9250 5550 9250 5700
Wire Wire Line
	9250 5700 9300 5700
Connection ~ 9250 5700
Wire Wire Line
	9250 5700 9250 5850
Text Label 9300 5700 0    50   ~ 0
ISET2
Text Label 9750 5800 0    50   ~ 0
ACSET
Text Label 9150 4400 0    50   ~ 0
ICSET2
Text Label 9150 4300 0    50   ~ 0
ACSET
Text Label 9550 2550 2    50   ~ 0
Q4-S
Text Label 8550 3300 1    50   ~ 0
Q4-G
Wire Wire Line
	9150 4100 9200 4100
Wire Wire Line
	9200 3950 9200 4100
Connection ~ 9200 4100
Wire Wire Line
	9200 4100 9300 4100
Text Label 9200 3750 0    50   ~ 0
BTST
Wire Wire Line
	6350 2450 6700 2450
Wire Wire Line
	6700 3200 7050 3200
Wire Wire Line
	6350 2450 6350 3500
Connection ~ 7050 3200
Wire Wire Line
	6350 2450 6350 2350
Wire Wire Line
	6350 2350 6800 2350
Connection ~ 6350 2450
Wire Wire Line
	6800 2450 6800 2550
Connection ~ 6800 2550
Wire Wire Line
	6800 2550 6800 2650
Wire Wire Line
	6800 2450 6800 2350
Connection ~ 6800 2450
Connection ~ 6800 2350
$Comp
L Device:R_Small R?
U 1 1 61C1BFDB
P 8000 3000
AR Path="/61C1BFDB" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BFDB" Ref="R?"  Part="1" 
F 0 "R?" H 8050 2950 50  0000 L CNN
F 1 "1kΩ" H 8050 3050 50  0000 L CNN
F 2 "" H 8000 3000 50  0001 C CNN
F 3 "~" H 8000 3000 50  0001 C CNN
	1    8000 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 3150 8350 3300
Wire Wire Line
	8350 3150 8000 3150
Wire Wire Line
	8000 3150 8000 3100
Wire Wire Line
	8000 2900 7800 2900
Wire Wire Line
	7800 3200 7650 3200
Connection ~ 7650 3200
Connection ~ 8000 2900
Wire Wire Line
	8000 2350 7800 2350
Wire Wire Line
	8000 2350 8000 2900
Wire Wire Line
	7800 2450 7800 2550
Wire Wire Line
	7800 2550 7800 2650
Connection ~ 7800 2550
Wire Wire Line
	7800 2650 7850 2650
Connection ~ 7800 2650
Text Label 7850 2650 0    50   ~ 0
Q3-S
Text Label 7050 3750 0    50   ~ 0
Q2-G
Wire Wire Line
	5800 4300 7750 4300
Text Label 5300 4050 1    50   ~ 0
Q2-G
Wire Wire Line
	5300 4300 5600 4300
Wire Wire Line
	4950 3750 5900 3750
Wire Wire Line
	4950 3750 4950 4200
Connection ~ 5900 3750
Wire Wire Line
	7450 4400 7450 4450
Connection ~ 7450 4400
Text Label 7450 4450 3    50   ~ 0
CE
Text Label 8500 5750 0    50   ~ 0
CE
$Comp
L Device:CP_Small CTTC?
U 1 1 61C1BFFC
P 8150 5450
AR Path="/61C1BFFC" Ref="CTTC?"  Part="1" 
AR Path="/61BEB629/61C1BFFC" Ref="CTTC"  Part="1" 
F 0 "CTTC" H 7950 5500 50  0000 C CNN
F 1 "0.022µF" H 7900 5400 50  0000 C CNN
F 2 "" H 8150 5450 50  0001 C CNN
F 3 "~" H 8150 5450 50  0001 C CNN
	1    8150 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5300 8150 5350
Wire Wire Line
	8150 5550 8150 5700
Text Label 8650 3300 1    50   ~ 0
PH
Text Label 8450 3300 1    50   ~ 0
BTSTP
Text Label 6200 1550 0    50   ~ 0
BTSTP
Text Label 6100 1350 1    50   ~ 0
PH
Wire Wire Line
	6150 1550 6200 1550
Connection ~ 6150 1550
Wire Wire Line
	6150 1550 6150 1600
$Comp
L Device:C_Small Cff
U 1 1 61C2A8F1
P 4150 1550
F 0 "Cff" H 4000 1600 50  0000 C CNN
F 1 "22pF" H 4000 1500 50  0000 C CNN
F 2 "" H 4150 1550 50  0001 C CNN
F 3 "~" H 4150 1550 50  0001 C CNN
	1    4150 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61C2A8F7
P 4150 1350
F 0 "R2" H 4300 1400 50  0000 C CNN
F 1 "110kΩ" H 4350 1300 50  0000 C CNN
F 2 "" H 4150 1350 50  0001 C CNN
F 3 "~" H 4150 1350 50  0001 C CNN
	1    4150 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 1350 4350 1350
Wire Wire Line
	4350 1350 4350 1550
Wire Wire Line
	4350 1550 4250 1550
$Comp
L Device:R_Small R1
U 1 1 61C2A900
P 3800 1550
F 0 "R1" H 3650 1650 50  0000 C CNN
F 1 "10kΩ" H 3650 1550 50  0000 C CNN
F 2 "" H 3800 1550 50  0001 C CNN
F 3 "~" H 3800 1550 50  0001 C CNN
	1    3800 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C2A906
P 3550 1550
F 0 "#PWR?" H 3550 1300 50  0001 C CNN
F 1 "GND" V 3555 1422 50  0000 R CNN
F 2 "" H 3550 1550 50  0001 C CNN
F 3 "" H 3550 1550 50  0001 C CNN
	1    3550 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1550 3550 1550
Wire Wire Line
	4050 1550 4000 1550
Wire Wire Line
	4050 1350 4000 1350
Wire Wire Line
	4000 1350 4000 1550
Connection ~ 4000 1550
Wire Wire Line
	4000 1550 3950 1550
Wire Wire Line
	3950 1550 3950 1750
Connection ~ 3950 1550
Wire Wire Line
	3950 1550 3900 1550
Text Label 3950 1750 3    50   ~ 0
VFB
Text Label 5100 1700 3    50   ~ 0
Q3-S
Wire Wire Line
	5100 1550 5150 1550
Connection ~ 5100 1550
Wire Wire Line
	5100 1550 5100 1700
Text Label 6150 1600 3    50   ~ 0
BTST
Text Label 5700 1350 1    50   ~ 0
Q4-S
Text Label 5450 1250 1    50   ~ 0
SRP
Connection ~ 5450 1550
Wire Wire Line
	5450 1550 5450 1250
Text Label 5150 1000 1    50   ~ 0
SRN
Wire Wire Line
	5150 1550 5200 1550
Connection ~ 5150 1550
Wire Wire Line
	5150 1550 5150 1000
Text Label 5800 1700 3    50   ~ 0
Q5-D
Wire Wire Line
	5800 1550 5800 1700
Wire Wire Line
	5000 1350 5000 1250
Connection ~ 5800 1550
Wire Wire Line
	5800 1350 6100 1350
Connection ~ 5800 1350
Wire Wire Line
	5700 1350 5800 1350
Wire Wire Line
	5800 1350 5800 1550
Wire Wire Line
	4750 1350 4750 1250
$Comp
L power:GND #PWR?
U 1 1 61C2A932
P 5000 1250
F 0 "#PWR?" H 5000 1000 50  0001 C CNN
F 1 "GND" V 5005 1122 50  0000 R CNN
F 2 "" H 5000 1250 50  0001 C CNN
F 3 "" H 5000 1250 50  0001 C CNN
	1    5000 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C2A938
P 4750 1250
F 0 "#PWR?" H 4750 1000 50  0001 C CNN
F 1 "GND" V 4755 1122 50  0000 R CNN
F 2 "" H 4750 1250 50  0001 C CNN
F 3 "" H 4750 1250 50  0001 C CNN
	1    4750 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 1550 5800 1550
Wire Wire Line
	5400 1550 5450 1550
$Comp
L Device:CP_Small C13
U 1 1 61C2A940
P 4750 1450
F 0 "C13" V 4800 1350 50  0000 C CNN
F 1 "10μF" V 4700 1300 50  0000 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "~" H 4750 1450 50  0001 C CNN
	1    4750 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C12
U 1 1 61C2A946
P 5000 1450
F 0 "C12" V 5050 1350 50  0000 C CNN
F 1 "10μF" V 4950 1300 50  0000 C CNN
F 2 "" H 5000 1450 50  0001 C CNN
F 3 "~" H 5000 1450 50  0001 C CNN
	1    5000 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small RSR
U 1 1 61C2A94C
P 5300 1550
F 0 "RSR" H 5359 1596 50  0000 L CNN
F 1 "10mΩ" H 5359 1505 50  0000 L CNN
F 2 "" H 5300 1550 50  0001 C CNN
F 3 "~" H 5300 1550 50  0001 C CNN
	1    5300 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L1
U 1 1 61C2A952
P 5600 1550
F 0 "L1" V 5650 1550 50  0000 L CNN
F 1 "6.8µH" V 5550 1450 50  0000 L CNN
F 2 "" H 5600 1550 50  0001 C CNN
F 3 "~" H 5600 1550 50  0001 C CNN
	1    5600 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 61C2A958
P 5900 1550
F 0 "C6" V 6000 1450 50  0000 L CNN
F 1 "0.1µF" V 5800 1400 50  0000 L CNN
F 2 "" H 5900 1550 50  0001 C CNN
F 3 "~" H 5900 1550 50  0001 C CNN
	1    5900 1550
	0    -1   -1   0   
$EndComp
Connection ~ 10550 2750
Wire Wire Line
	10550 2750 10550 2650
Wire Wire Line
	10550 2650 10550 2550
Connection ~ 10550 2650
Connection ~ 9550 2650
Wire Wire Line
	9550 2650 9550 2550
Wire Wire Line
	9550 2750 9550 2650
Text Label 9550 2850 2    50   ~ 0
Q4-G
Wire Wire Line
	10550 2850 10550 2750
$Comp
L power_new_18122021-rescue:SIS412DN-T1-GE3-iclr Q?
U 1 1 61C1BE69
P 9550 2550
AR Path="/61C1BE69" Ref="Q?"  Part="1" 
AR Path="/61BEB629/61C1BE69" Ref="Q4"  Part="1" 
F 0 "Q4" H 10050 2815 50  0000 C CNN
F 1 "SIS412DN-T1-GE3" H 10050 2724 50  0000 C CNN
F 2 "POWERPAK-1212-8" H 10400 2650 50  0001 L CNN
F 3 "https://www.vishay.com/docs/69006/sis412dn.pdf" H 10400 2550 50  0001 L CNN
F 4 "VISHAY - SIS412DN-T1-GE3 - MOSFET, N-CH, 30V, 12A, POWERPAK8" H 10400 2450 50  0001 L CNN "Description"
F 5 "Vishay" H 10400 2250 50  0001 L CNN "Manufacturer_Name"
F 6 "SIS412DN-T1-GE3" H 10400 2150 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "781-SIS412DN-T1-GE3" H 10400 2050 50  0001 L CNN "Mouser Part Number"
F 8 "https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/SIS412DN-T1-GE3?qs=cPOO8qjhL6NqDrBget0Fyg%3D%3D" H 10400 1950 50  0001 L CNN "Mouser Price/Stock"
F 9 "SIS412DN-T1-GE3" H 10400 1850 50  0001 L CNN "Arrow Part Number"
F 10 "https://www.arrow.com/en/products/sis412dn-t1-ge3/vishay?region=nac" H 10400 1750 50  0001 L CNN "Arrow Price/Stock"
	1    9550 2550
	1    0    0    -1  
$EndComp
Connection ~ 4350 1550
Wire Wire Line
	4350 1550 4600 1550
Connection ~ 4750 1550
$Comp
L Connector:Conn_01x02_Female Pack
U 1 1 61EF692E
P 4600 1900
F 0 "Pack" V 4446 1948 50  0000 L CNN
F 1 "Conn_01x02_Female" V 4700 1900 50  0000 L CNN
F 2 "" H 4600 1900 50  0001 C CNN
F 3 "~" H 4600 1900 50  0001 C CNN
	1    4600 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF865C
P 4500 1700
F 0 "#PWR?" H 4500 1450 50  0001 C CNN
F 1 "GND" H 4505 1527 50  0000 C CNN
F 2 "" H 4500 1700 50  0001 C CNN
F 3 "" H 4500 1700 50  0001 C CNN
	1    4500 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 1700 4600 1550
Connection ~ 4600 1550
Wire Wire Line
	4600 1550 4750 1550
Text Label 4600 1900 3    50   ~ 0
Pack+
Text Label 4500 1900 3    50   ~ 0
Pack-
Text HLabel 6050 3500 0    50   Input ~ 0
System
Text HLabel 7750 4500 0    50   Input ~ 0
Stat1
Text HLabel 8350 5300 3    50   Input ~ 0
Stat2
Text HLabel 8250 5300 3    50   Input ~ 0
PG
Text Label 8400 5750 2    50   ~ 0
VREF
Wire Wire Line
	8450 5300 8450 5750
Wire Wire Line
	8400 5750 8450 5750
Connection ~ 8450 5750
Wire Wire Line
	8450 5750 8500 5750
Text Label 9250 5150 1    50   ~ 0
VREF
Wire Wire Line
	9250 5150 9250 5200
Wire Wire Line
	7800 2900 7800 3200
Wire Wire Line
	6700 2450 6700 3200
Wire Wire Line
	9450 4700 9700 4700
Wire Wire Line
	6700 4800 6700 4700
$Comp
L Device:R_Small R?
U 1 1 61C1BDD5
P 6700 4600
AR Path="/61C1BDD5" Ref="R?"  Part="1" 
AR Path="/61BEB629/61C1BDD5" Ref="R9"  Part="1" 
F 0 "R9" H 6700 4500 50  0000 R CNN
F 1 "9.31kΩ" H 6750 4600 50  0000 R CNN
F 2 "" H 6700 4600 50  0001 C CNN
F 3 "~" H 6700 4600 50  0001 C CNN
	1    6700 4600
	-1   0    0    1   
$EndComp
Text Label 6700 4500 1    50   ~ 0
VREF
$Comp
L power:GND #PWR?
U 1 1 62029CDD
P 6500 4600
F 0 "#PWR?" H 6500 4350 50  0001 C CNN
F 1 "GND" V 6600 4700 50  0000 R CNN
F 2 "" H 6500 4600 50  0001 C CNN
F 3 "" H 6500 4600 50  0001 C CNN
	1    6500 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4700 6700 4700
Wire Wire Line
	7450 4400 7750 4400
Wire Wire Line
	6000 1550 6150 1550
Wire Wire Line
	4750 1550 5000 1550
Connection ~ 5000 1550
Wire Wire Line
	5000 1550 5100 1550
$Comp
L Device:LED MainPowerDiode
U 1 1 62088C75
P 2700 3700
F 0 "MainPowerDiode" H 2693 3445 50  0000 C CNN
F 1 "LED" H 2693 3536 50  0000 C CNN
F 2 "" H 2700 3700 50  0001 C CNN
F 3 "~" H 2700 3700 50  0001 C CNN
	1    2700 3700
	-1   0    0    1   
$EndComp
Connection ~ 2850 3700
$Comp
L Connector:Conn_01x02_Female MainPowerSwitch
U 1 1 620B3898
P 2350 3900
F 0 "MainPowerSwitch" V 2400 3500 50  0000 L CNN
F 1 "Conn_01x02_Female" V 2500 3450 50  0000 L CNN
F 2 "" H 2350 3900 50  0001 C CNN
F 3 "~" H 2350 3900 50  0001 C CNN
	1    2350 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 3700 2550 3700
Wire Wire Line
	1950 3700 2250 3700
$Comp
L power:GND #PWR?
U 1 1 61FCD723
P 1950 3600
F 0 "#PWR?" H 1950 3350 50  0001 C CNN
F 1 "GND" V 1955 3472 50  0000 R CNN
F 2 "" H 1950 3600 50  0001 C CNN
F 3 "" H 1950 3600 50  0001 C CNN
	1    1950 3600
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
