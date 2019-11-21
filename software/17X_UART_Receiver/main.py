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
from tkinter import END, Frame, Text, Label, Entry, Button

# Globals to share
serial_data = ''
filter_data = ''
update_period = 0
serial_object = None
gui = Tk()
gui.title("Keithley 17X USB Adapter")

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
    baud = baud_entry.get()

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

    while(1):   
        try:
            serial_data = serial_object.readline()
            filter_data = ' ' + serial_data.decode('ascii').strip().lstrip('\x00')
        
        except TypeError:
            pass        

def update_gui():
    """" This function is an update function which is also threaded. The function assimilates the data
    and applies it to it corresponding progress bar. The text box is also updated every couple of seconds.
    A simple auto refresh function .after() could have been used, this has been avoid purposely due to 
    various performance issues.
    """
    global filter_data
    global update_period

    text.place(x = 15, y = 10)
    new = time.time()
    
    while(1):
        if filter_data:
            #text.replace("1.0", END, filter_data)
            if time.time() - new >= update_period:
                text.replace("1.0", END, filter_data)
                new = time.time()

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
    frame_1 = Frame(gui, height = 150, width = 480, bd = 3, relief = 'groove').place(x = 7, y = 40)

    # text
    myFont = font.Font(family='courier', size=30, weight='bold')
    text = Text(gui, width = 8, height = 1)
    text.config(fg='Red', bg='Black')
    text.config(font=myFont)
    text.replace("1.0", END, "   0000")
   
    #Labels
    baud   = Label(gui, text = "Baud").place(x = 100, y = 88)
    port   = Label(gui, text = "Port").place(x = 200, y = 88)

    #Entry    
    baud_entry = Entry(gui, width = 7)
    baud_entry.place(x = 100, y = 105)
    baud_entry.insert(0, '115200') # set default

    # combobox of serial ports
    ports = [a.device for a in list_ports.comports()]
    port_combo = ttk.Combobox(gui,values=ports)
    port_combo.place(x=200,y=105)

    #button
    #button1 = Button(text = "Send", command = send, width = 6).place(x = 15, y = 250)
    connect = Button(gui, text = "Connect", command = connect).place(x = 15, y = 100)
    disconnect = Button(gui, text = "Disconnect", command = disconnect).place(x =380, y = 100)

    #threads
    t2 = threading.Thread(target = update_gui)
    t2.daemon = True
    t2.start()
   
    #mainloop
    gui.geometry('500x240')
    gui.mainloop()