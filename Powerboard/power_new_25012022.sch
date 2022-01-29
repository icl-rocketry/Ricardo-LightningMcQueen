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
P 500 2600
F 0 "#PWR?" H 500 2350 50  0001 C CNN
F 1 "GND" H 505 2427 50  0000 C CNN
F 2 "" H 500 2600 50  0001 C CNN
F 3 "" H 500 2600 50  0001 C CNN
	1    500  2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Plug_USB2.0 P?
U 1 1 61C7C511
P 500 1300
F 0 "P?" H 607 2167 50  0000 C CNN
F 1 "USB_C_Plug_USB2.0" H 607 2076 50  0000 C CNN
F 2 "" H 650 1300 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 650 1300 50  0001 C CNN
	1    500  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1400 1950 1400
Wire Wire Line
	1100 1200 1400 1200
Wire Wire Line
	1400 1200 1400 1500
Wire Wire Line
	1400 1500 1850 1500
Wire Wire Line
	200  2400 500  2400
Wire Wire Line
	500  2400 500  2600
Connection ~ 500  2400
Wire Wire Line
	1650 700  1650 1000
Wire Wire Line
	1650 1000 1750 1000
$Comp
L Device:R_Small R?
U 1 1 61C7C520
P 1300 1000
F 0 "R?" V 1104 1000 50  0000 C CNN
F 1 "22K" V 1195 1000 50  0000 C CNN
F 2 "" H 1300 1000 50  0001 C CNN
F 3 "~" H 1300 1000 50  0001 C CNN
	1    1300 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 900  1100 1000
Wire Wire Line
	1100 1000 1200 1000
Connection ~ 1100 1000
$Comp
L power:GND #PWR?
U 1 1 61C7C529
P 1500 1100
F 0 "#PWR?" H 1500 850 50  0001 C CNN
F 1 "GND" H 1505 927 50  0000 C CNN
F 2 "" H 1500 1100 50  0001 C CNN
F 3 "" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1000 1500 1000
Wire Wire Line
	1500 1000 1500 1100
Wire Wire Line
	1100 700  1650 700 
Wire Wire Line
	200  2200 200  2400
Wire Wire Line
	500  2200 500  2400
$Comp
L Interface_USB:CP2102N-A01-GQFN24 U?
U 1 1 61C8AC6C
P 2700 1000
F 0 "U?" H 2700 2081 50  0000 C CNN
F 1 "CP2102N-A01-GQFN24" H 2700 1990 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 3150 200 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2102n-datasheet.pdf" H 2750 -50 50  0001 C CNN
	1    2700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1300 2100 1300
$Comp
L Power_Protection:SP0503BAHT D?
U 1 1 61C8AC77
P 1850 2050
F 0 "D?" H 2055 2096 50  0000 L CNN
F 1 "SP0503BAHT" H 2055 2005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-143" H 2075 2000 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 1975 2175 50  0001 C CNN
	1    1850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1850 1750 1000
Connection ~ 1750 1000
Wire Wire Line
	1750 1000 2100 1000
Wire Wire Line
	1850 1850 1850 1500
Connection ~ 1850 1500
Wire Wire Line
	1850 1500 2100 1500
Wire Wire Line
	1950 1850 1950 1400
Connection ~ 1950 1400
Wire Wire Line
	1950 1400 2100 1400
$Comp
L power:GND #PWR?
U 1 1 61C8AC86
P 2800 2000
F 0 "#PWR?" H 2800 1750 50  0001 C CNN
F 1 "GND" H 2805 1827 50  0000 C CNN
F 2 "" H 2800 2000 50  0001 C CNN
F 3 "" H 2800 2000 50  0001 C CNN
	1    2800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2000 2800 2000
Wire Wire Line
	2800 1900 2800 2000
Connection ~ 2800 2000
Wire Wire Line
	2700 1900 2700 2000
Connection ~ 2700 2000
Wire Wire Line
	2700 2000 2700 2100
Wire Wire Line
	2800 2000 2800 2100
Wire Wire Line
	1850 2250 1850 2450
$Sheet
S 2450 3000 850  300 
U 61BEB629
F0 "battery Charger" 50
F1 "battchrg.sch" 50
F2 "System" I R 3300 3150 50 
$EndSheet
$Comp
L Transistor_FET:IRF6728M Q?
U 1 1 61C4D11C
P 3800 3950
F 0 "Q?" H 4004 3996 50  0000 L CNN
F 1 "IRF6728M" H 4004 3905 50  0000 L CNN
F 2 "Package_DirectFET:DirectFET_MX" H 3800 3950 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/irf6728mpbf.pdf?fileId=5546d462533600a4015355ed73701a9c" H 3800 3950 50  0001 L CNN
	1    3800 3950
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF6728M Q?
U 1 1 61C4D116
P 3800 3550
F 0 "Q?" H 4004 3596 50  0000 L CNN
F 1 "IRF6728M" H 4004 3505 50  0000 L CNN
F 2 "Package_DirectFET:DirectFET_MX" H 3800 3550 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/irf6728mpbf.pdf?fileId=5546d462533600a4015355ed73701a9c" H 3800 3550 50  0001 L CNN
	1    3800 3550
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
Text Label 4000 3550 0    50   ~ 0
LPC
Wire Wire Line
	3700 3350 3700 3150
Wire Wire Line
	3700 3150 3300 3150
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 61F29D49
P 4200 3950
F 0 "J?" H 4228 3976 50  0000 L CNN
F 1 "Conn_01x01_Female" H 4228 3885 50  0000 L CNN
F 2 "" H 4200 3950 50  0001 C CNN
F 3 "~" H 4200 3950 50  0001 C CNN
	1    4200 3950
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
S 4350 3000 750  350 
U 61F04C1A
F0 "3.3redundant" 50
F1 "3.sch" 50
F2 "Vin" I L 4350 3150 50 
$EndSheet
Connection ~ 3700 3150
Wire Wire Line
	3700 3150 4350 3150
$EndSCHEMATC
