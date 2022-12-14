#!/bin/bash

# Picks murderer and assigns value to variables
# Person = KILLER
# Time Peroid = PLACE
function pickMurderer() {
    characters[0]="theodora"
    characters[1]="tim"
    characters[2]="robert"
    characters[3]="adam"
    characters[4]="mort"
    char_size=${#characters[@]}
    KILLER=$(($RANDOM % $char_size))

    time[0]="middle"
    time[1]="wild"
    time[2]="war"
    time[3]="madmax"
    time[4]="starwars"
    time_size=${#time[@]}
    TIME=$(($RANDOM % $time_size))
}

clear
sleep 1

# Starting Hub area and other areas
function setLocations() {
# Characters
# 2 in hub, 1 in middle ages, 1 in the war, 1 in mad max
    # Hub
    HUB_CHAR1=$(($RANDOM % $char_size))
    HUB_CHAR2=$(($RANDOM % $char_size))
    while [ $HUB_CHAR2 -eq $HUB_CHAR1 ]; do
	HUB_CHAR2=$(($RANDOM % $char_size))
    done
    if [[ $HUB_CHAR1 -eq 0 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Theodora $FILELOCATION/Game/Hub/Theodora
    elif [[ $HUB_CHAR1 -eq 1 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Tim $FILELOCATION/Game/Hub/Tim
    elif [[ $HUB_CHAR1 -eq 2 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Robert $FILELOCATION/Game/Hub/Robert
    elif [[ $HUB_CHAR1 -eq 3 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Adam $FILELOCATION/Game/Hub/Adam
    else
	cp $FILELOCATION/Game/dev-CharacterTemplates/Mort $FILELOCATION/Game/Hub/Mort
    fi
    if [[ $HUB_CHAR2 -eq 0 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Theodora $FILELOCATION/Game/Hub/Theodora
    elif [[ $HUB_CHAR2 -eq 1 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Tim $FILELOCATION/Game/Hub/Tim
    elif [[ $HUB_CHAR2 -eq 2 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Robert $FILELOCATION/Game/Hub/Robert
    elif [[ $HUB_CHAR2 -eq 3 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Adam $FILELOCATION/Game/Hub/Adam
    else
	cp $FILELOCATION/Game/dev-CharacterTemplates/Mort $FILELOCATION/Game/Hub/Mort
    fi

    #Middle Ages
    MIDDLE_CHAR1=$(($RANDOM % $char_size))
	while [ $MIDDLE_CHAR1 -eq $HUB_CHAR1 || $MIDDLE_CHAR1 -eq $HUB_CHAR2 ]; do
	MIDDLE_CHAR1=$(($RANDOM % $char_size))
    done
    if [[ $MIDDLE_CHAR1 -eq 0 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Theodora $FILELOCATION/Game/Hub/.time-middle/Theodora
    elif [[ $MIDDLE_CHAR1 -eq 1 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Tim $FILELOCATION/Game/Hub/.time-middle/Tim
    elif [[ $MIDDLE_CHAR1 -eq 2 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Robert $FILELOCATION/Game/Hub/.time-middle/Robert
    elif [[ $MIDDLE_CHAR1 -eq 3 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Adam $FILELOCATION/Game/Hub/.time-middle/Adam
    else
	cp $FILELOCATION/Game/dev-CharacterTemplates/Mort $FILELOCATION/Game/Hub/.time-middle/Mort
    fi

   #The War
    WAR_CHAR1=$(($RANDOM % $char_size))
    while [ $WAR_CHAR1 -eq $HUB_CHAR1 || $WAR_CHAR1 -eq $HUB_CHAR2 || $WAR_CHAR1 -eq $MIDDLE_CHAR1 ]; do
	WAR_CHAR1=$(($RANDOM % $char_size))
    done
    if [[ $WAR_CHAR1 -eq 0 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Theodora $FILELOCATION/Game/Hub/.time-war/Theodora
    elif [[ $WAR_CHAR1 -eq 1 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Tim $FILELOCATION/Game/Hub/.time-war/Tim
    elif [[ $WAR_CHAR1 -eq 2 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Robert $FILELOCATION/Game/Hub/.time-war/Robert
    elif [[ $WAR_CHAR1 -eq 3 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Adam $FILELOCATION/Game/Hub/.time-war/Adam
    else
	cp $FILELOCATION/Game/dev-CharacterTemplates/Mort $FILELOCATION/Game/Hub/.time-war/Mort
    fi

    # Mad Max
    MAX_CHAR1=$(($RANDOM % $char_size))
    while [ $MAX_CHAR1 -eq $HUB_CHAR1 || $MAX_CHAR1 -eq $HUB_CHAR2 || $MAX_CHAR1 -eq $MIDDLE_CHAR1 || $MAX_CHAR1 -eq $WAR_CHAR1 ]; do
	MAX_CHAR1=$(($RANDOM % $char_size))
    done
    if [[ $MAX_CHAR1 -eq 0 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Theodora $FILELOCATION/Game/Hub/.time-max/Theodora
    elif [[ $MAX_CHAR1 -eq 1 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Tim $FILELOCATION/Game/Hub/.time-max/Tim
    elif [[ $MAX_CHAR1 -eq 2 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Robert $FILELOCATION/Game/Hub/.time-max/Robert
    elif [[ $MAX_CHAR1 -eq 3 ]]; then
	cp $FILELOCATION/Game/dev-CharacterTemplates/Adam $FILELOCATION/Game/Hub/.time-max/Adam
    else
	cp $FILELOCATION/Game/dev-CharacterTemplates/Mort $FILELOCATION/Game/Game/Hub/.time-max/Mort
    fi
}

# Checks if 3 actions, then runs day cycle
function checkActions() {
    if [[ $ACTIONS -eq 3 ]]; then
		echo ""
		echo "Press any key to continue"
		read -n 1
		clear
		sleep 1

		if [[ $DAY -eq 1 ]]; then
			echo "You've made it to the end of day one."
			sleep 1; echo "On day two there are going to be some additions to the world that you can explore."
			sleep 1; echo ""; echo "Press any key to continue"; read -n 1

			PS1="[ Location: Hub | Day 2 ]$ "
			sleep 1
			ACTIONS=0
			cp Hub/.time-middle Hub/MiddleAges
			cp Hub/.time-wild Hub/WildWest
			cp Hub/.time-war Hub/GreatWar
			cp Hub/.time-max Hub/MadMax
			cp Hub/.time-star Hub/StarWars
			echo "You awake to find some new additions to your hub. Use the command 'ls' to observe your new surroundings."
			sleep 1; echo ""; printf "The blue file names are time periods that you can now travel to to talk to characters or inspect objects."
			sleep 1; echo "Type 'cd <directory name>' to enter that time period, and 'cd ..' to go back."
		elif [[ $DAY -eq 2 ]]; then
			echo "You've made it to the end of day two."
			sleep 1; echo "On day three you're going to find one new addition, that may be of use to you."
			sleep 1; echo ""; echo "Press any key to continue"; read -n 1

			PS1="[ Location: Hub | Day 3 ]$ "
			sleep 1
			ACTIONS=0
			cp Hub/.accusationButton AccusationButton
			echo "You awake to find one last addition to your hub. Use the 'ls' command to observe your new surroundings."
		else
			echo "You've made it to the end of day three, and the end of your investigation."
			sleep 1
			echo "When you are ready to make your accusation, press any key."
			read -n 1
			. accusation.sh
		fi
	fi
}

# Creating useful variables
LS_COUNT=0
DAY=1
ACTIONS=0

# Setting starting area
PS1="[ Location: Hub | Day 1 ]$ "
cd Hub
pickMurderer
setLocations

# Instructions
clear
printf "You start in the Hub area, located in present day Lakeland. "
sleep 1; printf "Use the command "; tput bold; printf "ls "; tput sgr0; echo "to list useful locations or objects."
sleep 1; echo ""; printf "Good job! You can see there are two types of files open now. Green files are characters you can interact with by typing '. <character name>', "
sleep 1; echo "and white files are standard objects you can inspect with 'cat <object name>'."