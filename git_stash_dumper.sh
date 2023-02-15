#!/bin/bash

# Define the file to dump the contents of the git stash
output_file="git_stash_dump.txt"

# Get the list of stashes
stash_list="$(git stash list)"

# Loop through each stash in the list
while read -r stash; do
  # Extract the stash index
  stash_index="$(echo "$stash" | cut -d: -f1)"

  # Dump the stash contents to the output file
  echo "Stash $stash_index:" >> "$output_file"
  git stash show -p "$stash_index" >> "$output_file"
done <<< "$stash_list"
