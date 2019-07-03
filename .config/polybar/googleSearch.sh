#!/bin/bash

url="https://www.google.com/search?q="

search=$(zenity --entry --text="Search for?") 

if [ -z "$search" ];
then
    exit 0
fi

tmp="${search//@/%40}"
tmp="${tmp//#/%23}"
tmp="${tmp//%/%25}"
tmp="${tmp//+/%2B}"
final="${search// /+}"

firefox ${url}${final} &
