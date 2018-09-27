#!/bin/bash
export INFILE=scipionbox.pdf
pages=("20")
figures=("01")
for ((i=0;i<${#pages[@]};++i)); do
    pdftk $INFILE cat ${pages[i]} output figure_${figures[i]}.pdf
done

#RECOMPILE document with table caption OK.
pdftk $INFILE cat 1-18 output manuscript.pdf
pdftk $INFILE cat 19-19 output listFigures.pdf
