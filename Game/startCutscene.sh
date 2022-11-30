#!/bin/bash

# Setting Introduction
tput smso; printf "Location:"; tput rmso
sleep 1; echo " Lakeland Florida"
sleep 1; tput smso; printf "Time:"; tput rmso
sleep 1; echo " Present Day - 15:00"
sleep 1; echo ""; echo "You've taken on the hosting job for the International Time Meeting, a conference for the worlds most powerful time travelers."
sleep 1; echo ""; echo "Press any key to continue"; read -n 1

# Character introductions
tput cuu1
echo "The group that make up the conference include:"
sleep 1; tput setaf 0; setaf 5; printf "Princess Theodora"; sleep 1; tput sgr0; tput setaf 7; echo ", the most royal princess from the middle ages,"
sleep 1; tput setaf 3; printf "Cantankerous Tim"; sleep 1; tput sgr0; echo ", the most powerful gunsman of the wild west,"
sleep 1; tput setaf 2; printf "Robert Carlton"; sleep 1; tput setaf 7; echo ", the brightest engineer from the times of the Great War,"
sleep 1; tput setaf 6; printf "Adam Scott"; sleep 1; tput setaf 7; echo ", the best actor of the close future,"
sleep 1; tput setaf 4; printf "Kay"; sleep 1; tput setaf 7; echo ", the strongest warrior of the Mad Max-esque future,"
sleep 1; printf "and finally "; sleep 1; tput setaf 1; printf "Mort Matten"; sleep 1; tput setaf 7; echo ", the creator of the Space Ranger league from a future far, far away."
sleep 1; echo ""; echo "Press any key to continue"; read -n 1

# Day one
tput cuu1; printf "On the first day of the conference, "
sleep 1; printf "the attendees introduce themselves, and you prepare their rooms. "
sleep 1; printf "Though, of course, "
sleep 1; printf "instead of using their rooms for sleep, "
sleep 1; echo "they simply use time machines to go back to their own time."
sleep 1; echo ""; printf "On the first night though, "
sleep 1; echo "something terrible were to happen..."
sleep 1; echo ""; echo "Press any key to continue"; read -n 1

# The murder bit
clear
echo "'AAAHHHHHHH!!!!!'"
sleep 1; echo ""; echo "You leave your room and enter the lobby, to see a sight that horrors you."
sleep 1; printf "The deceased body of "; tput setaf 4; echo "Kay "; tput setaf 7; echo "with an onimous note placed on top of them."
sleep 1; echo ""; printf "Being the host, now it's your job to not only figure out who was the killer, "
sleep 1; printf "but also when. "
sleep 1; echo ""; echo "Press any key to continue"; read -n 1

# PS1 variable thing
tput cuu1; printf "To help you with knowing when you are, "
sleep 1; printf "the attendees have given you a bracelet that displays when you are, "
sleep 1; echo "and what time (locally) of the conference it is."
sleep 1; printf "Since there's limited time of the conference, "
sleep 1; echo "you only have 3 days to determine a suspect."
sleep 1; echo "The attendees wish you luck, and send you on your way."
sleep 1; echo ""; echo "Press any key to continue"; read -n 1

# exec start script
cd Game
. start.sh