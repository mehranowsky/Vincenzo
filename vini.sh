#!/bin/bash

echo -e "\e[35m-------GO AHEAD MR PIPINO-------\e[0m"
getopts "am" MODE
getopts "d:" domain

DOMAIN=$OPTARG
case $MODE in
    a)
        echo -e "\e[31m************AUTOMATE************\e[0m"
        ./auto.sh "$DOMAIN"
        ;;
    m)
        echo -e "\e[36m*************MANUAL*************\e[0m"
        ./manual.sh "$DOMAIN"
        ;;
    *)
        echo "There is no MODE!"
        exit 1
        ;;
esac
