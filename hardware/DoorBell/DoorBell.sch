EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DoorBelll"
Date "2021-01-23"
Rev "1"
Comp "mtkaalund.dk"
Comment1 "Created by Michael Torp Kaalund"
Comment2 "Uses DFPlayer Mini https://www.dfrobot.com/product-1121.html"
Comment3 "Uses Arduino Pro Mini https://store.arduino.cc/arduino-pro-mini"
Comment4 ""
$EndDescr
Text Label 10350 1500 1    60   ~ 0
RAW
Text Label 9550 1000 1    60   ~ 0
DTR
Text Label 9750 1000 1    60   ~ 0
0(Rx)
Text Label 9000 1600 0    60   ~ 0
1(Tx)
Text Label 9000 1700 0    60   ~ 0
0(Rx)
Text Label 9000 1800 0    60   ~ 0
Reset
Text Label 10500 1800 0    60   ~ 0
Reset
Text Label 9000 2000 0    60   ~ 0
2
Text Label 9000 2100 0    60   ~ 0
3(**)
Text Label 9000 2200 0    60   ~ 0
4
Text Label 9000 2300 0    60   ~ 0
5(**)
Text Label 9000 2400 0    60   ~ 0
6(**)
Text Label 9000 2500 0    60   ~ 0
7
Text Label 9000 2600 0    60   ~ 0
8
Text Label 9000 2700 0    60   ~ 0
9(**)
Text Label 10500 2700 0    60   ~ 0
10(**/SS)
Text Label 10500 2600 0    60   ~ 0
11(**/MOSI)
Text Label 10500 2500 0    60   ~ 0
12(MISO)
Text Label 10500 2400 0    60   ~ 0
13(SCK)
Text Label 10500 2300 0    60   ~ 0
A0
Text Label 10500 2200 0    60   ~ 0
A1
Text Label 10500 2100 0    60   ~ 0
A2
Text Label 10500 2000 0    60   ~ 0
A3
Text Label 9650 3200 3    60   ~ 0
A4
Text Label 9550 3200 3    60   ~ 0
A5
Text Notes 8550 575  0    60   ~ 0
Shield Arduino Pro Mini \n
Wire Notes Line
	8525 650  9700 650 
Wire Notes Line
	9700 650  9700 475 
Text Label 9950 3200 3    60   ~ 0
A7
Text Label 10050 3200 3    60   ~ 0
A6
$Comp
L Connector_Generic:Conn_01x02 P3
U 1 1 56D74FB3
P 9550 3000
F 0 "P3" H 9550 3150 50  0000 C CNN
F 1 "ADC" V 9650 3000 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x02" H 9550 3000 50  0001 C CNN
F 3 "" H 9550 3000 50  0000 C CNN
	1    9550 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 P5
U 1 1 56D7505C
P 9950 3000
F 0 "P5" H 9950 3150 50  0000 C CNN
F 1 "ADC" V 10050 3000 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x02" H 9950 3000 50  0001 C CNN
F 3 "" H 9950 3000 50  0000 C CNN
	1    9950 3000
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D75238
P 9750 1200
F 0 "P2" H 9750 1550 50  0000 C CNN
F 1 "COM" V 9850 1200 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x06" H 9750 1200 50  0001 C CNN
F 3 "" H 9750 1200 50  0000 C CNN
	1    9750 1200
	0    -1   1    0   
$EndComp
Text Label 9650 1000 1    60   ~ 0
1(Tx)
$Comp
L power:GND #PWR01
U 1 1 56D7539A
P 10200 1000
F 0 "#PWR01" H 10200 750 50  0001 C CNN
F 1 "GND" H 10200 850 50  0000 C CNN
F 2 "" H 10200 1000 50  0000 C CNN
F 3 "" H 10200 1000 50  0000 C CNN
	1    10200 1000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 56D753B8
P 9850 1000
F 0 "#PWR02" H 9850 850 50  0001 C CNN
F 1 "VCC" H 9850 1150 50  0000 C CNN
F 2 "" H 9850 1000 50  0000 C CNN
F 3 "" H 9850 1000 50  0000 C CNN
	1    9850 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 P1
U 1 1 56D754D1
P 9550 2100
F 0 "P1" H 9550 2750 50  0000 C CNN
F 1 "Digital" V 9650 2100 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x12" H 9550 2100 50  0001 C CNN
F 3 "" H 9550 2100 50  0000 C CNN
	1    9550 2100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 P4
U 1 1 56D755F3
P 10050 2100
F 0 "P4" H 10050 2750 50  0000 C CNN
F 1 "Analog" V 10150 2100 50  0000 C CNN
F 2 "Socket_Arduino_Pro_Mini:Socket_Strip_Arduino_1x12" H 10050 2100 50  0001 C CNN
F 3 "" H 10050 2100 50  0000 C CNN
	1    10050 2100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D756B8
P 9250 2800
F 0 "#PWR03" H 9250 2550 50  0001 C CNN
F 1 "GND" H 9250 2650 50  0000 C CNN
F 2 "" H 9250 2800 50  0000 C CNN
F 3 "" H 9250 2800 50  0000 C CNN
	1    9250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1900 9250 1900
Wire Wire Line
	9250 1900 9250 2800
Wire Wire Line
	9350 1600 9000 1600
Wire Wire Line
	9000 1700 9350 1700
Wire Wire Line
	9350 1800 9000 1800
Wire Wire Line
	9000 2000 9350 2000
Wire Wire Line
	9350 2100 9000 2100
Wire Wire Line
	9350 2200 9000 2200
Wire Wire Line
	9000 2300 9350 2300
Wire Wire Line
	9350 2400 9000 2400
Wire Wire Line
	9000 2500 9350 2500
Wire Wire Line
	9350 2600 9000 2600
Wire Wire Line
	9350 2700 9000 2700
Wire Wire Line
	10350 1500 10350 1600
Wire Wire Line
	10350 1600 10250 1600
Wire Wire Line
	10250 1700 10350 1700
Wire Wire Line
	10350 1700 10350 2800
$Comp
L power:GND #PWR04
U 1 1 56D75A03
P 10350 2800
F 0 "#PWR04" H 10350 2550 50  0001 C CNN
F 1 "GND" H 10350 2650 50  0000 C CNN
F 2 "" H 10350 2800 50  0000 C CNN
F 3 "" H 10350 2800 50  0000 C CNN
	1    10350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1900 10450 1900
Wire Wire Line
	10450 1900 10450 1500
$Comp
L power:VCC #PWR05
U 1 1 56D75A9D
P 10450 1500
F 0 "#PWR05" H 10450 1350 50  0001 C CNN
F 1 "VCC" H 10450 1650 50  0000 C CNN
F 2 "" H 10450 1500 50  0000 C CNN
F 3 "" H 10450 1500 50  0000 C CNN
	1    10450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1800 10500 1800
Wire Wire Line
	10500 2000 10250 2000
Wire Wire Line
	10250 2100 10500 2100
Wire Wire Line
	10500 2200 10250 2200
Wire Wire Line
	10500 2400 10250 2400
Wire Wire Line
	10250 2500 10500 2500
Wire Wire Line
	10250 2700 10500 2700
Wire Notes Line
	11200 3400 8500 3400
Wire Notes Line
	8500 3400 8500 500 
Text Notes 9650 1600 0    60   ~ 0
1
Wire Wire Line
	9950 1000 9950 950 
Wire Wire Line
	9950 950  10050 950 
Wire Wire Line
	10050 950  10050 1000
Wire Wire Line
	10050 950  10200 950 
Wire Wire Line
	10200 950  10200 1000
Connection ~ 10050 950 
$Comp
L Switch:SW_Push SW1
U 1 1 600BD9B9
P 3400 900
F 0 "SW1" H 3400 1185 50  0000 C CNN
F 1 "DoorBell" H 3400 1094 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00001_1x02_P5.00mm_Horizontal" H 3400 1100 50  0001 C CNN
F 3 "~" H 3400 1100 50  0001 C CNN
	1    3400 900 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 600BEEC7
P 3400 1250
F 0 "SW2" H 3400 1535 50  0000 C CNN
F 1 "Volume Up" H 3400 1444 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00001_1x02_P5.00mm_Horizontal" H 3400 1450 50  0001 C CNN
F 3 "~" H 3400 1450 50  0001 C CNN
	1    3400 1250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 600BFFE5
P 3400 1600
F 0 "SW3" H 3400 1885 50  0000 C CNN
F 1 "Volume Down" H 3400 1794 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00001_1x02_P5.00mm_Horizontal" H 3400 1800 50  0001 C CNN
F 3 "~" H 3400 1800 50  0001 C CNN
	1    3400 1600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 600C0535
P 3400 1950
F 0 "SW4" H 3400 2235 50  0000 C CNN
F 1 "Select" H 3400 2144 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00001_1x02_P5.00mm_Horizontal" H 3400 2150 50  0001 C CNN
F 3 "~" H 3400 2150 50  0001 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 600C0ACD
P 3400 2300
F 0 "SW5" H 3400 2585 50  0000 C CNN
F 1 "Next" H 3400 2494 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00001_1x02_P5.00mm_Horizontal" H 3400 2500 50  0001 C CNN
F 3 "~" H 3400 2500 50  0001 C CNN
	1    3400 2300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 600C10F9
P 3400 2650
F 0 "SW6" H 3400 2935 50  0000 C CNN
F 1 "Prev" H 3400 2844 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00001_1x02_P5.00mm_Horizontal" H 3400 2850 50  0001 C CNN
F 3 "~" H 3400 2850 50  0001 C CNN
	1    3400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 600C5F33
P 3050 2700
F 0 "#PWR0101" H 3050 2450 50  0001 C CNN
F 1 "GND" H 3055 2527 50  0000 C CNN
F 2 "" H 3050 2700 50  0001 C CNN
F 3 "" H 3050 2700 50  0001 C CNN
	1    3050 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 600C6656
P 3050 2350
F 0 "#PWR0102" H 3050 2100 50  0001 C CNN
F 1 "GND" H 3055 2177 50  0000 C CNN
F 2 "" H 3050 2350 50  0001 C CNN
F 3 "" H 3050 2350 50  0001 C CNN
	1    3050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 600C6A51
P 3050 2000
F 0 "#PWR0103" H 3050 1750 50  0001 C CNN
F 1 "GND" H 3055 1827 50  0000 C CNN
F 2 "" H 3050 2000 50  0001 C CNN
F 3 "" H 3050 2000 50  0001 C CNN
	1    3050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 600C6C9E
P 3050 1650
F 0 "#PWR0104" H 3050 1400 50  0001 C CNN
F 1 "GND" H 3055 1477 50  0000 C CNN
F 2 "" H 3050 1650 50  0001 C CNN
F 3 "" H 3050 1650 50  0001 C CNN
	1    3050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 600C700B
P 3050 1300
F 0 "#PWR0105" H 3050 1050 50  0001 C CNN
F 1 "GND" H 3055 1127 50  0000 C CNN
F 2 "" H 3050 1300 50  0001 C CNN
F 3 "" H 3050 1300 50  0001 C CNN
	1    3050 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 600C71EE
P 3050 950
F 0 "#PWR0106" H 3050 700 50  0001 C CNN
F 1 "GND" H 3055 777 50  0000 C CNN
F 2 "" H 3050 950 50  0001 C CNN
F 3 "" H 3050 950 50  0001 C CNN
	1    3050 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2700 3050 2650
Wire Wire Line
	3050 2650 3200 2650
Wire Wire Line
	3050 2350 3050 2300
Wire Wire Line
	3050 2300 3200 2300
Wire Wire Line
	3050 2000 3050 1950
Wire Wire Line
	3050 1950 3200 1950
Wire Wire Line
	3050 1650 3050 1600
Wire Wire Line
	3050 1600 3200 1600
Wire Wire Line
	3050 1300 3050 1250
Wire Wire Line
	3050 1250 3200 1250
Wire Wire Line
	3050 950  3050 900 
Wire Wire Line
	3050 900  3200 900 
Wire Wire Line
	3600 900  3650 900 
Wire Wire Line
	3600 1250 3650 1250
Wire Wire Line
	3600 1600 3650 1600
Wire Wire Line
	3600 1950 3650 1950
Wire Wire Line
	3600 2300 3650 2300
Wire Wire Line
	3600 2650 3650 2650
Text GLabel 3900 900  2    50   Output ~ 0
Pin2
Text GLabel 9000 2000 0    50   Input ~ 0
Pin2
Text GLabel 9000 2100 0    50   Input ~ 0
Pin3
Text GLabel 3900 1250 2    50   Output ~ 0
Pin3
Text GLabel 3900 1600 2    50   Output ~ 0
Pin4
Text GLabel 9000 2200 0    50   Input ~ 0
Pin4
Text GLabel 3900 1950 2    50   Output ~ 0
Pin5
Text GLabel 9000 2300 0    50   Input ~ 0
Pin5
Text GLabel 9000 2400 0    50   Input ~ 0
Pin6
Text GLabel 9000 2500 0    50   Input ~ 0
Pin7
Text GLabel 3900 2300 2    50   Output ~ 0
Pin6
Text GLabel 3900 2650 2    50   Output ~ 0
Pin7
Text Notes 4150 3300 2    50   ~ 0
The inputs on the arduino are\nconfigured with internally pullup\nresistor. If not use external pullup\nresistors
$Comp
L Device:R R1
U 1 1 600D61D1
P 3800 800
F 0 "R1" V 3593 800 50  0000 C CNN
F 1 "1K" V 3684 800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 800 50  0001 C CNN
F 3 "~" H 3800 800 50  0001 C CNN
	1    3800 800 
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 600D6B86
P 3800 1150
F 0 "R2" V 3593 1150 50  0000 C CNN
F 1 "1K" V 3684 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 1150 50  0001 C CNN
F 3 "~" H 3800 1150 50  0001 C CNN
	1    3800 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 600D70FB
P 3800 1500
F 0 "R3" V 3593 1500 50  0000 C CNN
F 1 "1K" V 3684 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 1500 50  0001 C CNN
F 3 "~" H 3800 1500 50  0001 C CNN
	1    3800 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 600D776B
P 3800 1850
F 0 "R4" V 3593 1850 50  0000 C CNN
F 1 "1K" V 3684 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 1850 50  0001 C CNN
F 3 "~" H 3800 1850 50  0001 C CNN
	1    3800 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 600D7CA1
P 3800 2200
F 0 "R5" V 3593 2200 50  0000 C CNN
F 1 "1K" V 3684 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 2200 50  0001 C CNN
F 3 "~" H 3800 2200 50  0001 C CNN
	1    3800 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 600D80E3
P 3800 2550
F 0 "R6" V 3593 2550 50  0000 C CNN
F 1 "1K" V 3684 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 2550 50  0001 C CNN
F 3 "~" H 3800 2550 50  0001 C CNN
	1    3800 2550
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 600D87E2
P 4100 800
F 0 "#PWR0107" H 4100 650 50  0001 C CNN
F 1 "VCC" H 4100 950 50  0000 C CNN
F 2 "" H 4100 800 50  0000 C CNN
F 3 "" H 4100 800 50  0000 C CNN
	1    4100 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0108
U 1 1 600D974E
P 4100 1150
F 0 "#PWR0108" H 4100 1000 50  0001 C CNN
F 1 "VCC" H 4100 1300 50  0000 C CNN
F 2 "" H 4100 1150 50  0000 C CNN
F 3 "" H 4100 1150 50  0000 C CNN
	1    4100 1150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 600D9DF9
P 4100 1500
F 0 "#PWR0109" H 4100 1350 50  0001 C CNN
F 1 "VCC" H 4100 1650 50  0000 C CNN
F 2 "" H 4100 1500 50  0000 C CNN
F 3 "" H 4100 1500 50  0000 C CNN
	1    4100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 600DA3B6
P 4100 1850
F 0 "#PWR0110" H 4100 1700 50  0001 C CNN
F 1 "VCC" H 4100 2000 50  0000 C CNN
F 2 "" H 4100 1850 50  0000 C CNN
F 3 "" H 4100 1850 50  0000 C CNN
	1    4100 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 600DA7D6
P 4100 2200
F 0 "#PWR0111" H 4100 2050 50  0001 C CNN
F 1 "VCC" H 4100 2350 50  0000 C CNN
F 2 "" H 4100 2200 50  0000 C CNN
F 3 "" H 4100 2200 50  0000 C CNN
	1    4100 2200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 600DAC60
P 4100 2550
F 0 "#PWR0112" H 4100 2400 50  0001 C CNN
F 1 "VCC" H 4100 2700 50  0000 C CNN
F 2 "" H 4100 2550 50  0000 C CNN
F 3 "" H 4100 2550 50  0000 C CNN
	1    4100 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2550 4100 2550
Wire Wire Line
	3950 2200 4100 2200
Wire Wire Line
	3950 1850 4100 1850
Wire Wire Line
	3950 1500 4100 1500
Wire Wire Line
	3950 1150 4100 1150
Wire Wire Line
	3950 800  4100 800 
Wire Wire Line
	3650 800  3650 900 
Connection ~ 3650 900 
Wire Wire Line
	3650 900  3900 900 
Wire Wire Line
	3650 1150 3650 1250
Connection ~ 3650 1250
Wire Wire Line
	3650 1250 3900 1250
Wire Wire Line
	3650 1500 3650 1600
Connection ~ 3650 1600
Wire Wire Line
	3650 1600 3900 1600
Wire Wire Line
	3650 1850 3650 1950
Connection ~ 3650 1950
Wire Wire Line
	3650 1950 3900 1950
Wire Wire Line
	3650 2200 3650 2300
Connection ~ 3650 2300
Wire Wire Line
	3650 2300 3900 2300
Wire Wire Line
	3650 2550 3650 2650
Connection ~ 3650 2650
Wire Wire Line
	3650 2650 3900 2650
Wire Notes Line
	4250 550  4250 3350
Wire Notes Line
	2750 3350 2750 550 
$Comp
L Device:D D1
U 1 1 600F00DB
P 4600 1650
F 0 "D1" V 4646 1570 50  0000 R CNN
F 1 "1N4148" V 4555 1570 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4600 1650 50  0001 C CNN
F 3 "~" H 4600 1650 50  0001 C CNN
	1    4600 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 600F5D3E
P 4800 1250
F 0 "#PWR0113" H 4800 1000 50  0001 C CNN
F 1 "GND" H 4800 1100 50  0000 C CNN
F 2 "" H 4800 1250 50  0000 C CNN
F 3 "" H 4800 1250 50  0000 C CNN
	1    4800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1250 4800 1150
Text GLabel 10200 1450 1    50   Input ~ 0
RAW
Wire Wire Line
	10200 1450 10200 1500
Wire Wire Line
	10200 1500 10350 1500
Text GLabel 4700 1900 2    50   Output ~ 0
RAW
Wire Wire Line
	4600 1150 4600 1500
Wire Wire Line
	4700 1900 4600 1900
Wire Wire Line
	4600 1900 4600 1800
$Comp
L Device:R R7
U 1 1 601311AA
P 4600 2200
F 0 "R7" H 4530 2154 50  0000 R CNN
F 1 "10K" H 4530 2245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4530 2200 50  0001 C CNN
F 3 "~" H 4600 2200 50  0001 C CNN
	1    4600 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 60131DD8
P 4600 2650
F 0 "R8" H 4530 2604 50  0000 R CNN
F 1 "7K" H 4530 2695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4530 2650 50  0001 C CNN
F 3 "~" H 4600 2650 50  0001 C CNN
	1    4600 2650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 601322F3
P 4600 2950
F 0 "#PWR06" H 4600 2700 50  0001 C CNN
F 1 "GND" H 4600 2800 50  0000 C CNN
F 2 "" H 4600 2950 50  0000 C CNN
F 3 "" H 4600 2950 50  0000 C CNN
	1    4600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2950 4600 2800
Wire Wire Line
	4600 2500 4600 2400
Wire Wire Line
	4600 2050 4600 1900
Connection ~ 4600 1900
Connection ~ 4600 2400
Wire Wire Line
	4600 2400 4600 2350
Text GLabel 5100 2400 2    50   Output ~ 0
PWR_MON
Text GLabel 10800 2250 2    50   Input ~ 0
PWR_MON
Wire Wire Line
	10800 2250 10700 2250
Wire Wire Line
	10700 2250 10700 2300
Wire Wire Line
	10250 2300 10700 2300
$Comp
L Device:C C1
U 1 1 6013E3B2
P 4900 2650
F 0 "C1" H 5015 2696 50  0000 L CNN
F 1 "100n" H 5015 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 4938 2500 50  0001 C CNN
F 3 "~" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2400 4900 2400
Wire Wire Line
	4900 2500 4900 2400
Connection ~ 4900 2400
Wire Wire Line
	4900 2400 5100 2400
$Comp
L power:GND #PWR07
U 1 1 601435F3
P 4900 2950
F 0 "#PWR07" H 4900 2700 50  0001 C CNN
F 1 "GND" H 4900 2800 50  0000 C CNN
F 2 "" H 4900 2950 50  0000 C CNN
F 3 "" H 4900 2950 50  0000 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2950 4900 2800
Text Notes 5000 1550 0    50   ~ 0
Power input\n\nPWR_MON = RAW * ( R8 / ( R8 + R7 ) ) \nRAW is maximum 12V and chould give \nabout 4.94 V out to PWR_MON.\nRAW should be between 7 - 12 Vdc
Wire Notes Line
	6650 550  6650 3350
Wire Notes Line
	2750 550  6650 550 
Text Notes 5050 2000 0    50   ~ 0
ADC = Vin * ( 1024 / Vref )\nArduino Vref is 5V\nSo at 12V input the ADC \nvalue should be\nADC = (5 / 5) * 1024 = 1024
Text Notes 5300 3000 0    50   ~ 0
Alternative calculation the \nRAW value from the ADC\ncan be done with this formula\n        ADC * Vref * (R8 + R7) \nRAW = ————————————————\n          ( 1024 * R8 )
$Comp
L DFPlayerMini:DFPLAYER_MINI U1
U 1 1 601514AE
P 8750 4500
F 0 "U1" H 8750 5187 60  0000 C CNN
F 1 "DFPLAYER_MINI" H 8750 5081 60  0000 C CNN
F 2 "Arduino:DFPlayer_V2" H 8750 4500 60  0001 C CNN
F 3 "" H 8750 4500 60  0000 C CNN
	1    8750 4500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 601531B2
P 8050 4050
F 0 "#PWR09" H 8050 3900 50  0001 C CNN
F 1 "VCC" H 8050 4200 50  0000 C CNN
F 2 "" H 8050 4050 50  0000 C CNN
F 3 "" H 8050 4050 50  0000 C CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 601538BC
P 7950 4850
F 0 "#PWR08" H 7950 4600 50  0001 C CNN
F 1 "GND" H 7950 4700 50  0000 C CNN
F 2 "" H 7950 4850 50  0000 C CNN
F 3 "" H 7950 4850 50  0000 C CNN
	1    7950 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60154200
P 9600 4850
F 0 "#PWR010" H 9600 4600 50  0001 C CNN
F 1 "GND" H 9600 4700 50  0000 C CNN
F 2 "" H 9600 4850 50  0000 C CNN
F 3 "" H 9600 4850 50  0000 C CNN
	1    9600 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4050 8050 4150
Wire Wire Line
	8050 4150 8150 4150
Wire Wire Line
	7950 4850 7950 4750
Wire Wire Line
	7950 4750 8150 4750
Wire Wire Line
	9600 4850 9600 4750
Wire Wire Line
	9600 4750 9350 4750
$Comp
L Device:R R9
U 1 1 6015CCE0
P 7800 4250
F 0 "R9" V 7593 4250 50  0000 C CNN
F 1 "1K" V 7684 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7730 4250 50  0001 C CNN
F 3 "~" H 7800 4250 50  0001 C CNN
	1    7800 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 4250 8150 4250
Text GLabel 7500 4250 0    50   Input ~ 0
DF_RX
Text GLabel 7500 4350 0    50   Output ~ 0
DF_TX
Wire Wire Line
	7500 4350 8150 4350
Wire Wire Line
	7500 4250 7650 4250
Wire Wire Line
	10500 2700 10500 2850
Wire Wire Line
	10600 2600 10600 2850
Wire Wire Line
	10250 2600 10600 2600
Text GLabel 10600 2850 3    50   Output ~ 0
DF_RX
Text GLabel 10500 2850 3    50   Input ~ 0
DF_TX
Wire Wire Line
	8150 4450 7900 4450
Wire Wire Line
	8150 4550 7900 4550
Wire Wire Line
	8150 4650 7900 4650
Wire Wire Line
	9350 4150 9550 4150
Wire Wire Line
	9350 4450 9550 4450
Wire Wire Line
	9350 4550 9550 4550
Wire Wire Line
	9350 4650 9550 4650
Wire Wire Line
	9350 4850 9450 4850
Wire Wire Line
	9450 4850 9450 4900
Wire Wire Line
	8150 4850 8100 4850
Wire Wire Line
	8100 4850 8100 4900
Text GLabel 7900 4650 0    50   Output ~ 0
DF_SPK+
Text GLabel 8100 4900 3    50   Input ~ 0
DF_SPK-
Text GLabel 7900 4450 0    50   Output ~ 0
DF_DAC_R
Text GLabel 7900 4550 0    50   Output ~ 0
DF_DAC_L
Text GLabel 9450 4900 3    50   Input ~ 0
DF_IO_1
Text GLabel 9550 4650 2    50   Input ~ 0
DF_IO_2
Text GLabel 9550 4550 2    50   Input ~ 0
DF_ADKEY_1
Text GLabel 9550 4450 2    50   Input ~ 0
DF_ADKEY_2
$Comp
L Connector:USB_A J2
U 1 1 601943B3
P 10500 4350
F 0 "J2" H 10270 4247 50  0000 R CNN
F 1 "USB_A" H 10270 4338 50  0000 R CNN
F 2 "Connector_USB:USB_A_CONNFLY_DS1095-WNR0" H 10650 4300 50  0001 C CNN
F 3 " ~" H 10650 4300 50  0001 C CNN
	1    10500 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 4350 10200 4350
Wire Wire Line
	9350 4250 10200 4250
$Comp
L power:GND #PWR012
U 1 1 601A937E
P 10300 3850
F 0 "#PWR012" H 10300 3600 50  0001 C CNN
F 1 "GND" H 10300 3700 50  0000 C CNN
F 2 "" H 10300 3850 50  0000 C CNN
F 3 "" H 10300 3850 50  0000 C CNN
	1    10300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 3850 10300 3800
Wire Wire Line
	10300 3800 10500 3800
Wire Wire Line
	10500 3800 10500 3950
$Comp
L power:VCC #PWR011
U 1 1 601AD941
P 10150 4550
F 0 "#PWR011" H 10150 4400 50  0001 C CNN
F 1 "VCC" H 10150 4700 50  0000 C CNN
F 2 "" H 10150 4550 50  0000 C CNN
F 3 "" H 10150 4550 50  0000 C CNN
	1    10150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4550 10200 4550
Wire Wire Line
	10600 3950 10600 3800
Wire Wire Line
	10600 3800 10500 3800
Connection ~ 10500 3800
$Comp
L Device:LED D2
U 1 1 601BA2F5
P 9550 4000
F 0 "D2" V 9589 3882 50  0000 R CNN
F 1 "LED" V 9498 3882 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 9550 4000 50  0001 C CNN
F 3 "~" H 9550 4000 50  0001 C CNN
	1    9550 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 601BB230
P 9350 3800
F 0 "R10" V 9143 3800 50  0000 C CNN
F 1 "100" V 9234 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9280 3800 50  0001 C CNN
F 3 "~" H 9350 3800 50  0001 C CNN
	1    9350 3800
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 601BBE99
P 9150 3750
F 0 "#PWR0114" H 9150 3600 50  0001 C CNN
F 1 "VCC" H 9150 3900 50  0000 C CNN
F 2 "" H 9150 3750 50  0000 C CNN
F 3 "" H 9150 3750 50  0000 C CNN
	1    9150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3750 9150 3800
Wire Wire Line
	9150 3800 9200 3800
Wire Wire Line
	9500 3800 9550 3800
Wire Wire Line
	9550 3800 9550 3850
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 601C7474
P 6800 900
F 0 "J3" H 6718 575 50  0000 C CNN
F 1 "Speaker" H 6718 666 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6800 900 50  0001 C CNN
F 3 "~" H 6800 900 50  0001 C CNN
	1    6800 900 
	-1   0    0    1   
$EndComp
Text GLabel 7150 800  2    50   Input ~ 0
DF_SPK+
Text GLabel 7150 900  2    50   Output ~ 0
DF_SPK-
Wire Wire Line
	7150 800  7000 800 
Wire Wire Line
	7150 900  7000 900 
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 601DDB5C
P 8300 800
F 0 "J5" H 8218 275 50  0000 C CNN
F 1 "DFPlayerIO" H 8218 366 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8300 800 50  0001 C CNN
F 3 "~" H 8300 800 50  0001 C CNN
	1    8300 800 
	1    0    0    -1  
$EndComp
Text GLabel 7900 1100 0    50   Input ~ 0
DF_DAC_R
Text GLabel 7900 1000 0    50   Input ~ 0
DF_DAC_L
Wire Wire Line
	7900 1100 8100 1100
Wire Wire Line
	7900 1000 8100 1000
Text GLabel 7900 900  0    50   Output ~ 0
DF_IO_1
Wire Wire Line
	7900 900  8100 900 
Text GLabel 7900 800  0    50   Output ~ 0
DF_IO_2
Text GLabel 7900 700  0    50   Output ~ 0
DF_ADKEY_1
Text GLabel 7900 600  0    50   Output ~ 0
DF_ADKEY_2
Wire Wire Line
	7900 800  8100 800 
Wire Wire Line
	7900 700  8100 700 
Wire Wire Line
	7900 600  8100 600 
$Comp
L Connector_Generic:Conn_01x14 J4
U 1 1 60212339
P 6850 2250
F 0 "J4" H 6768 1325 50  0000 C CNN
F 1 "ARDUINO_IO" H 6768 1416 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x14_P2.54mm_Vertical" H 6850 2250 50  0001 C CNN
F 3 "~" H 6850 2250 50  0001 C CNN
	1    6850 2250
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 6021AA0C
P 7400 1550
F 0 "#PWR013" H 7400 1400 50  0001 C CNN
F 1 "VCC" H 7400 1700 50  0000 C CNN
F 2 "" H 7400 1550 50  0000 C CNN
F 3 "" H 7400 1550 50  0000 C CNN
	1    7400 1550
	1    0    0    -1  
$EndComp
Text Label 7400 1750 2    50   ~ 0
1(Tx)
Text Label 7400 1850 2    50   ~ 0
0(Rx)
Text Label 7400 2050 2    50   ~ 0
8
Text Label 7400 2150 2    50   ~ 0
9(**)
Text Label 7400 2650 2    50   ~ 0
A3
Text Label 7400 2550 2    50   ~ 0
A2
Text Label 7400 2450 2    50   ~ 0
A1
Text Label 7400 2250 2    50   ~ 0
12(MISO)
Wire Wire Line
	7050 2150 7400 2150
Wire Wire Line
	7050 2250 7400 2250
Wire Wire Line
	7050 2350 7400 2350
Wire Wire Line
	7050 2450 7400 2450
Wire Wire Line
	7050 2550 7400 2550
Wire Wire Line
	7050 2650 7400 2650
Wire Wire Line
	7050 2850 7400 2850
Wire Wire Line
	7050 2050 7400 2050
Wire Wire Line
	7050 1950 7400 1950
Wire Wire Line
	7050 1850 7400 1850
Wire Wire Line
	7050 1750 7400 1750
Text Label 7400 2350 2    50   ~ 0
13(SCK)
Text Label 7400 1950 2    50   ~ 0
Reset
Wire Wire Line
	7050 1550 7400 1550
Wire Wire Line
	7050 1650 7550 1650
$Comp
L power:GND #PWR015
U 1 1 602D4FFA
P 7550 1650
F 0 "#PWR015" H 7550 1400 50  0001 C CNN
F 1 "GND" H 7550 1500 50  0000 C CNN
F 2 "" H 7550 1650 50  0000 C CNN
F 3 "" H 7550 1650 50  0000 C CNN
	1    7550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 602D575E
P 7400 2850
F 0 "#PWR014" H 7400 2600 50  0001 C CNN
F 1 "GND" H 7400 2700 50  0000 C CNN
F 2 "" H 7400 2850 50  0000 C CNN
F 3 "" H 7400 2850 50  0000 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2750 7550 2750
$Comp
L power:VCC #PWR016
U 1 1 602DC7FB
P 7550 2750
F 0 "#PWR016" H 7550 2600 50  0001 C CNN
F 1 "VCC" H 7550 2900 50  0000 C CNN
F 2 "" H 7550 2750 50  0000 C CNN
F 3 "" H 7550 2750 50  0000 C CNN
	1    7550 2750
	1    0    0    -1  
$EndComp
Wire Notes Line
	2750 3350 8500 3350
Wire Notes Line
	6650 3100 8500 3100
Text Notes 7800 3300 2    100  ~ 0
I/O HEADERS
$Comp
L Connector:Barrel_Jack_Switch_Pin3Ring J1
U 1 1 603022FC
P 4700 850
F 0 "J1" V 4711 1030 50  0000 L CNN
F 1 "Barrel_Jack_Switch_Pin3Ring" V 4802 1030 50  0000 L CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 4750 810 50  0001 C CNN
F 3 "~" H 4750 810 50  0001 C CNN
	1    4700 850 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6031E771
P 5750 3600
F 0 "H1" H 5850 3649 50  0000 L CNN
F 1 "MountingHole_Pad" H 5850 3558 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.5mm_Pad_Via" H 5750 3600 50  0001 C CNN
F 3 "~" H 5750 3600 50  0001 C CNN
	1    5750 3600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6031F9C0
P 5750 4050
F 0 "H2" H 5850 4099 50  0000 L CNN
F 1 "MountingHole_Pad" H 5850 4008 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.5mm_Pad_Via" H 5750 4050 50  0001 C CNN
F 3 "~" H 5750 4050 50  0001 C CNN
	1    5750 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 603204AA
P 5750 4500
F 0 "H3" H 5850 4549 50  0000 L CNN
F 1 "MountingHole_Pad" H 5850 4458 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.5mm_Pad_Via" H 5750 4500 50  0001 C CNN
F 3 "~" H 5750 4500 50  0001 C CNN
	1    5750 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60320859
P 5750 4950
F 0 "H4" H 5850 4999 50  0000 L CNN
F 1 "MountingHole_Pad" H 5850 4908 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.5mm_Pad_Via" H 5750 4950 50  0001 C CNN
F 3 "~" H 5750 4950 50  0001 C CNN
	1    5750 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60320D86
P 5750 3700
F 0 "#PWR017" H 5750 3450 50  0001 C CNN
F 1 "GND" H 5750 3550 50  0000 C CNN
F 2 "" H 5750 3700 50  0000 C CNN
F 3 "" H 5750 3700 50  0000 C CNN
	1    5750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 603215E4
P 5750 4150
F 0 "#PWR018" H 5750 3900 50  0001 C CNN
F 1 "GND" H 5750 4000 50  0000 C CNN
F 2 "" H 5750 4150 50  0000 C CNN
F 3 "" H 5750 4150 50  0000 C CNN
	1    5750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 60321E2E
P 5750 4600
F 0 "#PWR019" H 5750 4350 50  0001 C CNN
F 1 "GND" H 5750 4450 50  0000 C CNN
F 2 "" H 5750 4600 50  0000 C CNN
F 3 "" H 5750 4600 50  0000 C CNN
	1    5750 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 60322192
P 5750 5050
F 0 "#PWR020" H 5750 4800 50  0001 C CNN
F 1 "GND" H 5750 4900 50  0000 C CNN
F 2 "" H 5750 5050 50  0000 C CNN
F 3 "" H 5750 5050 50  0000 C CNN
	1    5750 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
