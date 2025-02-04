#!/bin/bash

DOMAIN="$1"
COOKIE="$2"
# Passive crawl
echo "$DOMAIN" | waybackurls | grep -Eiv '\.(css|jpg|jpeg|png|svg|img|gif|exe|mp4|f4v|pdf|doc|ogv|webm|wmv|webp|mov|mp3|m4a|m4p|ppt|pptx|scss|tif|tiff|ttf|otf|woff|woff2|bmp|ico|eot|htc|swf|rtf|image|rf)' | sort -u > data/wayback.txt
gau "$DOMAIN" --threads 1 | grep -Eiv '\.(css|jpg|jpeg|png|svg|img|gif|exe|mp4|flv|pdf|doc|ogv|webm|wmv|webp|mov|mp3|m4a|m4p|ppt|pptx|scss|tif|tiff|ttf|fit|otf|woff|woff2|bmp|ico|eot|htc|swf|rtf|image|rf)' | sort -u >> data/wayback.txt

# Active crawl
echo "$DOMAIN" | katana -jc -automatic-form-fill -silent -H "$COOKIE" -headless -system-chrome -crawl-scope "$1" -extension-filter css,jpg,jpeg,png,svg,img,gif,mp4,flv,pdf,doc,ogv,webm,wmv,webp,mov,mp3,m4a,m4p,ppt,pptx,scss,tif,tiff,ttf,otf,woff,woff2,bmp,ico,eot,htc,swf,rtf,image > data/katana.txt