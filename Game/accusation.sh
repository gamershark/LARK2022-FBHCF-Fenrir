#!/bin/bash

# Accuse person function
function accusePerson() {
cat <<EOF
Who are you going to accuse?
1. Princess Theodora
2. Cantankerous Tim
3. Robert Carlton
4. Adam Scott
5. Mort Matten
EOF

echo ""
read -p "Enter selection [1-5]: " selection

case $slection in
    1) ACC_PERSON=0; ;;
    2) ACC_PERSON=1; ;;
    3) ACC_PERSON=2; ;;
    4) ACC_PERSON=3; ;;
    5) ACC_PERSON=4; ;;
    *) "Invalid"; accusePerson; ;;
esac
}

# Accuse location function
function accuseLocation() {
cat <<EOF
When do you think the murder was committed?
1. Middle Ages (Theodora's Time)
2. Wild West (Tim's Time)
3. The Great War (Robert's Time)
4. Mad Max Future (Adam's Time)
5. Star Wars-esque Future (Mort's Time)
EOF

echo ""
read -p "Enter Selection [1-5]: " selection

case $selection in
    1) ACC_LOCATION=0; ;;
    2) ACC_LOCATION=1; ;;
    3) ACC_LOCATION=2; ;;
    4) ACC_LOCATION=3; ;;
    5) ACC_LOCATION=4; ;;
    *) "Invalid"; accuseLocation; ;;
esac
}

# Reading out endings
function endings() {
    if [[ ($ACC_PERSON -eq $KILLER) && ($ACC_LOCATION -eq $LOCATION) ]]; then
	printf "The truth undeniably revealed itself before you. "
	sleep 1; printf "Words; "; sleep 1; "phrases, "; sleep 1; echo "everything came together beautifully in a grlorious symphony of facts.'"
	sleep 1; printf "You were completely correct in all of your deductions. "
	sleep 1; printf "Justice would be the victor here, "
	sleep 1; echo "and all of time was saved."
	sleep 1; echo "Huzzah!"
    elif [[ ($ACC_PERSON -eq $KILLER) || ($ACC_LOCATION -eq $LOCATION) ]]; then
	printf "You had one piece of the puzzle, "
	sleep 1; echo "but it contributed little to the quick trial. "
	sleep 1; printf "Nobody knows the truth of what happened, "
	sleep 1; echo "and they never will..."
	sleep 1; printf "But hey, "; sleep 1; echo "at least you tried!"
    else
	printf "With no time to waste, the accused was sentenced. "
	sleep 1; printf "Unfortunately, you were more than just incorrect. "
	sleep 1; printf "Your assumption based on a lack of data ruined the lives and times of everyone, "
	sleep 1; echo "and you're now placed as a mockery of the International Time Meeting."
    fi
}

clear
sleep 1

accusePerson
AccuseLocation
endings

. $FILELOCATION/start.sh
