#!/bin/bash

# define source and dest
src="./source/"
dest="./dest/"

for subdir in "$src"/*; do
	# get the name of the subdir
	subdir_name=$(basename "$subdir")
	# create the subdir in dest
	mkdir -p "$dest/$subdir_name"
	# copy the files from subdir to dest
	cp "$subdir"/* "$dest/$subdir_name"
done
```