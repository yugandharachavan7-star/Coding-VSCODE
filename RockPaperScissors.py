import random
from tkinter import *
from tkinter import messagebox

window = Tk()
window.title("Rock Paper Scissors")
window.configure(bg="lightblue")
window.geometry("650x420")

label1 = Label(window, text="Rock, Paper, Scissors!", bg="lightblue", fg="black")
label1.place(relx=0.5, y=30, anchor=CENTER)

label2 = Label(window, text="Pick your move below:", bg="lightblue", fg="black")
label2.place(relx=0.5, y=70, anchor=CENTER)

user_score = 0
computer_score = 0
rounds_played = 0

score_label = Label(window, text="You: 0    Computer: 0    Rounds: 0",
                     bg="lightblue", fg="black")
score_label.place(relx=0.5, y=110, anchor=CENTER)
 
result_label = Label(window, text="Make a choice to start!", bg="lightblue",
                      fg="green")
result_label.place(relx=0.5, y=300, anchor=CENTER)
 
choice_label = Label(window, text="", bg="lightblue", fg="black")
choice_label.place(relx=0.5, y=340, anchor=CENTER)
#nothing in the text bc later make choice list.

choices = ["Rock", "Paper", "Scissors"]
 
def decide_winner(user_choice, computer_choice):
    #Returns 'user', 'computer' or 'tie' using conditional statements.
    if user_choice == computer_choice:
        return "tie"
    
    elif (user_choice == "Rock" and computer_choice == "Scissors") or \
         (user_choice == "Paper" and computer_choice == "Rock") or \
         (user_choice == "Scissors" and computer_choice == "Paper"):
        return "user"
    else:
        return "computer"

def play(user_choice):
    global user_score, computer_score, rounds_played

    computer_choice = random.choice(choices)
    winner = decide_winner(user_choice, computer_choice)
    rounds_played += 1

    if winner == "tie":
        result_text = "It's a tie!"
    elif winner == "user":
        result_text = "You win!"
        user_score+=1
    elif winner == "computer":
        print("You lose, better luck next time ^~^")
        computer_score+=1

    choice_label.config(
        text=f"You chose {user_choice}   vs   "
             f"Computer chose {computer_choice}")
    result_label.config(text=result_text)
    score_label.config(text=f"You: {user_score}    Computer: {computer_score}    Rounds: {rounds_played}")

    if user_score == 5 or computer_score == 5:
        overall = "You" if user_score == 5 else "Computer"
        messagebox.showinfo("Game Over", f"{overall} won the match! Score resets now.")
        reset_game()

def reset_game():
    global user_score, computer_score, rounds_played
    user_score = 0
    computer_score = 0
    rounds_played = 0
    score_label.config(text="You: 0    Computer: 0    Rounds: 0")
    result_label.config(text="Score reset! Make a choice to start!")
    choice_label.config(text="")

def show_rules():
    """Opens a Toplevel window, just like the topwin() function from class."""
    top = Toplevel()
    top.title("How To Play")
    top.configure(bg="lavender")
    top.geometry("400x250+150+150")
 
    rules_text = (
        "Rock beats Scissors\n"
        "Scissors beats Paper\n"
        "Paper beats Rock\n\n"
        "First to 5 wins takes the match!\n"
        "Press a button on the main window\n"
        "to play a round against the computer.")

    Label(top, text="Game Rules", bg="lavender").place(relx=0.5, y=30, anchor=CENTER)
    Label(top, text=rules_text, bg="lavender", justify=LEFT).place(relx=0.5, y=130, anchor=CENTER)
 
    close_btn = Button(top, text="Close", command=top.destroy, bg="pink", fg="black")
    close_btn.place(relx=0.5, y=220, anchor=CENTER)
 
    top.mainloop()

button_x_positions = {"Rock": 120, "Paper": 270, "Scissors": 420}

for choice in choices:
    btn = Button(window,text=f"{choice}",width=10,height=2,bg="pink",fg="black",command=lambda c=choice: play(c) )  # lambda locks in the correct choice
    btn.place(x=button_x_positions[choice], y=150)

rules_btn = Button(window, text="Rules", command=show_rules, bg="darkgreen", fg="white")
rules_btn.place(x=250, y=380)
 
reset_btn = Button(window, text="Reset Score", command=reset_game, bg="blue", fg="white")
reset_btn.place(x=330, y=380)
 
quit_btn = Button(window, text="Quit", command=window.destroy, bg="darkred", fg="white")
quit_btn.place(x=450, y=380)
 
window.mainloop()


