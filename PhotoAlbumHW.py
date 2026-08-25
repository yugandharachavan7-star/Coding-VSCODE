from tkinter import *
from tkinter import messagebox
from PIL import Image, ImageTk
window = Tk()
window.title("Photo Album")
window.geometry("1200x800")

title_label = Label(window, text="Photo Album", fg="black", bg="lightyellow", width=40)
title_label.pack(pady=10)
img_file = Image.open("switzerland.jpg")
img_file = img_file.resize((800, 600))
photo = ImageTk.PhotoImage(img_file)
pic = Label(window, image = photo)
pic.pack(pady=5)

def show_message():
    messagebox.showinfo('Great!', 'You clicked the photo!')
msg_btn = Button(window, text='Click to React', bg='lightyellow', fg='black', command=show_message)
msg_btn.pack(pady=5)

def show_details():
    top = Toplevel()
    top.title('Photo Details')
    top.geometry('400x120')
    info = Label(top, text='Taken on: 2 June 2017')
    info.pack(pady=10)
    place = Label(top, text='Source: Medium-Top Destinations to visit in Switzerland Holidays')
    place.pack()
    top.mainloop()
details_btn = Button(window, text='See Details', bg='lightyellow', fg='black', command=show_details)
details_btn.pack(pady=5)

window.mainloop()