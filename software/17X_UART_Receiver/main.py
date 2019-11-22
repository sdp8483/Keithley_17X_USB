''' GUI for Keithley 17X USB Adapter

This application displays recieves data from the Keithley 17X digital multimeter over serial

Initial code that has been modified from: https://github.com/pratikguru/Instructables

@author: Sam Perry
November 2019

'''
# Standard Python Libraries
import time
import threading
import serial
import serial.tools.list_ports as list_ports
import sys

# Import tkinter items but only what is used
from tkinter import ttk, Tk
import tkinter.font as font
from tkinter import END, Frame, Text, Label, Entry, Button, Radiobutton, IntVar, StringVar

# Globals to share
serial_data = ''
filter_data = ''
units = ['Ω', 'V', 'A']
ranges = [1, 0.1, 0.01, 0.001, 0.0001]

update_period = 0.1
serial_object = None
gui = Tk()
gui.title("Keithley 17X USB Adapter")

# Units GUI Variable
u = IntVar()
u.set(1)

# Measurement Range GUI Variable
r = IntVar()
r.set(4)

def connect():
    """The function initiates the Connection to the UART device with the Port and Buad fed through the Entry
    boxes in the application.
    
    Ports are auto detected and populated into a tkinter combobox that a get() command can read.

    Some Exceptions have been made to prevent the app from crashing,
    such as blank entry fields and value errors, this is due to the state-less-ness of the 
    UART device, the device sends data at regular intervals irrespective of the master's state.
    The other Parts are self explanatory.
    """

    global serial_object
    port = port_combo.get()
    baud = 115200

    try:
        serial_object = serial.Serial(port, baud)

    except ValueError:
        print("Enter Baud and Port")
        return

    t1 = threading.Thread(target = get_data)
    t1.daemon = True
    t1.start()

def get_data():
    """This function serves the purpose of collecting data from the serial object and storing 
    the filtered data into a global variable.
    The function has been put into a thread since the serial event is a blocking function.
    """
    global serial_object
    global filter_data
    global u
    global units
    global r
    global update_period

    last_update = time.time()

    while(1):
        if (time.time() - last_update >= update_period):
            #serial_data = serial_object.readline()
            bytes_to_read = serial_object.inWaiting()
            serial_data = serial_object.read(bytes_to_read).decode('ascii')
            serial_sdata = serial_data.split('\r\n')[-2]

            #serial_sdata = serial_data.decode('ascii').strip().lstrip('\x00')
            val = serial_sdata[0:len(serial_sdata)-r.get()] + '.' + serial_sdata[len(serial_sdata)-r.get():]

            filter_data = " {data} {units}".format(data=val,
                                                    units=units[u.get()])
            
            last_update = time.time()

def update_gui():
    """" This function is an update function which is also threaded. The function assimilates the data
    and applies it to it corresponding progress bar. The text box is also updated every couple of seconds.
    A simple auto refresh function .after() could have been used, this has been avoid purposely due to 
    various performance issues.
    """
    global filter_data

    filter_data_last = ''
    
    while(1):
        if (filter_data != filter_data_last):
            filter_data_last = filter_data
            text.replace("1.0", END, filter_data)

def disconnect():
    """ 
    This function is for disconnecting and quitting the application.
    Sometimes the application throws a couple of errors while it is being shut down, the fix isn't out yet
    but will be pushed to the repo once done.
    simple GUI.quit() calls.
    """
    try:
        serial_object.close()
    
    except AttributeError:
        print("Closed without Using it -_-")

    gui.quit()

if __name__ == "__main__":
    """
    The main loop consists of all the GUI objects and its placement.
    The Main loop handles all the widget placements.
    """
    #frames
    frame_1 = Frame(gui, height = 220, width = 490, bd = 3, relief = 'groove').place(x = 5, y = 10)

    # text
    myFont = font.Font(family='courier', size=30, weight='bold')
    text = Text(gui, width = 18, height = 1)
    text.config(fg='Red', bg='Black', font=myFont)
    text.place(x = 15, y = 25)

    #Labels
    port = Label(gui, text = "Port").place(x = 200, y = 88)

    #Entry

    # combobox of serial ports
    ports = [a.device for a in list_ports.comports()]
    port_combo = ttk.Combobox(gui,values=ports)
    port_combo.place(x=200,y=105)

    #button
    connect = Button(gui, text = "Connect", command = connect).place(x = 15, y = 100)
    disconnect = Button(gui, text = "Disconnect", command = disconnect).place(x =380, y = 100)

    # Units Radiobuttons
    for i,unit in enumerate(units):
        Radiobutton(gui,
                    text=unit, 
                    indicatoron=0, 
                    width=2,
                    height=2, 
                    padx=2, 
                    variable=u,
                    value=i).place(x=15+22*i, y=143)
    
    # Range Radiobuttons
    for i,rng in enumerate(ranges):
        Radiobutton(gui,
                    text=rng, 
                    indicatoron=0, 
                    width=4,
                    height=2, 
                    padx=2, 
                    variable=r,
                    value=i).place(x=100+40*i, y=143)

    #threads
    t2 = threading.Thread(target = update_gui)
    t2.daemon = True
    t2.start()
   
    #mainloop
    gui.geometry('500x240')
    gui.mainloop()