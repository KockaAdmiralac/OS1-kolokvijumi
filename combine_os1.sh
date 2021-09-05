#!/bin/sh
set -e
cd "${0%/*}"
if [ -z "$1" ]
then
    node combine.js ./os1/
else
    if [ "$1" == "print" ]
    then
        node combine.js ./os1/ --print
    else
        node combine.js ./os1/ "--year=$1"
    fi
fi
if [ "$1" == "print" ]
then
    pandoc combined-print.md -s -t latex -o combined-print.tex
    pdflatex --enable-installer --shell-escape combined-print.tex
    pdflatex --enable-installer --shell-escape combined-print.tex
else
    pandoc combined-web.md -s -t latex -o combined-web.tex
    pdflatex --enable-installer --shell-escape combined-web.tex 
    pdflatex --enable-installer --shell-escape combined-web.tex 
fi