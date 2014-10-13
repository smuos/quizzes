#!/bin/bash
# This program takes a single input YAML filename 
#it compiles the file with xelatex and opens the resulting pdf

if [ $# -eq 1 ]
then
  #Determine output file names
  texFile=$(echo "$1" | sed 's/\.yaml/.tex/')
  pdfFile=$(echo "$1" | sed 's/\.yaml/.pdf/')

  #Perform pandoc conversion
  pandoc --template=quiz.xelatex.template $1 -o $texFile
  xelatex $texFile
  xelatex $texFile
  open $pdfFile
else
  echo "$0: takes only one argument, the path of the file to typeset"
  exit 1
fi

