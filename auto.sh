#!/bin/bash

DOMAIN=$1
touch data/auto/urls.txt

#PASSIVE CRAWLING
modules/passive.sh $DOMAIN >> data/auto/urls.txt

#ACTIVE CRAWLING
