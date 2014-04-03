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
  echo "Creating symlink for "$name
  mv ~/.$name ~/.$name.backup
  ln -s $file ~/.$name
done

echo "Created symlinks to dotfiles in dots."

