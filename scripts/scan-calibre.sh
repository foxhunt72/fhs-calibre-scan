#!/bin/bash

export LIBRARY="/library/"
export BOOKS="/books"

find "$BOOKS" -name "*.epub" | while read zin 
do
    echo "try: $zin" >&2; calibredb add --library-path="$LIBRARY" "$zin" 2>&1
done &> /logs/scan-books.log

echo -n "Added books: "
grep "Added book ids:" /logs/scan-books.log | wc -l

