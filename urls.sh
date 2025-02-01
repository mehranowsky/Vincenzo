#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
DOMAIN="$1"
USE_KATANA="$2"

$SCRIPT_DIR/modules/wayback.sh "$DOMAIN"
if [ "$USE_KATANA" = true ]; then
    echo "Running Katana tool..."
    $SCRIPT_DIR/modules/katana.sh "$DOMAIN" && sort -u data/wayback.txt data/katana.txt > data/urls.txt && rm data/katana.txt
fi
