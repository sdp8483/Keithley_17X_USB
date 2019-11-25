''' Create a main GUI with buttons to lauch individual GUIs for each Keithley Model Number
    November 2019
'''

# Import tkinter items but only what is used
from tkinter import Tk
from tkinter import Label, Button, Toplevel

from keithley import keithley_gui

def start_k179():
    ''' Start the GUI for Keithley 179 Digital Multimeter
    '''
    k179_window = Toplevel(root)
    k179_gui = keithley_gui(k179_window, model_number=179)
    return

def start_k177():
    ''' Start the GUI for Keithely 177 Digital Multimeter
    '''
    k177_window = Toplevel(root)
    k177_gui = keithley_gui(k177_window, model_number=177)
    return

def exit_gui():
    ''' Exit all
    '''
    root.destroy()

if __name__ == "__main__":
    root = Tk()
    root.title("Keithley 17X USB Adapter")
    root.minsize(320,180)

    # text
    top_label = Label(root, text=" ")
    top_label.pack()

    # button
    Keithley_179 = Button(root, text="Keithley 179", width=20, height=2, command=start_k179)
    Keithley_179.pack()

    Keithley_177 = Button(root, text="Keithley 177", width=20, height=2, command=start_k177)
    Keithley_177.pack()

    quit_button = Button(root, text='Quit', width=20, height=2, command=exit_gui)
    quit_button.pack()
    
    root.mainloop()