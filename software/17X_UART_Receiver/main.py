# Import tkinter items but only what is used
from tkinter import Tk
from tkinter import Label, Button, Toplevel

from keithley import keithley_gui

def start_k179():
    k179_window = Toplevel(root)
    k179_gui = keithley_gui(k179_window, model_number=179)
    return

def start_k177():
    k177_window = Toplevel(root)
    k177_gui = keithley_gui(k177_window, model_number=177)
    return

def exit_gui():
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