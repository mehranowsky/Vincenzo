#!/bin/bash

if [ ! -e data/urls.txt ];then
    echo "**You should crawl the target first! There is no url to extracting params**"
    exit 1
fi

fallparams -u data/urls.txt -silent -o data/params.txt
cat data/urls.txt | unfurl keys | anew -q data/params.txt
