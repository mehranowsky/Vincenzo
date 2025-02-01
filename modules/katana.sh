#!/bin/bash

echo "$1" | katana -jc -automatic-form-fill -silent -headless -system-chrome -crawl-scope "$1" -extension-filter css,jpg,jpeg,png,svg,img,gif,mp4,flv,pdf,doc,ogv,webm,wmv,webp,mov,mp3,m4a,m4p,ppt,pptx,scss,tif,tiff,ttf,otf,woff,woff2,bmp,ico,eot,htc,swf,rtf,image > data/katana.txt
