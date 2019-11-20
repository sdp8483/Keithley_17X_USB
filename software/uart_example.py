import time
import threading
import serial
import serial.tools.list_ports as list_ports
import sys

from tkinter import *
from tkinter import ttk

# Globals
serial_data = ''
filter_data = ''
ports = []
update_period = 0.25
serial_object = None
gui = Tk()
gui.title("UART Interface")

def connect():
    """The function initiates the Connection to the UART device with the Port and Buad fed through the Entry
    boxes in the application.
    The radio button selects the platform, as the serial object has different key phrases 
    for Linux and Windows. Some Exceptions have been made to prevent the app from crashing,
    such as blank entry fields and value errors, this is due to the state-less-ness of the 
    UART device, the device sends data at regular intervals irrespective of the master's state.
    The other Parts are self explanatory.
    """

    version_ = button_var.get()
    print(version_)
    global serial_object
    #port = port_entry.get()
    port = port_combo.get()
    baud = baud_entry.get()

    serial_object = serial.Serial(port, baud)
    '''
    try:
        if version_ == 2:
            try:
                serial_object = serial.Serial('/dev/tty' + str(port), baud)
            
            except:
                print("Cant Open Specified Port")
        elif version_ == 1:
            serial_object = serial.Serial('COM' + str(port), baud)

    except ValueError:
        print("Enter Baud and Port")
        return
        '''

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
            filter_data = serial_data.decode('ascii').strip()
        
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
    #frame_1 = Frame(height = 285, width = 480, bd = 3, relief = 'groove').place(x = 7, y = 5)
    frame_2 = Frame(height = 150, width = 480, bd = 3, relief = 'groove').place(x = 7, y = 40)
    text = Text(width = 57, height = 1)

    #threads
    t2 = threading.Thread(target = update_gui)
    t2.daemon = True
    t2.start()
    
    #Labels
    baud   = Label(text = "Baud").place(x = 100, y = 88)
    port   = Label(text = "Port").place(x = 200, y = 88)
    #contact = Label(text = "pratik.gurudatt@gmail.com").place(x = 250, y = 437)

    #Entry    
    baud_entry = Entry(width = 7)
    baud_entry.place(x = 100, y = 105)
    baud_entry.insert(0, '115200') # set default
    
    port_entry = Entry(width = 7)
    port_entry.place(x = 200, y = 105)

    # get list of serial ports
    ports = [a.device for a in list_ports.comports()]
    port_combo = ttk.Combobox(gui,values=ports)
    port_combo.place(x=200,y=105)

    #radio button
    button_var = IntVar()
    radio_1 = Radiobutton(text = "Windows", variable = button_var, value = 1).place(x = 10, y = 55)
    radio_2 = Radiobutton(text = "Linux", variable = button_var, value = 2).place(x = 110, y = 55)

    # Determin OS to set radio buttons automagicaly
    if sys.platform.startswith('win'):
        button_var.set(1)
    elif sys.platform.startswith('linux'):
        button_var.set(2)
    elif sys.platform.startswith('darwin'):
        print('OSX')
    else:
        raise EnvironmentError("Unsupported Platform")

    #button
    #button1 = Button(text = "Send", command = send, width = 6).place(x = 15, y = 250)
    connect = Button(text = "Connect", command = connect).place(x = 15, y = 100)
    disconnect = Button(text = "Disconnect", command = disconnect).place(x =350, y = 100)
   
    #mainloop
    gui.geometry('500x240')
    gui.mainloop()