#!/bin/bash

HUROCUP_EVENTS="all-round-laws.tex basketball-laws.tex climbing-wall.tex hurocup-laws.tex iroc_junkyard_challenge.tex lift-and-carry-laws.tex marathon-laws.tex obstacle-run-laws.tex organizational-laws.tex penalty-kick-laws.tex sprint.tex united-laws.tex weight-lifting-laws.tex"

for f in $HUROCUP_EVENTS; do
    pdflatex $f
    pdflatex $f
done

