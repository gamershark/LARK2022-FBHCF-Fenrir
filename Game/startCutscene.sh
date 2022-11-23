#!/bin/bash

# Setting Introduction
tput smso; printf "Location:"; tput rmso
sleep 1
echo " Lakeland Florida"
sleep 1
tput smso; printf "Time:"; tput rmso
sleep 1
echo " Present Day - 15:00"
sleep 1
echo ""
echo "You've taken on the hosting job for the International Time Meeting, a conference for the worlds most powerful time travelers."
sleep 1
echo "
Press any key to continue"
read -n 1

# Character introductions
tput cuu1
echo "The group that make up the conference include:"
sleep 1
tput setaf 5; printf "Princess Theodora"; sleep 1; tput setaf 7; echo ", the most royal princess from the middle ages,"
sleep 1
tput setaf 3; printf "Cantankerous Tim"; sleep 1; tput setaf 7; echo ", the most powerful gunsman of the wild west,"
sleep 1
tput setaf 2; printf "Robert Carlton"; sleep 1; tput setaf 7; echo ", the brightest engineer from the times of the Great War,"
sleep 1
tput setaf 6; printf "Adam Scott"; sleep 1; tput setaf 7; echo ", the best actor of the close future,"
sleep 1
tput setaf 4; printf "Kay"; sleep 1; tput setaf 7; echo ", the strongest warrior of the Mad Max-esque future,"
sleep 1
printf "and finally "; sleep 1; tput setaf 1; printf "Mort Matten"; sleep 1; tput setaf 7; echo ", the creator of the Space Ranger league from a future far, far away."
echo "" 
echo "Press any key to continue"
read -n 1
