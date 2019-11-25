''' GUI for Keithley 179 TRMS Digital Multimeter
    
    For use with Keithley 17X USB Adapter

    November 2019
'''
import time
import threading
import serial
import serial.tools.list_ports as list_ports

import configparser
import os

# Import tkinter items but only what is used
from tkinter import ttk, Tk
import tkinter.font as font
from tkinter import END, Frame, Text, Label, Button, Radiobutton, IntVar, StringVar

from keithley_switches import Keithley_Switches

class keithley_gui:
    def __init__(self, gui, model_number):
        self.gui = gui
        self.gui.title("Keithley {} USB".format(model_number))
        self.gui.geometry('500x240')
        self.config_section = "K{}".format(model_number)

        # serial port object
        self.serial_object = None

        # Config file
        self.config_dir = os.path.dirname(os.path.abspath(__file__))
        self.config_path = os.path.join(self.config_dir, 'settings.ini')
        self.config = configparser.ConfigParser()
        self.config.read(self.config_path)

        # Unit and range switches
        self.display_unit = IntVar()
        self.display_range = IntVar()
        try:
            self.display_unit.set(self.config[self.config_section]['unit'])
            self.display_range.set(self.config[self.config_section]['range'])
        except KeyError:
            print("INI file is missing, Is this your first run?")
            self.display_unit.set(0)
            self.display_range.set(0)

        self.front_switches = Keithley_Switches(model_number)
        self.front_switches.update(self.display_unit.get(), self.display_range.get())

        # get_data update rate
        self.update_period = 0.1 #seconds

        # GUI Elements
        # frames
        self.frame_1 = Frame(self.gui, height = 225, width = 490, bd = 3, relief = 'groove')
        self.frame_1.place(x = 5, y = 5)

        # text display
        self.display_font = font.Font(family='courier', size=30, weight='bold')
        self.display = Text(self.gui, width = 19, height = 1)
        self.display.config(fg='Red', bg='Black', font=self.display_font)
        self.display.place(x = 15, y = 15)

        # Labels
        self.port_label = Label(self.gui, text = "Port")
        self.port_label.place(x = 15, y = 145)

        # Entry

        # combobox of serial ports
        self.ports = [a.device for a in list_ports.comports()]
        self.port_combo = ttk.Combobox(self.gui,values=self.ports)
        self.port_combo.place(x=15,y=165)

        # Buttons
        self.connect = Button(self.gui, 
                              text = "Connect", 
                              command = self.connect)

        self.disconnect = Button(self.gui, 
                                 text = "Disconnect", 
                                 command = self.disconnect)

        self.connect.place(x=15, y=190)
        self.disconnect.place(x=100, y=190)

        # Units Radiobuttons
        self.unit_buttons = []
        for i,unit in enumerate(self.front_switches.unit_lst):
            r = Radiobutton(self.gui,
                            text=unit, 
                            indicatoron=0, 
                            width=2,
                            height=3, 
                            padx=3, 
                            variable=self.display_unit,
                            command=self.update_range,
                            value=i)
            r.place(x=15+25*i, y=80)
            self.unit_buttons.append(r)
        
        # Range Radiobuttons
        self.range_buttons = []
        for i,rng in enumerate(self.front_switches.get_range_lst()):
            r = Radiobutton(self.gui,
                            text=rng,
                            indicatoron=0, 
                            width=5,
                            height=3, 
                            padx=3, 
                            variable=self.display_range,
                            command=self.update_range_factor,
                            value=i)
            r.place(x=135+50*i, y=80)
            self.range_buttons.append(r)

    def connect(self):
            """
            """
            port = self.port_combo.get()
            baud = 115200

            try:
                self.serial_object = serial.Serial(port, baud)

            except ValueError:
                print("Enter Baud and Port")
                return

            self.t1 = threading.Thread(target = self.get_data)
            self.t1.daemon = True
            self.t1.start()
    
    def get_data(self):
        """
        """
        self.last_update = time.time()

        while(1):
            if (time.time() - self.last_update >= self.update_period):
                self.bytes_to_read = self.serial_object.inWaiting()
                self.serial_data = self.serial_object.read(self.bytes_to_read).decode('ascii')

                try:
                    self.serial_sdata = self.serial_data.split('\r\n')[-2].lstrip('\x00')
                    formated_value = self.serial_sdata[0:self.front_switches.factor] + '.' + self.serial_sdata[self.front_switches.factor:]

                    #val = serial_sdata[0:len(serial_sdata)-r.get()] + '.' + serial_sdata[len(serial_sdata)-r.get():]
                    display_value = " {data} {prefix}{units}".format(data=formated_value,
                                                                     prefix=self.front_switches.prefix,
                                                                     units=self.front_switches.unit_str)
                                                                     #prefix=self.unit_prefix,
                                                                     #units=self.unit_switches[self.display_unit.get()])
                    self.display.replace("1.0", END, display_value)

                except IndexError:
                    self.display.replace("1.0", END, ' Error')

                self.last_update = time.time()
    
    def disconnect(self):
        # Save current user settings
        self.config[self.config_section] = {'unit': self.display_unit.get(),
                                            'range': self.display_range.get()}

        with open(self.config_path, 'w') as configfile:
            self.config.write(configfile)

        try:
            self.serial_object.close()
        except AttributeError:
            print("No serial port open to disconnect from")
        
        self.gui.destroy()
    
    def update_range(self):
        self.update_range_factor()
        for rng_button, label in zip(self.range_buttons, self.front_switches.get_range_lst()):
            rng_button.config(text=label)

    def update_range_factor(self):
        self.front_switches.update(self.display_unit.get(), self.display_range.get())