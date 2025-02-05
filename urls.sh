#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
DOMAIN="$1"
COOKIE="$2"

echo "Crawling..."
$SCRIPT_DIR/modules/crawl.sh "$DOMAIN" "$COOKIE" && sort -u data/wayback.txt data/active.txt > data/urls.txt && rm data/active.txt
