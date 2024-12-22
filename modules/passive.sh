DOMAIN=$1

#VirusTotalX

#GAU
echo $DOMAIN | gau | grep -Eiv '\.
(css|jpg|jpeg|png|svg|img|gif|exe|mp4|flv|pdf|doc|ogv|webm|wmv|webp|mov|mp3|m4a|
m4p|ppt|pptx|scss|tif|tiff|ttf|fit|otf|woff|woff2|bmp|ico|eot|htc|swf|rtf|image|rf)' | sort -u

#WAYBACKURLS
echo $DOMAIN | waybackurls | grep -Eiv '\.(css|jpg|jpeg|png|svg|img|gif|exe|mp4|f4v|pdf|
doc|ogv|webm|wmv|webp|mov|mp3|m4a|m4p|ppt|pptx|scss|tif|tiff|ttf|otf|woff|woff2|bmp|ico|
eot|htc|swf|rtf|image|rf)' | sort -u

#KATANA
echo $DOMAIN | katana -jc -known-files -automatic-form-fill -silent -headless -system-chrome -crawl-scope $1 -extension-filter css,jpg,jpeg,png,svg,img,gif,mp4,flv,pdf,doc,ogv,webm,wmv,webp,mov,mp3,m4a,m4p,ppt,pptx,scss,tif,tiff,ttf,otf,woff,woff2,bmp,ico,eot,htc,swf,rtf,image | sort -u

#ROBOFINDER