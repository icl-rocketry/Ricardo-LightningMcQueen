EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
U 1 1 61C7C50B
P 950 3100
F 0 "#PWR?" H 950 2850 50  0001 C CNN
F 1 "GND" H 955 2927 50  0000 C CNN
F 2 "" H 950 3100 50  0001 C CNN
F 3 "" H 950 3100 50  0001 C CNN
	1    950  3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Plug_USB2.0 P?
U 1 1 61C7C511
P 950 1800
F 0 "P?" H 1057 2667 50  0000 C CNN
F 1 "USB_C_Plug_USB2.0" H 1057 2576 50  0000 C CNN
F 2 "" H 1100 1800 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1100 1800 50  0001 C CNN
	1    950  1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1900 2400 1900
Wire Wire Line
	1550 1700 1850 1700
Wire Wire Line
	1850 1700 1850 2000
Wire Wire Line
	1850 2000 2300 2000
Wire Wire Line
	650  2900 950  2900
Wire Wire Line
	950  2900 950  3100
Connection ~ 950  2900
Wire Wire Line
	2100 1200 2100 1500
Wire Wire Line
	2100 1500 2200 1500
$Comp
L Device:R_Small R?
U 1 1 61C7C520
P 1750 1500
F 0 "R?" V 1554 1500 50  0000 C CNN
F 1 "22K" V 1645 1500 50  0000 C CNN
F 2 "" H 1750 1500 50  0001 C CNN
F 3 "~" H 1750 1500 50  0001 C CNN
	1    1750 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 1400 1550 1500
Wire Wire Line
	1550 1500 1650 1500
Connection ~ 1550 1500
$Comp
L power:GND #PWR?
U 1 1 61C7C529
P 1950 1600
F 0 "#PWR?" H 1950 1350 50  0001 C CNN
F 1 "GND" H 1955 1427 50  0000 C CNN
F 2 "" H 1950 1600 50  0001 C CNN
F 3 "" H 1950 1600 50  0001 C CNN
	1    1950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1500 1950 1500
Wire Wire Line
	1950 1500 1950 1600
Wire Wire Line
	1550 1200 2100 1200
Wire Wire Line
	650  2700 650  2900
Wire Wire Line
	950  2700 950  2900
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U?
U 1 1 61C8AC6C
P 3150 1500
F 0 "U?" H 3150 2581 50  0000 C CNN
F 1 "CP2102N-A01-GQFN24" H 3150 2490 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 3600 700 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 3200 450 50  0001 C CNN
	1    3150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1800 2550 1800
$Comp
L Power_Protection:SP0503BAHT D?
U 1 1 61C8AC77
P 2300 2550
F 0 "D?" H 2505 2596 50  0000 L CNN
F 1 "SP0503BAHT" H 2505 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2525 2500 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 2425 2675 50  0001 C CNN
	1    2300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2350 2200 1500
Connection ~ 2200 1500
Wire Wire Line
	2200 1500 2550 1500
Wire Wire Line
	2300 2350 2300 2000
Connection ~ 2300 2000
Wire Wire Line
	2300 2000 2550 2000
Wire Wire Line
	2400 2350 2400 1900
Connection ~ 2400 1900
Wire Wire Line
	2400 1900 2550 1900
$Comp
L power:GND #PWR?
U 1 1 61C8AC86
P 3250 2500
F 0 "#PWR?" H 3250 2250 50  0001 C CNN
F 1 "GND" H 3255 2327 50  0000 C CNN
F 2 "" H 3250 2500 50  0001 C CNN
F 3 "" H 3250 2500 50  0001 C CNN
	1    3250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2500 3250 2500
Wire Wire Line
	3250 2400 3250 2500
Connection ~ 3250 2500
Wire Wire Line
	3150 2400 3150 2500
Connection ~ 3150 2500
Wire Wire Line
	3150 2500 3150 2600
Wire Wire Line
	3250 2500 3250 2600
Wire Wire Line
	2300 2750 2300 2950
$Sheet
S 3900 4050 850  300 
U 61BEB629
F0 "battery Charger" 50
F1 "battchrg.sch" 50
F2 "System" I R 4750 4200 50 
F3 "Stat1" I L 3900 4100 50 
F4 "Stat2" I L 3900 4200 50 
F5 "PG" I L 3900 4300 50 
$EndSheet
$Comp
L Transistor_FET:IRF6728M Q?
U 1 1 61C4D11C
P 5250 5000
F 0 "Q?" H 5454 5046 50  0000 L CNN
F 1 "IRF6728M" H 5454 4955 50  0000 L CNN
F 2 "Package_DirectFET:DirectFET_MX" H 5250 5000 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/irf6728mpbf.pdf?fileId=5546d462533600a4015355ed73701a9c" H 5250 5000 50  0001 L CNN
	1    5250 5000
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF6728M Q?
U 1 1 61C4D116
P 5250 4600
F 0 "Q?" H 5454 4646 50  0000 L CNN
F 1 "IRF6728M" H 5454 4555 50  0000 L CNN
F 2 "Package_DirectFET:DirectFET_MX" H 5250 4600 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/irf6728mpbf.pdf?fileId=5546d462533600a4015355ed73701a9c" H 5250 4600 50  0001 L CNN
	1    5250 4600
	-1   0    0    1   
$EndComp
$Comp
L Interface_CAN_LIN:SN65HVD230 U?
U 1 1 61C4D110
P 9500 5600
F 0 "U?" H 9500 6081 50  0000 C CNN
F 1 "SN65HVD230" H 9500 5990 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9500 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 9400 6000 50  0001 C CNN
	1    9500 5600
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-PICO-D4 U?
U 1 1 61C4D10A
P 9750 2950
F 0 "U?" H 9750 1261 50  0000 C CNN
F 1 "ESP32-PICO-D4" H 9750 1170 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.3x5.3mm" H 9750 1250 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-pico-d4_datasheet_en.pdf" H 10000 1950 50  0001 C CNN
	1    9750 2950
	1    0    0    -1  
$EndComp
Text Label 10550 2550 0    50   ~ 0
LPC
Text Label 5450 4600 0    50   ~ 0
LPC
Wire Wire Line
	5150 4400 5150 4200
Wire Wire Line
	5150 4200 4750 4200
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 61F29D49
P 5950 5000
F 0 "J?" H 5978 5026 50  0000 L CNN
F 1 "Conn_01x01_Female" H 5978 4935 50  0000 L CNN
F 2 "" H 5950 5000 50  0001 C CNN
F 3 "~" H 5950 5000 50  0001 C CNN
	1    5950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5800 9000 5800
Wire Wire Line
	9000 5800 9000 6150
Wire Wire Line
	9000 6150 9500 6150
Wire Wire Line
	9500 6150 9500 6000
$Comp
L power:GND #PWR?
U 1 1 61F5E1C0
P 9500 6150
F 0 "#PWR?" H 9500 5900 50  0001 C CNN
F 1 "GND" H 9505 5977 50  0000 C CNN
F 2 "" H 9500 6150 50  0001 C CNN
F 3 "" H 9500 6150 50  0001 C CNN
	1    9500 6150
	1    0    0    -1  
$EndComp
Connection ~ 9500 6150
Text Label 9900 5700 0    50   ~ 0
CANL
Text Label 9900 5600 0    50   ~ 0
CANH
Text Label 9100 5500 2    50   ~ 0
CAN_TX
Text Label 9100 5600 2    50   ~ 0
CAN_RX
$Sheet
S 5800 4050 750  350 
U 61F04C1A
F0 "3.3redundant" 50
F1 "3.sch" 50
F2 "Vin" I L 5800 4200 50 
F3 "Vout" I R 6550 4350 50 
F4 "STAT1" I R 6550 4250 50 
F5 "STAT2" I R 6550 4150 50 
$EndSheet
Connection ~ 5150 4200
Wire Wire Line
	5150 4200 5800 4200
Text Label 6550 4150 0    50   ~ 0
3.3STAT2
Text Label 10550 2650 0    50   ~ 0
3.3STAT2
Text Label 10550 2750 0    50   ~ 0
3.3STAT1
Text Label 6550 4250 0    50   ~ 0
3.3STAT1
Text Label 3900 4100 2    50   ~ 0
BATTSTAT1
Text Label 3900 4200 2    50   ~ 0
BATTSTAT2
Text Label 3900 4300 2    50   ~ 0
PG
Text Label 8950 3050 2    50   ~ 0
BATTSTAT1
Text Label 8950 2950 2    50   ~ 0
BATTSTAT2
Text Label 10550 2850 0    50   ~ 0
PG
$Comp
L Device:LED 24vEnableDiode
U 1 1 6208CC45
P 5600 5000
F 0 "24vEnableDiode" H 5593 5217 50  0000 C CNN
F 1 "LED" H 5593 5126 50  0000 C CNN
F 2 "" H 5600 5000 50  0001 C CNN
F 3 "~" H 5600 5000 50  0001 C CNN
	1    5600 5000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
