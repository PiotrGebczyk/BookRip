#!/usr/bin/bash

bookid=$1

getname() {
  curl -s "https://flipbook.apps.gwo.pl/display/$bookid" |
  grep -oP '(?<=<title>).*?(?=</title>)' | tr -d ' '
}


name=$(getname)
mkdir $name

downloadbook() {
  i=0
  retVal=0
  while [ $retVal -eq 0 ]; do
    ((i++))
    wget "https://flipbook.apps.gwo.pl/book/getImage/bookId:$bookid/pageNo:$i.jpg" -P "$name/"
    retVal=$? 
  done
}

merge () {
  magick $(ls -v $name/*.jpg) $name.pdf
}

clean () {
  rm -rf $name/
}

downloadbook
merge
clean
