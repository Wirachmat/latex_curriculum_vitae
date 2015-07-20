#!/bin/bash
xelatex cv_10.tex
echo "First run of xelatex passed"
biber cv_10.bcf
echo "Run of biber passed"
xelatex cv_10.tex
echo "Second run of xelatex passed"
echo "Shrinking PDF"
gs -o Bewerbungsunterlagen_Manns.pdf -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress cv_10.pdf
echo "All done"

