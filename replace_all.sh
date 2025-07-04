#!/bin/bash

# Step 1: Replace content inside all files (case-insensitive)
find . -type f -exec sed -i 's/Zee/Zee/gI' {} +

# Step 2: Rename files and folders (case-insensitive)
find . -depth -name "*Zee*" | while read f; do
    newname=$(echo "$f" | sed 's/Zee/Zee/gI')
    mv "$f" "$newname"
done
