#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "ENTER YOUR GUESS"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "YOUR GUESS IS LESS THAN THE CORRECT ANSWER"
        elif [ $number -gt $true_ans ]
        then
            echo "YOUR GUESS IS GREATER THAN THE CORRECT ANSWER"
        else
            echo " CONGRATULATIONS! YOU HAVE ENTERED THE CORRECT ANSWER"
        break;
        fi
    done
}
echo "GUESS THE NUMBER OF FILES IN THE CURRENT DIRECTORY"
guess
