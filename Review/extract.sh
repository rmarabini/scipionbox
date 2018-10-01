#!/bin/bash
export INFILE=scipionbox.pdf
pages=("20")
figures=("01" "02")
#for ((i=0;i<${#pages[@]};++i)); do
#    pdftk $INFILE cat ${pages[i]} output figure_${figures[i]}.pdf
#done

#RECOMPILE document with table caption OK.
pdftk $INFILE cat 1-17 output manuscript_17.pdf
pdftk $INFILE cat 1-18 output manuscript_18.pdf
pdftk $INFILE cat 18-18 output listFigures.pdf
pdftk $INFILE cat 19-19 output Figure1.pdf
pdftk $INFILE cat 20-20 output Figure2.pdf
