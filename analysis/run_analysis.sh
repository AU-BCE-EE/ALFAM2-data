#!/usr/bin/env bash
# Shell script to run whatever R analysis is present

for dir in */; do
  echo "Running in: $dir"
  (
    cd "$dir"
    cd scripts
    Rscript main.R
  )
done

