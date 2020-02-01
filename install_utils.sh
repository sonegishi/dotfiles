#!/bin/bash

input="./utils.txt"
while IFS= read -r line
do
  if [ ! -z "$line" ] && [ "${line:0:1}" != "#" ]; then
    brew install "$line"
  fi
done < "$input"
