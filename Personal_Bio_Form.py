from tkinter import *

window = Tk()
window.title("Personal Bio Form")
window.geometry("450x450")
window.config(bg="pink")

form_frame = Frame(window, bg="white", padx=20, pady=20)
form_frame.grid(row=0, column=0, padx=30, pady=30)

title_label = Label(window, text="Personal Bio Form", fg="white", bg="purple", width=60)
title_label.grid(row=0, column=0, columnspan=2, padx=10, pady=10)

name_label = Label(window, text="Name:", fg="black", bg="white")
name_label.grid(row=1, column=0, padx=10, pady=10)

name_entry = Entry(window, fg="blue", bg="white", width=30)
name_entry.grid(row=1, column=1, padx=10, pady=10)

age_label = Label(window, text="Age:", fg="black", bg="white")
age_label.grid(row=2, column=0, padx=10, pady=10)

age_entry = Entry(window, fg="blue", bg="white", width=30)
age_entry.grid(row=2, column=1, padx=10, pady=10)

hobby_label = Label(window, text="Hobby:", fg="black", bg="white")
hobby_label.grid(row=3, column=0, padx=10, pady=10)

hobby_entry = Entry(window, fg="blue", bg="white", width=30)
hobby_entry.grid(row=3, column=1, padx=10, pady=10)

aboutme_frame = Frame(window, relief=RAISED, borderwidth=3)
aboutme_frame.grid(row=4, column=0, columnspan=2, padx=10, pady=10)
aboutme_label = Label(aboutme_frame, text="About Me:", relief=RAISED, borderwidth=3)
aboutme_label.grid(row=0, column=0, columnspan= 2, padx=10, pady=10)
aboutme_label.pack()
aboutme_text= Text(aboutme_frame, fg="green", bg="white", width= 40, height= 4)
aboutme_text.pack()

result_label = Label(window, fg="black", bg="white", justify=LEFT)
result_label.grid(row=5, column=0, columnspan=2, padx=10, pady=10)

#aboutme_label = Label(window, text="About Me:", fg="black", bg="white")
#aboutme_label.grid(row=4, column=0, padx=10, pady=10)
#CAN ALSO BE DONE
#aboutme_text = Text(window, fg="black", bg="white", height=5, width=30)
#aboutme_text.grid(row=4, column=1, padx=10, pady=10)

def show_bio():
    name = name_entry.get()
    age = age_entry.get()
    hobby = hobby_entry.get()
    about_me = aboutme_text.get("1.0", END).strip()

    result_label.config(text=f"Hello {name}!\n Age: {age}\nHobby: {hobby}\nAbout: {about_me}")
    
submit = Button(window, text='Show Bio☝️', bg='blue', fg='white', width=20, command=show_bio)
submit.grid(row=6, column=0, columnspan=2, padx=10, pady=10)




window.mainloop()