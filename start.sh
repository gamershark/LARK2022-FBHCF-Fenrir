#!/bin/bash

DIRECTORY=$PWD

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
	sleep 1
}

# Reads when window size changes and runs screenSize if it does
trap screenSize SIGWINCH
screenSize