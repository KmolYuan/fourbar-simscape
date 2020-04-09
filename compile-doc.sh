#!/usr/bin/env bash
# Usage:
# sh compile.sh FILE_NUMBER

BASEDIR=$(readlink -f "$(dirname "$(readlink -f "${0}")")")
FILE="${BASEDIR}/report.md"

if [[ "$(uname)" == "Linux" ]]
then
  FONT=ukai.ttc
  MONOFONT="DejaVu Sans Mono"
else
  FONT=DFKai-SB
  MONOFONT=Consolas
fi

pandoc ${FILE} -o "$(basename -- "${FILE%.*}").pdf" -M link-citations=true \
--bibliography=refer.bib --csl=ieee.csl --pdf-engine=xelatex -V CJKmainfont="${FONT}" -V monofont="${MONOFONT}"
