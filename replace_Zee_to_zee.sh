#!/bin/bash

# Step 1: Replace Zee/Zee in file content
find . -type f -exec sed -i 's/Zee/Zee/gI' {} +

# Step 2: Rename folders/files with Zee/Zee in name
find . -depth | while read f; do
    newname=$(echo "$f" | sed 's/Zee/Zee/gI')
    if [ "$f" != "$newname" ]; then
        mv "$f" "$newname"
    fi
done
