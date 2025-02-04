#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
mkdir data

echo -e "\e[35m-----GO AHEAD MR.PIPINO-----\e[0m"

# Initialize variables
DOMAIN=""
MODE=""
COOKIE=""

# Parse options
while getopts "d:upac" option; do
    case $option in
        d) DOMAIN=$OPTARG ;;    # Set DOMAIN
        u) MODE="u" ;;          # Set mode to URLs
        p) MODE="p" ;;          # Set mode to Params
        a) MODE="a" ;;          # Set mode to All
        c) COOKIE="$OPTARG" ;;  # Set COOKIE
        *) 
            echo "Usage: $0 [-u] URLs mode [-p] Params mode [-d] Target domain [-a] All [-c] Cookie"
            exit 1
            ;;
    esac
done

# Check if domain is provided
if [ -z "$DOMAIN" ]; then
    echo -e "\e[31m***Domain name is not defined***\e[0m"
    exit 1
fi

# Execute based on MODE
case $MODE in
    u)
        echo -e "\e[31m************URLs************\e[0m"
        $SCRIPT_DIR/urls.sh "$DOMAIN" "$COOKIE"
        ;;
    p)
        echo -e "\e[31m***********Params***********\e[0m"
        $SCRIPT_DIR/params.sh "$DOMAIN"
        ;;
    a)
        echo -e "\e[31m************URLs************\e[0m"
        $SCRIPT_DIR/urls.sh "$DOMAIN" "$COOKIE"
        echo -e "\e[31m***********Params***********\e[0m"
        $SCRIPT_DIR/params.sh "$DOMAIN"
        ;;
    *)
        echo "Usage: $0 [-u] URLs mode [-p] Params mode [-d] Target domain [-a] All mode"
        exit 1
        ;;
esac
