# Import tkinter items but only what is used
from tkinter import Tk
from tkinter import Button, Toplevel

from keithley_179 import keithley_179_gui

def start_k179():
    k179_window = Toplevel(root)
    my_gui = keithley_179_gui(k179_window)
    return

def exit_gui():
    root.destroy()

if __name__ == "__main__":
    root = Tk()
    root.title("Keithley 17X USB Adapter")
    root.minsize(250,120)

    #button
    Keithley_179 = Button(root, text = "Keithley 179", width=20, height=2, command = start_k179)
    Keithley_179.pack()

    quit_button = Button(root, text='Quit', width=20, height=2, command=exit_gui)
    quit_button.pack()
    
    root.mainloop()