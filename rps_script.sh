#!/bin/bash

while true
do
    # show menu of input options
    echo "1. Rock"
    echo "2. Paper"
    echo "3. Scissors"
    echo "4. Done"

    # get choice from user
    read -p "Your choice [1-4]? " user_choice
    echo

    # generate random number between 1 and 4 for computer's choice
    computer=$(( ( RANDOM % 3 ) + 1 ))

    # compare each possible outcome and echo results
    if [[ ($user_choice = 1) && ($computer = 1) ]];
    then 
        echo "You chose 1. Rock"
        echo "Computer chose 1. Rock"
        echo "You tied. Try again."
        echo
    fi
    if [[ ($user_choice -eq 1) && ($computer -eq 2) ]];
    then 
        echo "You chose 1. Rock"
        echo "Computer chose 2. Paper"
        echo "You lost."
        echo
    fi
    if [[ ($user_choice -eq 1) && ($computer -eq 3) ]];
    then 
        echo "You chose 1. Rock"
        echo "Computer chose 3. Scissors"
        echo "You won!"
        echo
    fi
    if [[ ($user_choice -eq 2) && ($computer -eq 1) ]];
    then 
        echo "You chose 2. Paper"
        echo "Computer chose 1. Rock"
        echo "You won!"
        echo
    fi
    if [[ ($user_choice -eq 2) && ($computer -eq 2) ]];
    then 
        echo "You chose 2. Paper"
        echo "Computer chose 2. Paper"
        echo "You tied. Try again."
        echo
    fi
    if [[ ($user_choice -eq 2) && ($computer -eq 3) ]];
    then 
        echo "You chose 2. Paper"
        echo "Computer chose 3. Scissors"
        echo "You lost."
        echo
    fi
    if [[ ($user_choice -eq 3) && ($computer -eq 1) ]];
    then 
        echo "You chose 3. Scissors"
        echo "Computer chose 1. Rock"
        echo "You lost."
        echo
    fi
    if [[ ($user_choice -eq 3) && ($computer -eq 2) ]];
    then 
        echo "You chose 3. Scissors"
        echo "Computer chose 2. Paper"
        echo "You won!"
        echo
    fi
    if [[ ($user_choice -eq 3) && ($computer -eq 3) ]];
    then 
        echo "You chose 3. Scissors"
        echo "Computer chose 3. Scissors"
        echo "You tied. Try again."
        echo
    fi
    if [ $user_choice -eq 4 ];
    then 
        echo "Goodbye."
        break
    fi
done