# Keithley 17x USB Adapter
The following device is used to connect the Keithley 177 and 179 digital multimeter to the PC over USB. Connecting the Keitley 17x multimeter to the PC enables using the meter as a data logger. The USB Adapter shows up to the PC as a serial COM port enabling the user to use simple serial terminal programs to read data from the Keithley multimeter.

![Keithley 17x USB Adapter](photos/Keithley_17x_USB.jpg)

 Top View | Bottom View   
----|-----    
![USB Adapter Top View](photos/Keithely_17x_USB_Adapter_TopView.jpg) | ![USB Adapter Bottom View](photos/Keithely_17x_USB_Adapter_BottomView.jpg)

The Keithley 177 and 179 Digital Multimeter have a GPIB option. If your meter has this option installed great, you may want to get a GPIB to USB adapter and use that. If your meter does not have this option installed then the Keithley 17x USB Adapter is for you. The original GPIB option was a daughter board that connected to the meters main board using connector J1008. This connector is a 14 pin DIP socket located right behind the input terminals of the meter. Before continuing with the project I suggest you open up your meter and locate this connector. Below are pictures of the socket location on the three meters I have. If the socket is not soldered in but the footprint is on the PCB then don't worry. Get a suitable DIP socket and solder it in.

 Keithley 177 J1008 Location                                 | Keithley 179 J1008 Location
-------------------------------------------------------------|-------------------
![177 J1008 Location](photos/Keithley_177_J1008_location.jpg)| ![179 J1008 Location](photos/Keithley_179_J1008_location.jpg)

![179 Birdseye View](photos/Keithley_179_birdseye.jpg)

## Building the PCB
1. Download the [GERBER](pcb/gerber) files and upload to your favorite prototype PCB board house. 

2. For reflow soldering if your PCB manufacture offers it I strongly suggest getting a solder paste stencil from them. If ordering thorough a board house that does not offer stencils then [OSH Stencils](https://www.oshstencils.com/#%20) is a low cost option. The Polyimide Film 3mil stencil is more then durable enough for a few boards and the cost is just about right. For hand soldering the solder paste stencil can be omitted.

3. Order the components listed in the [BOM](pcb/bom/Keithley_17x_USB_BOM.csv). All items were ordered from [DigiKey](https://www.digikey.com/) or [LCSC](https://lcsc.com/) but it is possible to source from other suppliers.

4. Use the [Interactive BOM](pcb/bom/ibom.html) for part placement during PCB assembly.

## Programing the MSP430FR2110
1. The lowest cost solution to obtain a programmer for the MSP430 is to buy a TI Launchpad. The [MSP-EXP430FR2433](http://www.ti.com/tool/MSP-EXP430FR2433) Launchpad is a good potion but any TI Lauchpad that has an onboard onboard eZ-FET debug probe will work.

![MSP-EXP430FR2433](photos/ti_Launchpad_example.jpg)

2. There are at least two software paths for uploading the firmware
    1. Install the latest version of [Code Composer Studio](http://www.ti.com/tool/CCSTUDIO), import the CCS project found in [firmware/keithley_17X_USB](firmware/keithley_17X_USB), and build the firmware yourself. There is also a [cloud version of CCS](https://dev.ti.com/) that you can use if you do not want to install software on your PC.

    2. Use TI UniFlash. You can either install [UniFlash](http://www.ti.com/tool/UNIFLASH) or use the [UniFlash cloud tool](https://dev.ti.com/). The compiled code is in [firmware/releases](firmware/releases).

3. Remove all the jumpers from the TI Launchpad used to connect the eZ-FET to the onboard target microcontrollers. Connect the eZ-FET to connector J3 on the Keithley 17x USB adapter. The pinout is labeled on the silkscreen. It is not necessary to solder a header onto the PCB, I programmed all my boards using female to male Dupoint wires and held them in place while uploading the code.

![Remove Jumpers from Lauchpad](photos/ti_launchpad_noJumpers.jpg)

![ezFET Connected](photos/ezFET_connected.jpg)

## Installing the USB Adapter into the Keithley Digital Multimeter
1. Print and cutout the mounting hole locating [template](enclosure/Drawings/mounting_template.pdf).

2. Using a punch and the hole locating template mark the center of the mounting hole locations and the USB cutout.

3. Drill the mounting holes using a clearance drill for a M3 bolt using a M3.2 drill or an 1/8" drill.

4. Drill the USB cutout using a 9/16" drill or closest metric size.