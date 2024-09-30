#!/bin/bash

#defining colors:
RED='\e[31m'
YELLOW='\033[0;33m'
GREEN='\e[32m'
ENDCOLOR='\e[0m'

#defining "bookid" variable for the first argument.
bookid=$1


#function extracting name of the book from sites title
getname() {
  curl -s "https://flipbook.apps.gwo.pl/display/$bookid" |
  grep -oP '(?<=<title>).*?(?=</title>)' | tr -d ' '
}

#Defining variable for the name, and signing it value of the "getname" function.
name=$(getname)
#making a temporary (work?) directory for the book.
mkdir $name
#letting the user know what book is he downloading.
echo -e 'You are downloading: "'${GREEN}$name${ENDCOLOR}'"  :)'

#function with a loop that passes through all the pages of the books and downloads it into temporary directory
downloadbook() {
  i=0
  retVal=0
  while [ $retVal -eq 0 ]; do
    ((i++))
    curl "https://flipbook.apps.gwo.pl/book/getImage/bookId:$bookid/pageNo:$i.jpg" -o "$name/page_$i.jpg" --fail-with-body
    retVal=$? 
  done
}

#function that merges all the JPGs into one pdf using ImageMagick
merge () {
  magick $(ls -v $name/*.jpg) $name.pdf
}

#function that deletes the temporary directory (and makes it temporary xD).
clean () {
  rm -rf $name/
}

#calling (?) functions and echo-ing progress
downloadbook
echo -e "${YELLOW}Book downloaded. Merging and cleaning."
merge
clean
echo 'Book "'$name'" (probably) succesfully downloaded'
