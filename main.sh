#!/bin/bash

FILELOCATION=$PWD

# Gets/checks screen size for ascii art
function screenSize() {
    while [[ "$(tput cols)" -lt 100 ]]
    do
	echo "Please increase the screen size to be at least 100 columns long for images to correctly display."
	echo "Current screen size: " $(tput cols) " columns"
	sleep 1
	clear
    done
    echo "Screen size sufficient, thank you!"
}

# Save screen
tput smcup


# Menu Text
function mainMenu() {
    clear
    cat <<EOF
    MAIN MENU
=================
1. New Game
2. About
0. Quit
EOF

    read -p "Enter Selection [0-2]: " selection
    case $selection in
    1) echo "Starting new game..."
       sleep 1
       screenSize
       clear
       . Game/startCutscene.sh
       ;;
    2) clear
       echo "<GAME NAME> is a command line game intended to teach players the basics of the Linux BASH shell.

You play as the host of the Internation Time Metting, a conference of the world's most powerful time travelers. On the first night of the conference, one of the guests suddenly gets killed, and now it's your job to figure out who did the deed, but also when.

Press any key to exit back to the main menu."
       read -n 1
       mainMenu
       ;;
    0) tput rmcup
       echo "Program terminated"
       ;;
    *) echo "Invalid"
       ;;
    esac
}

mainMenu
