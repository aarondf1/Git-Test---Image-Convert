#!/bin/bash -l

N="$(wc -l $1 | cut -d" " -f1)"

HEIGHT="$(($N*25))"

echo 'text 15,15 "' > tmp
cat $1 >>tmp
echo '"' >>tmp

convert -size 1200x$HEIGHT xc:white -font Courier -pointsize 16 -fill black -draw @tmp $2

rm tmp
