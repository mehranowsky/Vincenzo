#!/bin/bash

USE_KATANA="$2"
fallparams -u data/wayback.txt -silent
if [ "$USE_KATANA" = true ]; then
    cat data/urls.txt | unfurl keys | anew -q data/parameters.txt
else
    cat data/wayback.txt | unfurl keys | anew -q data/parameters.txt
fi
