#!/bin/bash

input="./apps.txt"
while IFS= read -r line
do
  if [ ! -z "$line" ] && [ "${line:0:1}" != "#" ]; then
    brew cask install "$line"
  fi
done < "$input"
