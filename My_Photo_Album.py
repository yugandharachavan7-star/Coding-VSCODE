from tkinter import *
from tkinter import messagebox
from PIL import Image, ImageTk
window = Tk()
window.title("My Photo Album")
window.geometry("1200x800")

title_label = Label(window, text="My Photo Album", fg="white", bg="lightblue", width=40)
title_label.pack(pady=10)
img_file = Image.open("pochaccoice.png")
img_file = img_file.resize((800, 600))
photo = ImageTk.PhotoImage(img_file)
pic = Label(window, image = photo)
pic.pack(pady=5)

def show_message():
    messagebox.showinfo('Great!', 'You clicked the photo!')
msg_btn = Button(window, text='Click to React', bg='lightblue', fg='white', command=show_message)
msg_btn.pack(pady=5)

# PART 4 - Create a function to open a new window with photo details
def show_details():
    top = Toplevel()
    top.title('Photo Details')
    top.geometry('200x120')
    info = Label(top, text='Taken on: 1 June 2025')
    info.pack(pady=10)
    place = Label(top, text='Location: Hello Kitty and Friends')
    place.pack()
    top.mainloop()
details_btn = Button(window, text='See Details', bg='lightblue', fg='white', command=show_details)
details_btn.pack(pady=5)

# PART 5 - Run the main window loop
window.mainloop()