''' GUI for Keithley 179 TRMS Digital Multimeter
    
    For use with Keithley 17X USB Adapter

    November 2019
'''
import time
import threading
import serial
import serial.tools.list_ports as list_ports

# Import tkinter items but only what is used
from tkinter import ttk, Tk
import tkinter.font as font
from tkinter import END, Frame, Text, Label, Button, Radiobutton, IntVar, StringVar

class keithley_179_gui:
    def __init__(self, gui):
        self.gui = gui
        self.gui.title("Keithley 179 USB")
        self.gui.geometry('500x240')

        # Variables to share
        self.serial_object = None
        self.unit_switches = ['Ω', 'V', 'A']
        self.range_switches = {"Ω": ["2k", "20k", "200k", "2000k", "20M"],
                               "V": ["200m", "2 ", "20 ", "200 ", "1000 "],
                               "A": ["200u", "2m", "20m", "200m", "2000m"]}
                               
        self.range_factors = {"Ω": [2, 3, 4, 5, 3],
                              "V": [4, 2, 3, 4, 5],
                              "A": [4, 2, 3, 4, 5]}
        
        self.display_unit = IntVar()
        self.display_unit.set(0)
        self.display_range = IntVar()
        self.display_range.set(0)
                
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
        for i,unit in enumerate(self.unit_switches):
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
        for i,rng in enumerate(self.range_switches[self.get_unit_label()]):
            r = Radiobutton(self.gui,
                            text=rng,
                            indicatoron=0, 
                            width=5,
                            height=3, 
                            padx=3, 
                            variable=self.display_range,
                            command=self.update_range_factor,
                            value=i)
            r.place(x=150+50*i, y=80)
            self.range_buttons.append(r)
        
        self.update_range()

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
                    formated_value = self.serial_sdata[0:self.range_factor] + '.' + self.serial_sdata[self.range_factor:]

                    #val = serial_sdata[0:len(serial_sdata)-r.get()] + '.' + serial_sdata[len(serial_sdata)-r.get():]
                    display_value = " {data} {prefix}{units}".format(data=formated_value,
                                                                     prefix=self.unit_prefix,
                                                                     units=self.unit_switches[self.display_unit.get()])
                    self.display.replace("1.0", END, display_value)

                except IndexError:
                    self.display.replace("1.0", END, ' Error')

                self.last_update = time.time()
    
    def disconnect(self):
        try:
            self.serial_object.close()
        except AttributeError:
            print("No serial port open to disconnect from")
        
        self.gui.destroy()
    
    def get_unit_label(self):
        return self.unit_switches[self.display_unit.get()]
    
    def update_range(self):
        rng_labels = self.range_switches[self.get_unit_label()]
        for rng_button, label in zip(self.range_buttons,rng_labels):
            rng_button.config(text=label)
        
        self.update_range_factor()
    
    def update_range_factor(self):
        self.range_factor = self.range_factors[self.get_unit_label()][self.display_range.get()]
        self.unit_prefix = self.range_switches[self.get_unit_label()][self.display_range.get()][-1]

if __name__ == "__main__":
    root = Tk()
    my_gui = keithley_179_gui(root)
    root.mainloop()
