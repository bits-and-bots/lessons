#!/bin/bash

for f in lesson*.tex; do
  echo "********"
  echo "Building $f"
  echo "********"
  xelatex $f
  if [[ -e ${f/%tex/pdf} ]]; then
    rm ${f/%tex/aux} ${f/%tex/log} ${f/%tex/out}
    mv ${f/%tex/pdf} out/${f/%tex/pdf}
  else
    echo "PDF was not created: check ${f/%tex/log} for details"
  fi
done
