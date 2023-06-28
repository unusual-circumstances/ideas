#!/bin/bash

# find the highest-numbered directory
prev_dir=$(ls -d ../../* | grep -E "/[0-9]{3}" | sort -n | tail -n 1)

# extract the number from the directory name and add one to get the new directory number
dir_num=$(printf "%03d" $((10#${prev_dir: -3} + 1)))

# construct the new directory name
new_dir="../../$dir_num"

# create the new directories
mkdir "$new_dir"
mkdir "$new_dir/code"

# create the new file
touch "$new_dir/idea.md"

# create the template in the code directory
touch "$new_dir/code/template.py"

echo "New project directory $new_dir has been created with idea.md and code/template.py files."
