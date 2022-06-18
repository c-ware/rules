#!/bin/sh
# Preprocess with M4 and load documentation.

for docfile in template/*.tmp; do
    name=`echo "$docfile" | xargs basename | sed 's/\.tmp$//g'`
    m4 -I template "$docfile" > "doc/$name.cware"
done
