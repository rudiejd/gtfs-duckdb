#!/bin/bash
for file in $1/*; do
    if [[ $file == *.txt ]]; then
       base=$(basename ${file})
       echo "CREATE TABLE ${base%%.*} AS" >> $2
       echo " SELECT * FROM read_csv('$file');" >> $2
    fi
done
