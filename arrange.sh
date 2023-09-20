#!/bin/bash

for file in files/*.txt; do
  first_letter=$(basename "$file" | cut -c 1)
  first_letter=$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')
  mv "$file" "$first_letter/"
done