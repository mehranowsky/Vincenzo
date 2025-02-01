#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
mkdir data

echo -e "\e[35m-------GO AHEAD MR.PIPINO-------\e[0m"

# Initialize variables
DOMAIN=""
MODE=""
USE_KATANA=false

# Parse options
while getopts "d:upak" option; do
    case $option in
        d) DOMAIN=$OPTARG ;;
        u) MODE="u" ;;
        p) MODE="p" ;;
        a) MODE="a" ;;
        k) USE_KATANA=true ;;
        *) 
            echo "Usage: $0 [-u] URLs mode [-p] Params mode [-d] Target domain"
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
        $SCRIPT_DIR/urls.sh "$DOMAIN" "$USE_KATANA"
        ;;
    p)
        echo -e "\e[31m***********Params***********\e[0m"
        $SCRIPT_DIR/params.sh "$DOMAIN"
        ;;
    a)
        echo -e "\e[31m************URLs************\e[0m"
        $SCRIPT_DIR/urls.sh "$DOMAIN" "$USE_KATANA"
        echo -e "\e[31m***********Params***********\e[0m"
        $SCRIPT_DIR/params.sh "$DOMAIN"
        ;;
    *)
        echo "Usage: $0 [-u] URLs mode [-p] Params mode [-a] All mode [-d] Target domain"
        exit 1
        ;;
esac
