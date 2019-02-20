EESchema Schematic File Version 4
LIBS:Keithley_17X_USB-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Keithley 17X USB Option"
Date ""
Rev ""
Comp "Perry Leumas"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MSP430:MSP430FR2110 U4
U 1 1 5C60898C
P 6800 3550
F 0 "U4" H 7300 2250 60  0000 C CNN
F 1 "MSP430FR2110" H 6800 3650 60  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 7100 3000 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/msp430fr2111.pdf" H 7100 3000 60  0001 C CNN
F 4 "IC MCU 16BIT 2KB FRAM 16TSSOP" H 6800 3550 50  0001 C CNN "Description"
F 5 "Texas Instruments" H 6800 3550 50  0001 C CNN "Manufacture"
F 6 "MSP430FR2110IPW16R" H 6800 3550 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 6800 3550 50  0001 C CNN "Supplier"
F 8 "296-47343-1-ND" H 6800 3550 50  0001 C CNN "Supplier Part Number"
	1    6800 3550
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:FT230XS U5
U 1 1 5C608B9C
P 9350 1900
F 0 "U5" H 8800 2500 50  0000 L CNN
F 1 "FT230XS" H 9650 2500 50  0000 L CNN
F 2 "Package_SO:SSOP-16_3.9x4.9mm_P0.635mm" H 9800 1250 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT230X.html" H 9350 1900 50  0001 C CNN
F 4 "IC USB SERIAL BASIC UART 16SSOP" H 9350 1900 50  0001 C CNN "Description"
F 5 "FTDI, Future Technology Devices International Ltd" H 9350 1900 50  0001 C CNN "Manufacture"
F 6 "FT230XS-R" H 9350 1900 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 9350 1900 50  0001 C CNN "Supplier"
F 8 "768-1135-1-ND" H 9350 1900 50  0001 C CNN "Supplier Part Number"
	1    9350 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 5C608CE3
P 850 1200
F 0 "J1" H 650 1650 50  0000 L CNN
F 1 "USB_B" H 650 1550 50  0000 L CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 1000 1150 50  0001 C CNN
F 3 "https://productfinder.pulseeng.com/doc_type/WEB301/doc_num/E8144-B02022-L/doc_part/E8144-B02022-L.pdf" H 1000 1150 50  0001 C CNN
F 4 "CONN RCPT TYPEB 4POS R/A" H 850 1200 50  0001 C CNN "Description"
F 5 "Pulse Electronics Network" H 850 1200 50  0001 C CNN "Manufacture"
F 6 "E8144-B02022-L" H 850 1200 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 850 1200 50  0001 C CNN "Supplier"
F 8 "553-2272-ND" H 850 1200 50  0001 C CNN "Supplier Part Number"
	1    850  1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C60A39E
P 8150 1750
F 0 "R1" V 8230 1750 50  0000 C CNN
F 1 "27R" V 8150 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8080 1750 50  0001 C CNN
F 3 "https://www.seielect.com/Catalog/SEI-RMCF_RMCP.pdf" H 8150 1750 50  0001 C CNN
F 4 "RES 27 OHM 5% 1/10W 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Stackpole Electronics Inc" H 0   0   50  0001 C CNN "Manufacture"
F 6 "RMCF0603JT27R0" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "RMCF0603JT27R0CT-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    8150 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C60A3D9
P 8150 1950
F 0 "R2" V 8230 1950 50  0000 C CNN
F 1 "27R" V 8150 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8080 1950 50  0001 C CNN
F 3 "https://www.seielect.com/Catalog/SEI-RMCF_RMCP.pdf" H 8150 1950 50  0001 C CNN
F 4 "RES 27 OHM 5% 1/10W 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Stackpole Electronics Inc" H 0   0   50  0001 C CNN "Manufacture"
F 6 "RMCF0603JT27R0" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "RMCF0603JT27R0CT-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    8150 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 1800 8350 1800
Wire Wire Line
	8350 1800 8350 1750
Wire Wire Line
	8350 1750 8300 1750
Wire Wire Line
	8650 1900 8350 1900
Wire Wire Line
	8350 1900 8350 1950
Wire Wire Line
	8350 1950 8300 1950
$Comp
L power:GND #PWR01
U 1 1 5C60B435
P 850 2250
F 0 "#PWR01" H 850 2000 50  0001 C CNN
F 1 "GND" H 850 2100 50  0000 C CNN
F 2 "" H 850 2250 50  0001 C CNN
F 3 "" H 850 2250 50  0001 C CNN
	1    850  2250
	1    0    0    -1  
$EndComp
NoConn ~ 750  1600
$Comp
L power:GND #PWR026
U 1 1 5C60BB8D
P 9350 2700
F 0 "#PWR026" H 9350 2450 50  0001 C CNN
F 1 "GND" H 9350 2550 50  0000 C CNN
F 2 "" H 9350 2700 50  0001 C CNN
F 3 "" H 9350 2700 50  0001 C CNN
	1    9350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2600 9250 2650
Wire Wire Line
	9250 2650 9350 2650
Wire Wire Line
	9450 2650 9450 2600
Wire Wire Line
	9350 2700 9350 2650
Connection ~ 9350 2650
Wire Wire Line
	9350 2650 9450 2650
$Comp
L Device:C C7
U 1 1 5C60ED80
P 8500 2450
F 0 "C7" H 8525 2550 50  0000 L CNN
F 1 "100nF" H 8525 2350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8538 2300 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/datasheet/C0603C104Z3VACTU.pdf" H 8500 2450 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V Y5V 0603" H 0   0   50  0001 C CNN "Description"
F 5 "KEMET" H 0   0   50  0001 C CNN "Manufacture"
F 6 "C0603C104Z3VACTU" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "399-1100-1-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    8500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2300 8500 2100
Wire Wire Line
	8500 2100 8650 2100
Wire Wire Line
	8500 2100 8500 1500
Wire Wire Line
	8500 1500 8650 1500
Connection ~ 8500 2100
$Comp
L power:GND #PWR020
U 1 1 5C611BAD
P 8500 2700
F 0 "#PWR020" H 8500 2450 50  0001 C CNN
F 1 "GND" H 8500 2550 50  0000 C CNN
F 2 "" H 8500 2700 50  0001 C CNN
F 3 "" H 8500 2700 50  0001 C CNN
	1    8500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2700 8500 2600
Wire Wire Line
	8500 1500 8500 1100
Wire Wire Line
	8500 1100 9450 1100
Wire Wire Line
	9450 1100 9450 1200
Connection ~ 8500 1500
$Comp
L Device:C C6
U 1 1 5C614CEF
P 8000 2450
F 0 "C6" H 8025 2550 50  0000 L CNN
F 1 "4.7uF" H 8025 2350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8038 2300 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/CL10A475KQ8NNNC.jsp" H 8000 2450 50  0001 C CNN
F 4 "CAP CER 4.7UF 6.3V X5R 0603" H 8000 2450 50  0001 C CNN "Description"
F 5 "Samsung Electro-Mechanics" H 8000 2450 50  0001 C CNN "Manufacture"
F 6 "CL10A475KQ8NNNC" H 8000 2450 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 8000 2450 50  0001 C CNN "Supplier"
F 8 "1276-1045-1-ND" H 8000 2450 50  0001 C CNN "Supplier Part Number"
	1    8000 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C614D36
P 7700 2450
F 0 "C5" H 7725 2550 50  0000 L CNN
F 1 "100nF" H 7725 2350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7738 2300 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/datasheet/C0603C104Z3VACTU.pdf" H 7700 2450 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V Y5V 0603" H 0   0   50  0001 C CNN "Description"
F 5 "KEMET" H 0   0   50  0001 C CNN "Manufacture"
F 6 "C0603C104Z3VACTU" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "399-1100-1-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    7700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2300 8000 2250
Wire Wire Line
	7700 2300 7700 2250
Wire Wire Line
	7700 2250 7850 2250
$Comp
L power:GND #PWR019
U 1 1 5C6190D4
P 7850 2700
F 0 "#PWR019" H 7850 2450 50  0001 C CNN
F 1 "GND" H 7850 2550 50  0000 C CNN
F 2 "" H 7850 2700 50  0001 C CNN
F 3 "" H 7850 2700 50  0001 C CNN
	1    7850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2600 7700 2650
Wire Wire Line
	7700 2650 7850 2650
Wire Wire Line
	7850 2650 8000 2650
Wire Wire Line
	8000 2650 8000 2600
Connection ~ 7850 2650
Wire Wire Line
	7850 2700 7850 2650
NoConn ~ 10050 1700
NoConn ~ 10050 1800
$Comp
L Device:LED D6
U 1 1 5C61EE9D
P 9550 6100
F 0 "D6" H 9550 6200 50  0000 C CNN
F 1 "RXLED" H 9550 6000 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9550 6100 50  0001 C CNN
F 3 "~" H 9550 6100 50  0001 C CNN
	1    9550 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5C61EF2E
P 9850 6100
F 0 "D7" H 9850 6200 50  0000 C CNN
F 1 "TXLED" H 9850 6000 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9850 6100 50  0001 C CNN
F 3 "~" H 9850 6100 50  0001 C CNN
	1    9850 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 2100 10350 2100
Wire Wire Line
	10050 2200 10350 2200
$Comp
L Device:R R5
U 1 1 5C62181F
P 9550 5750
F 0 "R5" V 9630 5750 50  0000 C CNN
F 1 "1k" V 9550 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9480 5750 50  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 9550 5750 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Manufacture"
F 6 "RC0603JR-071KL" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    9550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5500 9550 5600
$Comp
L Device:R R6
U 1 1 5C623E79
P 9850 5750
F 0 "R6" V 9930 5750 50  0000 C CNN
F 1 "1k" V 9850 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9780 5750 50  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 9850 5750 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Manufacture"
F 6 "RC0603JR-071KL" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    9850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5500 9700 5500
Wire Wire Line
	9850 5500 9850 5600
Wire Wire Line
	9550 5900 9550 5950
Wire Wire Line
	9850 5900 9850 5950
Wire Wire Line
	10050 1500 10350 1500
Wire Wire Line
	10050 1600 10350 1600
Text Label 10350 1500 2    50   ~ 0
TXD
Text Label 10350 1600 2    50   ~ 0
RXD
Text Label 10350 2100 2    50   ~ 0
RXLED
Text Label 10350 2200 2    50   ~ 0
TXLED
$Comp
L power:+5V #PWR025
U 1 1 5C6303B5
P 9250 900
F 0 "#PWR025" H 9250 750 50  0001 C CNN
F 1 "+5V" H 9250 1040 50  0000 C CNN
F 2 "" H 9250 900 50  0001 C CNN
F 3 "" H 9250 900 50  0001 C CNN
	1    9250 900 
	1    0    0    -1  
$EndComp
NoConn ~ 10050 2000
NoConn ~ 10050 2300
$Comp
L Device:R_Pack04 RN1
U 1 1 5C63A7B8
P 2550 4650
F 0 "RN1" V 2250 4650 50  0000 C CNN
F 1 "10k" V 2750 4650 50  0000 C CNN
F 2 "R_Array_Convex:YC324-JK-0710KL" V 2825 4650 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Yageo%20PDFs/YC102-358,TC122-164_Series_DS.pdf" H 2550 4650 50  0001 C CNN
F 4 "RES ARRAY 4 RES 10K OHM 2012" H 2550 4650 50  0001 C CNN "Description"
F 5 "Yageo" H 2550 4650 50  0001 C CNN "Manufacture"
F 6 "YC324-JK-0710KL" H 2550 4650 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 2550 4650 50  0001 C CNN "Supplier"
F 8 "YC324J-10KCT-ND" H 2550 4650 50  0001 C CNN "Supplier Part Number"
	1    2550 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 4750 3150 4750
Wire Wire Line
	3150 4750 3150 4300
Wire Wire Line
	3150 4300 3250 4300
Wire Wire Line
	2750 4650 3050 4650
Wire Wire Line
	3050 4650 3050 3900
Wire Wire Line
	3050 3900 3250 3900
Wire Wire Line
	2750 4550 2950 4550
Wire Wire Line
	2950 4550 2950 3500
Wire Wire Line
	2950 3500 3250 3500
Wire Wire Line
	2750 4450 2850 4450
Wire Wire Line
	2850 4450 2850 3100
Wire Wire Line
	2850 3100 3250 3100
$Comp
L power:GNDA #PWR05
U 1 1 5C649895
P 2250 4850
F 0 "#PWR05" H 2250 4600 50  0001 C CNN
F 1 "GNDA" H 2250 4700 50  0000 C CNN
F 2 "" H 2250 4850 50  0001 C CNN
F 3 "" H 2250 4850 50  0001 C CNN
	1    2250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4850 2250 4750
Wire Wire Line
	2250 4450 2350 4450
Wire Wire Line
	2350 4550 2250 4550
Connection ~ 2250 4550
Wire Wire Line
	2250 4550 2250 4450
Wire Wire Line
	2350 4650 2250 4650
Connection ~ 2250 4650
Wire Wire Line
	2250 4650 2250 4550
Wire Wire Line
	2350 4750 2250 4750
Connection ~ 2250 4750
Wire Wire Line
	2250 4750 2250 4650
$Comp
L power:GND #PWR011
U 1 1 5C6595A5
P 4050 4850
F 0 "#PWR011" H 4050 4600 50  0001 C CNN
F 1 "GND" H 4050 4700 50  0000 C CNN
F 2 "" H 4050 4850 50  0001 C CNN
F 3 "" H 4050 4850 50  0001 C CNN
	1    4050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4300 3850 4300
Wire Wire Line
	4050 4300 4050 4850
Wire Wire Line
	4050 4300 4050 3900
Wire Wire Line
	4050 3900 3850 3900
Connection ~ 4050 4300
Wire Wire Line
	4050 3900 4050 3500
Wire Wire Line
	4050 3500 3850 3500
Connection ~ 4050 3900
Wire Wire Line
	4050 3500 4050 3100
Wire Wire Line
	4050 3100 3850 3100
Connection ~ 4050 3500
$Comp
L TLP291-4:TLP281-4 U1
U 1 1 5C688C8D
P 3550 3650
F 0 "U1" H 3350 4500 50  0000 L CNN
F 1 "TLP281-4" H 3550 4500 50  0000 L CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 3550 2900 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/TLP281.pdf" H 3550 4300 50  0001 L CNN
F 4 "OPTOISO 2.5KV 4CH TRANS 16-SOP" H 3550 3650 50  0001 C CNN "Description"
F 5 "Toshiba Semiconductor and Storage" H 3550 3650 50  0001 C CNN "Manufacture"
F 6 "TLP281-4(GB-TP,J,F" H 3550 3650 50  0001 C CNN "Mfg Part Number"
	1    3550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7550 3150 7550
Wire Wire Line
	3150 7550 3150 7100
Wire Wire Line
	3150 7100 3250 7100
Wire Wire Line
	2750 7450 3050 7450
Wire Wire Line
	3050 7450 3050 6700
Wire Wire Line
	3050 6700 3250 6700
Wire Wire Line
	2750 7350 2950 7350
Wire Wire Line
	2950 7350 2950 6300
Wire Wire Line
	2950 6300 3250 6300
Wire Wire Line
	2750 7250 2850 7250
Wire Wire Line
	2850 7250 2850 5900
Wire Wire Line
	2850 5900 3250 5900
$Comp
L power:GNDA #PWR06
U 1 1 5C68E0FF
P 2250 7650
F 0 "#PWR06" H 2250 7400 50  0001 C CNN
F 1 "GNDA" H 2250 7500 50  0000 C CNN
F 2 "" H 2250 7650 50  0001 C CNN
F 3 "" H 2250 7650 50  0001 C CNN
	1    2250 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7250 2350 7250
Wire Wire Line
	2350 7350 2250 7350
Wire Wire Line
	2350 7450 2250 7450
Wire Wire Line
	2350 7550 2250 7550
$Comp
L power:GND #PWR012
U 1 1 5C68E114
P 4050 7650
F 0 "#PWR012" H 4050 7400 50  0001 C CNN
F 1 "GND" H 4050 7500 50  0000 C CNN
F 2 "" H 4050 7650 50  0001 C CNN
F 3 "" H 4050 7650 50  0001 C CNN
	1    4050 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 7100 3850 7100
Wire Wire Line
	4050 7100 4050 7650
Wire Wire Line
	4050 7100 4050 6700
Wire Wire Line
	4050 6700 3850 6700
Connection ~ 4050 7100
Wire Wire Line
	4050 6700 4050 6300
Wire Wire Line
	4050 6300 3850 6300
Connection ~ 4050 6700
Wire Wire Line
	4050 6300 4050 5900
Wire Wire Line
	4050 5900 3850 5900
Connection ~ 4050 6300
$Comp
L TLP291-4:TLP281-4 U2
U 1 1 5C68E125
P 3550 6450
F 0 "U2" H 3350 7300 50  0000 L CNN
F 1 "TLP281-4" H 3550 7300 50  0000 L CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 3550 5700 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/TLP281.pdf" H 3550 7100 50  0001 L CNN
F 4 "OPTOISO 2.5KV 4CH TRANS 16-SOP" H 3550 6450 50  0001 C CNN "Description"
F 5 "Toshiba Semiconductor and Storage" H 3550 6450 50  0001 C CNN "Manufacture"
F 6 "TLP281-4(GB-TP,J,F" H 3550 6450 50  0001 C CNN "Mfg Part Number"
	1    3550 6450
	1    0    0    -1  
$EndComp
Text Label 2250 2900 0    50   ~ 0
CLK_IN
Text Label 2250 3300 0    50   ~ 0
D5_IN
Text Label 2250 3700 0    50   ~ 0
SIGN_IN
Text Label 2250 4100 0    50   ~ 0
OVERRANGE_IN
Text Label 2250 5700 0    50   ~ 0
B1_IN
Text Label 2250 6100 0    50   ~ 0
B2_IN
Text Label 2250 6500 0    50   ~ 0
B4_IN
Text Label 2250 6900 0    50   ~ 0
B8_IN
Wire Wire Line
	3850 2900 4550 2900
Wire Wire Line
	3850 3300 4550 3300
Wire Wire Line
	3850 3700 4550 3700
Wire Wire Line
	3850 4100 4550 4100
Wire Wire Line
	3850 5700 4550 5700
Wire Wire Line
	3850 6100 4550 6100
Wire Wire Line
	3850 6500 4550 6500
Wire Wire Line
	3850 6900 4550 6900
Text Label 4550 2900 2    50   ~ 0
CLK
Text Label 4550 3300 2    50   ~ 0
D5
Text Label 4550 3700 2    50   ~ 0
SIGN
Text Label 4550 4100 2    50   ~ 0
OVERRANGE
Text Label 4550 5700 2    50   ~ 0
B1
Text Label 4550 6100 2    50   ~ 0
B2
Text Label 4550 6500 2    50   ~ 0
B4
Text Label 4550 6900 2    50   ~ 0
B8
Wire Wire Line
	7550 4150 8050 4150
Wire Wire Line
	7550 4250 8050 4250
Text Label 8050 4150 2    50   ~ 0
TXD
Text Label 8050 4250 2    50   ~ 0
RXD
Text Label 8050 4450 2    50   ~ 0
CLK
Text Label 8050 4550 2    50   ~ 0
D5
Text Label 8050 4650 2    50   ~ 0
SIGN
Text Label 8050 4750 2    50   ~ 0
OVERRANGE
Wire Wire Line
	7550 4450 8050 4450
Wire Wire Line
	7550 4550 8050 4550
Wire Wire Line
	7550 4650 8050 4650
Wire Wire Line
	7550 4750 8050 4750
Text Label 8050 3550 2    50   ~ 0
B1
Text Label 8050 3650 2    50   ~ 0
B2
Text Label 8050 3750 2    50   ~ 0
B4
Text Label 8050 3850 2    50   ~ 0
B8
Wire Wire Line
	7550 3850 8050 3850
Wire Wire Line
	7550 3750 8050 3750
Wire Wire Line
	7550 3650 8050 3650
Wire Wire Line
	7550 3550 8050 3550
Text Label 8050 3950 2    50   ~ 0
READ
Wire Wire Line
	5800 3550 6050 3550
$Comp
L power:GND #PWR017
U 1 1 5C72A2F5
P 5500 4050
F 0 "#PWR017" H 5500 3800 50  0001 C CNN
F 1 "GND" H 5500 3900 50  0000 C CNN
F 2 "" H 5500 4050 50  0001 C CNN
F 3 "" H 5500 4050 50  0001 C CNN
	1    5500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3950 6050 3950
$Comp
L Device:C C4
U 1 1 5C72FA8E
P 5800 3750
F 0 "C4" H 5825 3850 50  0000 L CNN
F 1 "100nF" H 5825 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5838 3600 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/datasheet/C0603C104Z3VACTU.pdf" H 5800 3750 50  0001 C CNN
F 4 "CAP CER 0.1UF 25V Y5V 0603" H 0   0   50  0001 C CNN "Description"
F 5 "KEMET" H 0   0   50  0001 C CNN "Manufacture"
F 6 "C0603C104Z3VACTU" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "399-1100-1-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    5800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3950 5800 3900
Connection ~ 5800 3950
Wire Wire Line
	5800 3600 5800 3550
Connection ~ 5800 3550
$Comp
L Device:C C3
U 1 1 5C77169F
P 5500 3750
F 0 "C3" H 5525 3850 50  0000 L CNN
F 1 "1uF" H 5525 3650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5538 3600 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/CL10A105KQ8NNNC.jsp" H 5500 3750 50  0001 C CNN
F 4 "CAP CER 1UF 6.3V X5R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Samsung Electro-Mechanics" H 0   0   50  0001 C CNN "Manufacture"
F 6 "CL10A105KQ8NNNC" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "1276-1036-1-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    5500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3550 5500 3550
Wire Wire Line
	5500 3550 5500 3600
Wire Wire Line
	5800 3950 5500 3950
Wire Wire Line
	5500 3950 5500 3900
Wire Wire Line
	5500 4050 5500 3950
Connection ~ 5500 3950
Text Label 5700 4650 0    50   ~ 0
SBWTDIO
Text Label 5700 4750 0    50   ~ 0
SBWTCK
$Comp
L Device:C C1
U 1 1 5C7B3482
P 3150 1200
F 0 "C1" H 3175 1300 50  0000 L CNN
F 1 "1uF" H 3175 1100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3188 1050 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/CL10A105KQ8NNNC.jsp" H 3150 1200 50  0001 C CNN
F 4 "CAP CER 1UF 6.3V X5R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Samsung Electro-Mechanics" H 0   0   50  0001 C CNN "Manufacture"
F 6 "CL10A105KQ8NNNC" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "1276-1036-1-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    3150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1200 3450 1200
Wire Wire Line
	3450 1200 3450 1000
Wire Wire Line
	3450 1000 3550 1000
Connection ~ 3450 1000
Wire Wire Line
	3150 1050 3150 1000
Wire Wire Line
	3150 1000 3450 1000
$Comp
L power:GND #PWR09
U 1 1 5C7C5FD6
P 3150 1450
F 0 "#PWR09" H 3150 1200 50  0001 C CNN
F 1 "GND" H 3150 1300 50  0000 C CNN
F 2 "" H 3150 1450 50  0001 C CNN
F 3 "" H 3150 1450 50  0001 C CNN
	1    3150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1450 3150 1350
$Comp
L power:GND #PWR010
U 1 1 5C7CC5DA
P 3950 1450
F 0 "#PWR010" H 3950 1200 50  0001 C CNN
F 1 "GND" H 3950 1300 50  0000 C CNN
F 2 "" H 3950 1450 50  0001 C CNN
F 3 "" H 3950 1450 50  0001 C CNN
	1    3950 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C7D99FD
P 4500 1200
F 0 "C2" H 4525 1300 50  0000 L CNN
F 1 "1uF" H 4525 1100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4538 1050 50  0001 C CNN
F 3 "http://www.samsungsem.com/kr/support/product-search/mlcc/CL10A105KQ8NNNC.jsp" H 4500 1200 50  0001 C CNN
F 4 "CAP CER 1UF 6.3V X5R 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Samsung Electro-Mechanics" H 0   0   50  0001 C CNN "Manufacture"
F 6 "CL10A105KQ8NNNC" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "1276-1036-1-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    4500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1000 4500 1000
Wire Wire Line
	4500 1000 4500 1050
$Comp
L power:GND #PWR014
U 1 1 5C7E07C8
P 4500 1450
F 0 "#PWR014" H 4500 1200 50  0001 C CNN
F 1 "GND" H 4500 1300 50  0000 C CNN
F 2 "" H 4500 1450 50  0001 C CNN
F 3 "" H 4500 1450 50  0001 C CNN
	1    4500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1450 4500 1350
Connection ~ 4500 1000
$Comp
L power:+3V3 #PWR013
U 1 1 5C7F63D1
P 4500 900
F 0 "#PWR013" H 4500 750 50  0001 C CNN
F 1 "+3V3" H 4500 1040 50  0000 C CNN
F 2 "" H 4500 900 50  0001 C CNN
F 3 "" H 4500 900 50  0001 C CNN
	1    4500 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 900  4500 1000
$Comp
L power:+3V3 #PWR016
U 1 1 5C66390A
P 5500 3400
F 0 "#PWR016" H 5500 3250 50  0001 C CNN
F 1 "+3V3" H 5500 3540 50  0000 C CNN
F 2 "" H 5500 3400 50  0001 C CNN
F 3 "" H 5500 3400 50  0001 C CNN
	1    5500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3400 5500 3550
Connection ~ 5500 3550
$Comp
L power:+5V #PWR027
U 1 1 5C687537
P 9700 5400
F 0 "#PWR027" H 9700 5250 50  0001 C CNN
F 1 "+5V" H 9700 5540 50  0000 C CNN
F 2 "" H 9700 5400 50  0001 C CNN
F 3 "" H 9700 5400 50  0001 C CNN
	1    9700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5400 9700 5500
Connection ~ 9700 5500
Wire Wire Line
	9700 5500 9850 5500
$Comp
L power:+5V #PWR07
U 1 1 5C6E6A45
P 2750 900
F 0 "#PWR07" H 2750 750 50  0001 C CNN
F 1 "+5V" H 2750 1040 50  0000 C CNN
F 2 "" H 2750 900 50  0001 C CNN
F 3 "" H 2750 900 50  0001 C CNN
	1    2750 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5C6ED408
P 2350 1000
F 0 "D3" H 2350 1100 50  0000 C CNN
F 1 "DSS16UTR" H 2350 900 50  0000 C CNN
F 2 "SMC_Diodes:D_SOD-123FL" H 2350 1000 50  0001 C CNN
F 3 "http://www.smc-diodes.com/propdf/DSS12U%20THRU%20DSS125U%20N1873%20REV.A.pdf" H 2350 1000 50  0001 C CNN
F 4 "SCHOTTKY 60V SOD-123FL" H 2350 1000 50  0001 C CNN "Description"
F 5 "SMC Diode Solutions" H 2350 1000 50  0001 C CNN "Manufacture"
F 6 "DSS16UTR" H 2350 1000 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 2350 1000 50  0001 C CNN "Supplier"
F 8 "1655-1929-1-ND" H 2350 1000 50  0001 C CNN "Supplier Part Number"
	1    2350 1000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9250 900  9250 1000
$Comp
L Device:Thermistor_PTC TH1
U 1 1 5C7323DF
P 1750 1000
F 0 "TH1" V 1590 1000 50  0000 C CNN
F 1 "Thermistor_PTC" V 1870 1000 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 1800 800 50  0001 L CNN
F 3 "https://www.belfuse.com/resources/CircuitProtection/datasheets/0ZCJ%20Nov2016.pdf" H 1750 1000 50  0001 C CNN
F 4 "PTC RESET FUSE 8V 500MA 1206" H 1750 1000 50  0001 C CNN "Description"
F 5 "Bel Fuse Inc." H 1750 1000 50  0001 C CNN "Manufacture"
F 6 "0ZCJ0050FF2G" H 1750 1000 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 1750 1000 50  0001 C CNN "Supplier"
F 8 "507-1802-1-ND" H 1750 1000 50  0001 C CNN "Supplier Part Number"
	1    1750 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 1000 2200 1000
Wire Wire Line
	2500 1000 2750 1000
Wire Wire Line
	2750 1000 2750 900 
$Comp
L Device:D_TVS D1
U 1 1 5C64F629
P 1250 1850
F 0 "D1" V 1250 1950 50  0000 C CNN
F 1 "TPD1E10B06" H 1250 1750 50  0000 C CNN
F 2 "TI_TVSDiode:TI_PX1SON_DPY" H 1250 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd1e10b06-q1.pdf" H 1250 1850 50  0001 C CNN
F 4 "TVS DIODE 5.5V 14V 2X1SON" H 1250 1850 50  0001 C CNN "Description"
F 5 "Texas Instruments" H 1250 1850 50  0001 C CNN "Manufacture"
F 6 "TPD1E10B06QDPYRQ1" H 1250 1850 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 1250 1850 50  0001 C CNN "Supplier"
F 8 "296-45327-1-ND" H 1250 1850 50  0001 C CNN "Supplier Part Number"
	1    1250 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	850  1600 850  2250
$Comp
L power:GND #PWR03
U 1 1 5C693468
P 1250 2250
F 0 "#PWR03" H 1250 2000 50  0001 C CNN
F 1 "GND" H 1250 2100 50  0000 C CNN
F 2 "" H 1250 2250 50  0001 C CNN
F 3 "" H 1250 2250 50  0001 C CNN
	1    1250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2250 1250 2000
$Comp
L Device:D_TVS_x2_CAA D2
U 1 1 5C69A66C
P 1850 1850
F 0 "D2" H 1850 2025 50  0000 C CNN
F 1 "ESD122DMXR" H 1850 1950 50  0000 C CNN
F 2 "TI_TVSDiode:TI_DMX_X2SON" H 1700 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/esd122.pdf" H 1700 1850 50  0001 C CNN
F 4 "TVS DIODE 8.4VC 2.5A IPP 3X2SON" H 1850 1850 50  0001 C CNN "Description"
F 5 "Texas Instruments" H 1850 1850 50  0001 C CNN "Manufacture"
F 6 "ESD122DMXR" H 1850 1850 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 1850 1850 50  0001 C CNN "Supplier"
F 8 "296-48543-1-ND" H 1850 1850 50  0001 C CNN "Supplier Part Number"
	1    1850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C69A8C5
P 1850 2250
F 0 "#PWR04" H 1850 2000 50  0001 C CNN
F 1 "GND" H 1850 2100 50  0000 C CNN
F 2 "" H 1850 2250 50  0001 C CNN
F 3 "" H 1850 2250 50  0001 C CNN
	1    1850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2250 1850 2000
Wire Wire Line
	1150 1200 1500 1200
Wire Wire Line
	1150 1000 1250 1000
Wire Wire Line
	1250 1700 1250 1000
Connection ~ 1250 1000
Wire Wire Line
	1250 1000 1600 1000
Wire Wire Line
	1150 1300 2200 1300
Wire Wire Line
	1500 1850 1500 1200
Connection ~ 1500 1200
Wire Wire Line
	1500 1200 2750 1200
Wire Wire Line
	2200 1850 2200 1300
Connection ~ 2200 1300
Wire Wire Line
	2200 1300 2750 1300
Text Label 2750 1200 2    50   ~ 0
D+
Text Label 2750 1300 2    50   ~ 0
D-
Text Notes 550  650  0    50   ~ 0
USB Power and Data
Wire Notes Line
	550  650  2900 650 
Wire Notes Line
	2900 2500 550  2500
Wire Notes Line
	550  2500 550  550 
Wire Notes Line
	550  550  2900 550 
Wire Notes Line
	2900 550  2900 2500
Wire Wire Line
	9250 1000 7850 1000
Wire Wire Line
	7850 1000 7850 2250
Connection ~ 9250 1000
Wire Wire Line
	9250 1000 9250 1200
Connection ~ 7850 2250
Wire Wire Line
	7850 2250 8000 2250
Wire Wire Line
	8000 1750 7550 1750
Wire Wire Line
	8000 1950 7550 1950
Text Notes 7450 650  0    50   ~ 0
USB to UART Interface
Wire Notes Line
	7450 650  10450 650 
Wire Notes Line
	10450 2950 7450 2950
Wire Notes Line
	7450 2950 7450 550 
Wire Notes Line
	7450 550  10450 550 
Wire Notes Line
	10450 550  10450 2950
Text Label 7550 1950 0    50   ~ 0
D+
Text Label 7550 1750 0    50   ~ 0
D-
Text Notes 5350 3150 0    50   ~ 0
Keithley to UART Interface Microcontroller
Wire Notes Line
	4800 3150 8600 3150
Wire Notes Line
	8600 4950 4800 4950
Wire Notes Line
	4800 4950 4800 3050
Wire Notes Line
	4800 3050 8600 3050
Wire Notes Line
	8600 3050 8600 4950
Text Notes 3000 650  0    50   ~ 0
3.3V Low Drop Out Regulator
Wire Notes Line
	3000 650  4700 650 
Wire Notes Line
	4700 1800 3000 1800
Wire Notes Line
	3000 1800 3000 550 
Wire Notes Line
	3000 550  4700 550 
Wire Notes Line
	4700 550  4700 1800
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U3
U 1 1 5C88BC21
P 3950 1100
F 0 "U3" H 3650 1450 50  0000 L CNN
F 1 "MIC5504-3.3YM5" H 3650 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3950 700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 3700 1350 50  0001 C CNN
F 4 "IC REG LINEAR 3.3V 300MA SOT23-5" H 3950 1100 50  0001 C CNN "Description"
F 5 "Microchip Technology" H 3950 1100 50  0001 C CNN "Manufacture"
F 6 "MIC5504-3.3YM5-TR" H 3950 1100 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 3950 1100 50  0001 C CNN "Supplier"
F 8 "576-4764-1-ND" H 3950 1100 50  0001 C CNN "Supplier Part Number"
	1    3950 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1450 3950 1400
Connection ~ 2250 7550
Connection ~ 2250 7450
Wire Wire Line
	2250 7450 2250 7350
Wire Wire Line
	2250 7350 2250 7250
Connection ~ 2250 7350
Wire Wire Line
	2250 7550 2250 7450
Wire Wire Line
	2250 7650 2250 7550
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 5C8DABE5
P 1550 5100
F 0 "J2" H 1600 5500 50  0000 C CNN
F 1 "SIGNAL INPUT" H 1600 4700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Horizontal" H 1550 5100 50  0001 C CNN
F 3 "http://www.on-shore.com/wp-content/uploads/2015/09/302-rxxx.pdf" H 1550 5100 50  0001 C CNN
F 4 "CONN HEADER R/A 14POS 2.54MM" H 1550 5100 50  0001 C CNN "Description"
F 5 "On Shore Technology Inc." H 1550 5100 50  0001 C CNN "Manufacture"
F 6 "302-R141" H 1550 5100 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 1550 5100 50  0001 C CNN "Supplier"
F 8 "ED10534-ND" H 1550 5100 50  0001 C CNN "Supplier Part Number"
	1    1550 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4800 1000 4800
Wire Wire Line
	1350 5200 1000 5200
Wire Wire Line
	1350 5300 1200 5300
Wire Wire Line
	1350 5400 1100 5400
Wire Wire Line
	1850 5000 2000 5000
Wire Wire Line
	1850 5300 2100 5300
NoConn ~ 1850 4800
NoConn ~ 1850 4900
NoConn ~ 1850 5100
NoConn ~ 1850 5200
NoConn ~ 1850 5400
$Comp
L power:GNDA #PWR02
U 1 1 5C98BF57
P 1200 5450
F 0 "#PWR02" H 1200 5200 50  0001 C CNN
F 1 "GNDA" H 1200 5300 50  0000 C CNN
F 2 "" H 1200 5450 50  0001 C CNN
F 3 "" H 1200 5450 50  0001 C CNN
	1    1200 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1200 5450 1200 5300
Wire Wire Line
	2100 4100 2100 5300
Wire Wire Line
	3250 4100 2100 4100
Wire Wire Line
	2000 5000 2000 3700
Wire Wire Line
	3250 3700 2000 3700
Wire Wire Line
	1000 2900 1000 4800
Wire Wire Line
	3250 2900 1000 2900
Wire Wire Line
	1100 3300 1100 5400
Wire Wire Line
	3250 3300 1100 3300
Wire Wire Line
	1000 5700 1000 5200
Wire Wire Line
	3250 5700 1000 5700
Wire Wire Line
	900  6100 900  5100
Wire Wire Line
	3250 6100 900  6100
Wire Wire Line
	1350 5100 900  5100
Wire Wire Line
	800  6500 800  5000
Wire Wire Line
	3250 6500 800  6500
Wire Wire Line
	1350 5000 800  5000
Wire Wire Line
	700  6900 700  4900
Wire Wire Line
	3250 6900 700  6900
Wire Wire Line
	1350 4900 700  4900
Wire Notes Line
	550  2700 4700 2700
Wire Notes Line
	4700 7950 550  7950
Text Notes 550  2700 0    50   ~ 0
Keithley Signal Input and Opto Isolation
Wire Notes Line
	550  2600 4700 2600
Wire Notes Line
	4700 2600 4700 7950
Wire Notes Line
	550  2600 550  7950
$Comp
L power:+5V #PWR08
U 1 1 5CBBDAD5
P 3150 900
F 0 "#PWR08" H 3150 750 50  0001 C CNN
F 1 "+5V" H 3150 1040 50  0000 C CNN
F 2 "" H 3150 900 50  0001 C CNN
F 3 "" H 3150 900 50  0001 C CNN
	1    3150 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 900  3150 1000
Connection ~ 3150 1000
Wire Wire Line
	2750 1000 3150 1000
Connection ~ 2750 1000
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5CDD62A8
P 4950 3650
F 0 "J3" H 4950 3850 50  0000 C CNN
F 1 "PROG" H 4950 3350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4950 3650 50  0001 C CNN
F 3 "~" H 4950 3650 50  0001 C CNN
	1    4950 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 4050 5150 3850
Wire Wire Line
	5150 3550 5500 3550
Wire Wire Line
	6050 4650 5350 4650
Wire Wire Line
	5350 4650 5350 3650
Wire Wire Line
	5350 3650 5150 3650
Wire Wire Line
	6050 4750 5250 4750
Wire Wire Line
	5250 4750 5250 3750
Wire Wire Line
	5250 3750 5150 3750
$Comp
L power:GND #PWR015
U 1 1 5CE838A4
P 5150 4050
F 0 "#PWR015" H 5150 3800 50  0001 C CNN
F 1 "GND" H 5150 3900 50  0000 C CNN
F 2 "" H 5150 4050 50  0001 C CNN
F 3 "" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 5CED5A8F
P 10250 6100
F 0 "D8" H 10250 6200 50  0000 C CNN
F 1 "READ" H 10250 6000 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 10250 6100 50  0001 C CNN
F 3 "~" H 10250 6100 50  0001 C CNN
	1    10250 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CED5BF9
P 10250 5750
F 0 "R7" V 10330 5750 50  0000 C CNN
F 1 "1k" V 10250 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10180 5750 50  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 10250 5750 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Manufacture"
F 6 "RC0603JR-071KL" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    10250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3950 8050 3950
$Comp
L power:+3V3 #PWR028
U 1 1 5CF1FB04
P 10250 5400
F 0 "#PWR028" H 10250 5250 50  0001 C CNN
F 1 "+3V3" H 10250 5540 50  0000 C CNN
F 2 "" H 10250 5400 50  0001 C CNN
F 3 "" H 10250 5400 50  0001 C CNN
	1    10250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5400 10250 5600
Wire Wire Line
	10250 5900 10250 5950
$Comp
L power:+5V #PWR021
U 1 1 5CF89E0D
P 8800 5400
F 0 "#PWR021" H 8800 5250 50  0001 C CNN
F 1 "+5V" H 8800 5540 50  0000 C CNN
F 2 "" H 8800 5400 50  0001 C CNN
F 3 "" H 8800 5400 50  0001 C CNN
	1    8800 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5CF89E52
P 8800 6100
F 0 "D4" H 8800 6200 50  0000 C CNN
F 1 "5V" H 8800 6000 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 8800 6100 50  0001 C CNN
F 3 "~" H 8800 6100 50  0001 C CNN
	1    8800 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR023
U 1 1 5CF9579C
P 9100 5400
F 0 "#PWR023" H 9100 5250 50  0001 C CNN
F 1 "+3V3" H 9100 5540 50  0000 C CNN
F 2 "" H 9100 5400 50  0001 C CNN
F 3 "" H 9100 5400 50  0001 C CNN
	1    9100 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5CF957E3
P 9100 6100
F 0 "D5" H 9100 6200 50  0000 C CNN
F 1 "3V3" H 9100 6000 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9100 6100 50  0001 C CNN
F 3 "~" H 9100 6100 50  0001 C CNN
	1    9100 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CF958BC
P 9100 5750
F 0 "R4" V 9180 5750 50  0000 C CNN
F 1 "1k" V 9100 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 5750 50  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 9100 5750 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Manufacture"
F 6 "RC0603JR-071KL" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    9100 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CF9593A
P 8800 5750
F 0 "R3" V 8880 5750 50  0000 C CNN
F 1 "1k" V 8800 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8730 5750 50  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 8800 5750 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0603" H 0   0   50  0001 C CNN "Description"
F 5 "Yageo" H 0   0   50  0001 C CNN "Manufacture"
F 6 "RC0603JR-071KL" H 0   0   50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 0   0   50  0001 C CNN "Supplier"
F 8 "311-1.0KGRCT-ND" H 0   0   50  0001 C CNN "Supplier Part Number"
	1    8800 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5600 8800 5400
Wire Wire Line
	8800 5950 8800 5900
Wire Wire Line
	9100 5950 9100 5900
Wire Wire Line
	9100 5600 9100 5400
$Comp
L power:GND #PWR022
U 1 1 5CFC492F
P 8800 6500
F 0 "#PWR022" H 8800 6250 50  0001 C CNN
F 1 "GND" H 8800 6350 50  0000 C CNN
F 2 "" H 8800 6500 50  0001 C CNN
F 3 "" H 8800 6500 50  0001 C CNN
	1    8800 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5CFC4983
P 9100 6500
F 0 "#PWR024" H 9100 6250 50  0001 C CNN
F 1 "GND" H 9100 6350 50  0000 C CNN
F 2 "" H 9100 6500 50  0001 C CNN
F 3 "" H 9100 6500 50  0001 C CNN
	1    9100 6500
	1    0    0    -1  
$EndComp
Text Label 9850 6550 1    50   ~ 0
TXLED
Text Label 9550 6550 1    50   ~ 0
RXLED
Text Label 10250 6550 1    50   ~ 0
READ
Wire Wire Line
	9550 6550 9550 6250
Wire Wire Line
	9850 6550 9850 6250
Wire Wire Line
	10250 6550 10250 6250
Wire Wire Line
	9100 6500 9100 6250
Wire Wire Line
	8800 6500 8800 6250
Text Notes 8650 5150 0    50   ~ 0
Status LEDs
Wire Notes Line
	8650 5150 10450 5150
Wire Notes Line
	10450 6700 8650 6700
Wire Notes Line
	8650 6700 8650 5050
Wire Notes Line
	8650 5050 10450 5050
Wire Notes Line
	10450 5050 10450 6700
Text Notes 850  7900 0    50   ~ 0
5V\nRUN/HOLD\nSIGN\nNC\nNC\nOVER RANGE\nSTROBE
Text Notes 1600 7900 2    50   ~ 0
CLK\nB8\nB4\nB2\nB1\nGND\nD5
Text Notes 800  7900 2    50   ~ 0
1\n2\n3\n4\n5\n6\n7
Text Notes 1650 7900 0    50   ~ 0
14\n13\n12\n11\n10\n9\n8
Text Notes 700  7900 2    50   ~ 0
2\n4\n6\n8\n10\n12\n14
Text Notes 1800 7900 0    50   ~ 0
1\n3\n5\n7\n9\n11\n13
Wire Notes Line
	1900 7900 600  7900
Wire Notes Line
	1800 7240 700  7240
Wire Notes Line
	700  7245 700  7900
Wire Notes Line
	1800 7245 1800 7900
Wire Notes Line
	600  7420 1900 7420
Wire Notes Line
	1900 7500 600  7500
Wire Notes Line
	600  7580 1900 7580
Wire Notes Line
	1900 7660 600  7660
Wire Notes Line
	600  7740 1900 7740
Wire Notes Line
	1900 7830 600  7830
Text Notes 1570 7320 2    50   ~ 0
Keithley IC Socket
Wire Notes Line
	1640 7330 1640 7900
Wire Notes Line
	800  7330 800  7900
Text Notes 1480 7230 2    50   ~ 0
Ribbon Cable
Wire Notes Line
	800  7330 1640 7330
Wire Notes Line
	600  7900 600  7150
Wire Notes Line
	600  7150 1900 7150
Wire Notes Line
	1900 7150 1900 7900
Wire Notes Line
	1370 7910 1370 7330
$Comp
L Device:R_Pack04 RN2
U 1 1 5C66E3D4
P 2550 7450
F 0 "RN2" V 2250 7450 50  0000 C CNN
F 1 "10k" V 2750 7450 50  0000 C CNN
F 2 "R_Array_Convex:YC324-JK-0710KL" V 2825 7450 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Yageo%20PDFs/YC102-358,TC122-164_Series_DS.pdf" H 2550 7450 50  0001 C CNN
F 4 "RES ARRAY 4 RES 10K OHM 2012" H 2550 7450 50  0001 C CNN "Description"
F 5 "Yageo" H 2550 7450 50  0001 C CNN "Manufacture"
F 6 "YC324-JK-0710KL" H 2550 7450 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 2550 7450 50  0001 C CNN "Supplier"
F 8 "YC324J-10KCT-ND" H 2550 7450 50  0001 C CNN "Supplier Part Number"
	1    2550 7450
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5C68020E
P 5300 5950
F 0 "H1" H 5300 6200 50  0000 C CNN
F 1 "M3" H 5300 6125 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 5300 5950 50  0001 C CNN
F 3 "~" H 5300 5950 50  0001 C CNN
	1    5300 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5C680CDB
P 5900 6250
F 0 "#PWR018" H 5900 6000 50  0001 C CNN
F 1 "GND" H 5900 6100 50  0000 C CNN
F 2 "" H 5900 6250 50  0001 C CNN
F 3 "" H 5900 6250 50  0001 C CNN
	1    5900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6050 5300 6150
Wire Wire Line
	5300 6150 5700 6150
Wire Wire Line
	6500 6150 6500 6050
Wire Wire Line
	6100 6050 6100 6150
Connection ~ 6100 6150
Wire Wire Line
	6100 6150 6500 6150
Wire Wire Line
	5700 6050 5700 6150
Connection ~ 5700 6150
Wire Wire Line
	5700 6150 5900 6150
Wire Wire Line
	5900 6250 5900 6150
Connection ~ 5900 6150
Wire Wire Line
	5900 6150 6100 6150
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5C6B7AB1
P 5700 5950
F 0 "H2" H 5700 6200 50  0000 C CNN
F 1 "M3" H 5700 6125 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 5700 5950 50  0001 C CNN
F 3 "~" H 5700 5950 50  0001 C CNN
	1    5700 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5C6B7B0F
P 6100 5950
F 0 "H3" H 6100 6200 50  0000 C CNN
F 1 "M3" H 6100 6125 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 6100 5950 50  0001 C CNN
F 3 "~" H 6100 5950 50  0001 C CNN
	1    6100 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5C6B7B6B
P 6500 5950
F 0 "H4" H 6500 6200 50  0000 C CNN
F 1 "M3" H 6500 6125 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 6500 5950 50  0001 C CNN
F 3 "~" H 6500 5950 50  0001 C CNN
	1    6500 5950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C804C0D
P 5100 7450
F 0 "#FLG0101" H 5100 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5100 7600 50  0000 C CNN
F 2 "" H 5100 7450 50  0001 C CNN
F 3 "~" H 5100 7450 50  0001 C CNN
	1    5100 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0101
U 1 1 5C804D47
P 5100 7500
F 0 "#PWR0101" H 5100 7250 50  0001 C CNN
F 1 "GNDA" H 5100 7350 50  0000 C CNN
F 2 "" H 5100 7500 50  0001 C CNN
F 3 "" H 5100 7500 50  0001 C CNN
	1    5100 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7500 5100 7450
$Comp
L power:+5V #PWR0102
U 1 1 5C830718
P 5500 7500
F 0 "#PWR0102" H 5500 7350 50  0001 C CNN
F 1 "+5V" H 5500 7640 50  0000 C CNN
F 2 "" H 5500 7500 50  0001 C CNN
F 3 "" H 5500 7500 50  0001 C CNN
	1    5500 7500
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C84C9A6
P 5500 7450
F 0 "#FLG0102" H 5500 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 7600 50  0000 C CNN
F 2 "" H 5500 7450 50  0001 C CNN
F 3 "~" H 5500 7450 50  0001 C CNN
	1    5500 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7450 5500 7500
$Comp
L Mechanical:MountingHole H5
U 1 1 5C6C1140
P 6900 5900
F 0 "H5" H 6900 6100 50  0000 C CNN
F 1 "M3_RA" H 6900 6025 50  0000 C CNN
F 2 "Terminal_Keystone:Keystone_Screw-Terminal_7761_RightAngle" H 6900 5900 50  0001 C CNN
F 3 "http://www.keyelco.com/product-pdf.cfm?p=3928" H 6900 5900 50  0001 C CNN
F 4 "TERM SCREW M3 4 PIN PCB RA" H 6900 5900 50  0001 C CNN "Description"
F 5 "Keystone Electronics" H 6900 5900 50  0001 C CNN "Manufacture"
F 6 "7761" H 6900 5900 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 6900 5900 50  0001 C CNN "Supplier"
F 8 "36-7761-ND" H 6900 5900 50  0001 C CNN "Supplier Part Number"
	1    6900 5900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5C6C2A25
P 7300 5900
F 0 "H6" H 7300 6100 50  0000 C CNN
F 1 "M3_RA" H 7300 6025 50  0000 C CNN
F 2 "Terminal_Keystone:Keystone_Screw-Terminal_7761_RightAngle" H 7300 5900 50  0001 C CNN
F 3 "http://www.keyelco.com/product-pdf.cfm?p=3928" H 7300 5900 50  0001 C CNN
F 4 "TERM SCREW M3 4 PIN PCB RA" H 7300 5900 50  0001 C CNN "Description"
F 5 "Keystone Electronics" H 7300 5900 50  0001 C CNN "Manufacture"
F 6 "7761" H 7300 5900 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H 7300 5900 50  0001 C CNN "Supplier"
F 8 "36-7761-ND" H 7300 5900 50  0001 C CNN "Supplier Part Number"
	1    7300 5900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5C6FA2BD
P 8350 4050
F 0 "JP1" V 8250 3950 50  0000 C CNN
F 1 "RATE" H 8350 4160 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8350 4050 50  0001 C CNN
F 3 "~" H 8350 4050 50  0001 C CNN
	1    8350 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 4050 8200 4050
$Comp
L Device:R R8
U 1 1 5C7417CF
P 8350 3600
F 0 "R8" V 8430 3600 50  0000 C CNN
F 1 "1k" V 8350 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8280 3600 50  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 8350 3600 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0603" H -1900 -2150 50  0001 C CNN "Description"
F 5 "Yageo" H -1900 -2150 50  0001 C CNN "Manufacture"
F 6 "RC0603JR-071KL" H -1900 -2150 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H -1900 -2150 50  0001 C CNN "Supplier"
F 8 "311-1.0KGRCT-ND" H -1900 -2150 50  0001 C CNN "Supplier Part Number"
	1    8350 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C7418A1
P 8350 4500
F 0 "R9" V 8430 4500 50  0000 C CNN
F 1 "1k" V 8350 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8280 4500 50  0001 C CNN
F 3 "http://www.yageo.com/documents/recent/PYu-RC_Group_51_RoHS_L_10.pdf" H 8350 4500 50  0001 C CNN
F 4 "RES SMD 1K OHM 5% 1/10W 0603" H -1900 -1250 50  0001 C CNN "Description"
F 5 "Yageo" H -1900 -1250 50  0001 C CNN "Manufacture"
F 6 "RC0603JR-071KL" H -1900 -1250 50  0001 C CNN "Mfg Part Number"
F 7 "Digi-Key" H -1900 -1250 50  0001 C CNN "Supplier"
F 8 "311-1.0KGRCT-ND" H -1900 -1250 50  0001 C CNN "Supplier Part Number"
	1    8350 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 5C741A3C
P 8350 3400
F 0 "#PWR0103" H 8350 3250 50  0001 C CNN
F 1 "+3V3" H 8350 3540 50  0000 C CNN
F 2 "" H 8350 3400 50  0001 C CNN
F 3 "" H 8350 3400 50  0001 C CNN
	1    8350 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C741A9B
P 8350 4700
F 0 "#PWR0104" H 8350 4450 50  0001 C CNN
F 1 "GND" H 8350 4550 50  0000 C CNN
F 2 "" H 8350 4700 50  0001 C CNN
F 3 "" H 8350 4700 50  0001 C CNN
	1    8350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4700 8350 4650
Wire Wire Line
	8350 3800 8350 3750
Wire Wire Line
	8350 3450 8350 3400
Wire Wire Line
	8350 4350 8350 4300
Text Label 8050 4050 2    50   ~ 0
RATE
$EndSCHEMATC
