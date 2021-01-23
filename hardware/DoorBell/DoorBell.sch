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
	10500 2600 10250 2600
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
F 1 "1N4141" V 4555 1570 50  0000 R CNN
F 2 "" H 4600 1650 50  0001 C CNN
F 3 "~" H 4600 1650 50  0001 C CNN
	1    4600 1650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Barrel_Jack_Switch_MountingPin J1
U 1 1 600F2043
P 4700 850
F 0 "J1" V 4711 1030 50  0000 L CNN
F 1 "Barrel_Jack_Switch_MountingPin" V 4802 1030 50  0000 L CNN
F 2 "" H 4750 810 50  0001 C CNN
F 3 "~" H 4750 810 50  0001 C CNN
	1    4700 850 
	0    1    1    0   
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
	2750 3350 6650 3350
Wire Notes Line
	2750 550  6650 550 
Text Notes 5050 2000 0    50   ~ 0
ADC = Vin * ( 1024 / Vref )\nArduino Vref is 5V\nSo at 12V input the ADC \nvalue should be\nADC = (5 / 5) * 1024 = 1024
Text Notes 5300 3000 0    50   ~ 0
Alternative calculation the \nRAW value from the ADC\ncan be done with this formula\n        ADC * Vref * (R8 + R7) \nRAW = ————————————————\n          ( 1024 * R8 )
$EndSCHEMATC
