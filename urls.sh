#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
DOMAIN="$1"

echo "Crawling..."
$SCRIPT_DIR/modules/crawl.sh "$DOMAIN" && sort -u data/wayback.txt data/katana.txt > data/urls.txt && rm data/katana.txt
