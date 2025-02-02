#!/bin/bash

fallparams -u data/urls.txt -silent -o data/params.txt
cat data/urls.txt | unfurl keys | anew -q data/params.txt