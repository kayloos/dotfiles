#!/bin/bash

if [ $# == 1 ]; then
  location=$1
else
  location=~/
fi

dotfiles=dotfiles/dots/*
abs_path_files=$location$dotfiles

for file in $abs_path_files
do
  name=${file##*/}
  echo "Deleting backup for "$name
  rm ~/.$name.backup
done

echo "Created symlinks to dotfiles in dots."
