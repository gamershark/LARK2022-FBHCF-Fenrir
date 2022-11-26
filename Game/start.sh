#!/bin/bash

# Picks murderer and assigns value to variables
# Person = KILLER
# Weapon = WEAPON
# Time Peroid = PLACE
function pickMurderer() {
    characters[0]="theodora"
    characters[1]="tim"
    characters[2]="robert"
    characters[3]="adam"
    characters[4]="mort"
    char_size=${#characters[@]}
    KILLER=$(($RANDOM % $char_size))

    weapons[0]="claymore"
    weapons[1]="revolver"
    weapons[2]="tweet"
    weapons[3]="laser"
    weapons[4]="lightsaber"
    weapon_size=${#weapons[@]}
    WEAPON=$(($RANDOM % $weapon_size))

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
    HUB_CHAR1=$(($RANDOM % $char_size))
    HUB_CHAR2=$(($RANDOM % $char_size))
    while [ $HUB_CHAR2 -eq $HUB_CHAR1 ]
    do
	HUB_CHAR2=$(($RANDOM % $char_size))
    done

    # Chatacter 1
    if [[ $HUB_CHAR1 -eq 0 ]]
    then
	mv $FILELOCATION/Game/Locations/Hub/.theodora $FILELOCATION/Game/Locations/Hub/Theodora
    elif [[ $HUB_CHAR1 -eq 1 ]]
    then
	mv $FILELOCATION/Game/Locations/Hub/.tim $FILELOCATION/Game/Locations/Hub/Tim
    elif [[ $HUB_CHAR1 -eq 2 ]]
    then
	mv $FILELOCATION/Game/Locations/Hub/.robert $FILELOCATION/Game/Locations/Hub/Robert
    elif [[ $HUB_CHAR1 -eq 3 ]]
    then
	mv $FILELOCATION/Game/Locations/Hub/.adam $FILELOCATION/Game/Locations/Hub/Adam
    else
	mv $FILELOCATION/Game/Locations/Hub/.mort $FILELOCATION/Game/Locations/Hub/Mort
    fi
    # Character 2
    if [[ $HUB_CHAR2 -eq 0 ]]
    then
	mv $FILELOCATION/Game/Locations/Hub/.theodora $FILELOCATION/Game/Locations/Hub/Theodora
    elif [[ $HUB_CHAR2 -eq 1 ]]
    then
	mv $FILELOCATION/Game/Locations/Hub/.tim $FILELOCATION/Game/Locations/Hub/Tim
    elif [[ $HUB_CHAR2 -eq 2 ]]
    then
	mv $FILELOCATION/Game/Locations/Hub/.robert $FILELOCATION/Game/Locations/Hub/Robert
    elif [[ $HUB_CHAR2 -eq 3 ]]
    then
	mv $FILELOCATION/Game/Locations/Hub/.adam $FILELOCATION/Game/Locations/Hub/Adam
    else
	mv $FILELOCATION/Game/Locations/Hub/.mort $FILELOCATION/Game/Locations/Hub/Mort
    fi
}

# Instructions
printf "You start in the Hub area, located in present day Lakeland. "
sleep 1
printf "Use the command "; tput bold; printf "ls "; tput sgr0; echo "to list useful locations or objects."
sleep 1
