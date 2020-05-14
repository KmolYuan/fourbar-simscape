#!/usr/bin/env bash
# Usage:
# sh compile.sh FILE_NUMBER

BASEDIR=$(readlink -f "$(dirname "$(readlink -f "${0}")")")
FILE=($(ls hw*.md))

if [[ "$(uname)" == "Linux" ]]
then
  FONT=ukai.ttc
  MONOFONT="DejaVu Sans Mono"
else
  FONT=DFKai-SB
  MONOFONT=Consolas
fi

for f in "${FILE[@]}"
do
  pandoc ${f} -o $(basename -- "${f%.*}").pdf -M link-citations=true --bibliography=refer.bib --csl=ieee.csl --pdf-engine=xelatex -V CJKmainfont="${FONT}" -V monofont="${MONOFONT}" -V fontsize=12pt -V documentclass=extarticle
done
