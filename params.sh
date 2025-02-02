#!/bin/bash

USE_KATANA="$2"
fallparams -u data/wayback.txt -silent -o data/params.txt
if [ "$USE_KATANA" = true ]; then
    cat data/urls.txt | unfurl keys | anew -q data/params.txt
else
    cat data/wayback.txt | unfurl keys | anew -q data/params.txt
fi
