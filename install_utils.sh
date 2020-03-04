#!/bin/bash

input="./utils.txt"
brew update
brew upgrade
while IFS= read -r line
do
  if [ ! -z "$line" ] && [ "${line:0:1}" != "#" ]; then
    brew install "$line"
  fi
done < "$input"
