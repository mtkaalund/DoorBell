# DoorBell
Perhaps an over-engineered doorbell using a Arduino Pro Mini and a DFPlayer Mini.



## Hardware
The schematic are done in KiCad 5. 
A little story, at first I only meant to put a electrial schematic together, so it was easier to create a breadboard for this project.

But as I thought it would be a good pratics to create a pcb of it (mostly because it has been a long time since I did one).

As I was working with creating the schematics and the pcb, I tought it was underused, as it did'nt use all or expose the pins on the arduino or the DFPlayer Mini.
So I exposed them to the world and now it became a semi development board for the Arduino Pro Mini and DFPlayer Mini.

There are two headers "Arduino IO" and "DFPlayer IO" which expose the remaining IO's.

Arduino IO               | DFPlayer IO
-------------------------|---------------------------
Header Pin | Arduino Pin | Header Pin | DFPlayer Pin
-----------|-------------|------------|--------------
1 | GND | 1 | DF Adkey 2
2 | VCC | 2 | DF Adkey 1
3 | A3  | 3 | DF IO 2
4 | A2  | 4 | DF IO 1
5 | A1  | 5 | DF DAC L
6 | 13 ( SCK ) | 6 | DF DAC R
7 | 12 ( MISO )
8 | 9 ( Low battery LED )
9 | 8
10 | Reset
11 | 0 ( Rx )
12 | 1 ( Tx )
13 | GND
14 | VCC

### Libs
[Kicad footprints](https://github.com/joeylevy/KiCad_Arduino_Nano_DFPlayer_footprints)
[Kicad schematic symbols](https://github.com/RoboUlbricht/kicad.lib)

### Schematic
Can be found in the [hardware](https://github.com/mtkaalund/DoorBell/tree/main/hardware/DoorBell) folder as
either [Kicad Schematic](https://github.com/mtkaalund/DoorBell/blob/main/hardware/DoorBell/DoorBell.sch) or as a [PDF](https://github.com/mtkaalund/DoorBell/blob/main/hardware/DoorBell/DoorBell.pdf).

The pcb layout I have done can also be found as [Kicad PCB](https://github.com/mtkaalund/DoorBell/blob/main/hardware/DoorBell/DoorBell.kicad_pcb) or as pdf's [B_cu.pdf](https://github.com/mtkaalund/DoorBell/blob/main/hardware/DoorBell/DoorBell-B_Cu.pdf) [F_cu.pdf](https://github.com/mtkaalund/DoorBell/blob/main/hardware/DoorBell/DoorBell-F_Cu.pdf) [F_SilkS.pdf](https://github.com/mtkaalund/DoorBell/blob/main/hardware/DoorBell/DoorBell-F_SilkS.pdf)