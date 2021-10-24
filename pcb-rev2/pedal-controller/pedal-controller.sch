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
L pedal-controller:ACJS-MHDR_Jack_Connector_S U2
U 1 1 5DE2885C
P 10550 1350
F 0 "U2" H 11228 1621 50  0000 L CNN
F 1 "ACJS-MHDR_Jack_Connector_S" H 11228 1530 50  0000 L CNN
F 2 "" H 10550 1350 50  0001 C CNN
F 3 "" H 10550 1350 50  0001 C CNN
	1    10550 1350
	1    0    0    -1  
$EndComp
$Comp
L arduino-kicad:Arduino_Micro_Socket XA1
U 1 1 5DE2A491
P 8800 1750
F 0 "XA1" H 8800 2987 60  0000 C CNN
F 1 "Arduino_Micro_Socket" H 8800 2881 60  0000 C CNN
F 2 "" H 10600 5500 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-micro" H 10600 5500 60  0001 C CNN
	1    8800 1750
	1    0    0    -1  
$EndComp
$Comp
L pedal-controller:ACJS-MHDR_Jack_Connector_S U3
U 1 1 5DE3586A
P 10550 1900
F 0 "U3" H 11228 2171 50  0000 L CNN
F 1 "ACJS-MHDR_Jack_Connector_S" H 11228 2080 50  0000 L CNN
F 2 "" H 10550 1900 50  0001 C CNN
F 3 "" H 10550 1900 50  0001 C CNN
	1    10550 1900
	1    0    0    -1  
$EndComp
$Comp
L pedal-controller:ACJS-MHDR_Jack_Connector_S U4
U 1 1 5DE360B6
P 10550 2450
F 0 "U4" H 11228 2721 50  0000 L CNN
F 1 "ACJS-MHDR_Jack_Connector_S" H 11228 2630 50  0000 L CNN
F 2 "" H 10550 2450 50  0001 C CNN
F 3 "" H 10550 2450 50  0001 C CNN
	1    10550 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 850  10200 850 
Wire Wire Line
	10350 850  10350 1350
Wire Wire Line
	10350 1350 10550 1350
Wire Wire Line
	10100 950  10300 950 
Wire Wire Line
	10300 950  10300 1900
Wire Wire Line
	10300 1900 10550 1900
Wire Wire Line
	10100 1050 10250 1050
Wire Wire Line
	10250 1050 10250 2450
Wire Wire Line
	10250 2450 10550 2450
Wire Bus Line
	7500 2550 7400 2550
Wire Bus Line
	7400 2550 7400 2950
Wire Wire Line
	11050 2450 11050 2950
Wire Wire Line
	11050 1900 10950 1900
Wire Wire Line
	10950 1900 10950 2950
Wire Wire Line
	11050 1350 10900 1350
Wire Wire Line
	10900 1350 10900 2950
Wire Bus Line
	7400 2950 11050 2950
Wire Wire Line
	7500 2250 7450 2250
Wire Wire Line
	7450 2250 7450 2800
Wire Wire Line
	7450 2800 10200 2800
$Comp
L pedal-controller:10Kresistor U1
U 1 1 5DE501C2
P 10200 850
F 0 "U1" V 10304 938 50  0000 L CNN
F 1 "10Kresistor" V 10395 938 50  0000 L CNN
F 2 "" H 10200 850 50  0001 C CNN
F 3 "" H 10200 850 50  0001 C CNN
	1    10200 850 
	0    1    1    0   
$EndComp
Connection ~ 10200 850 
Wire Wire Line
	10200 850  10350 850 
Wire Bus Line
	10200 1150 10200 2800
$EndSCHEMATC
