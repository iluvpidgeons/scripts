#!/bin/bash

read -p "whatchu wanna launch
(1) steam
(2) firefox
: " answer

if [ $answer = 1 ]; then
  echo "launching steam"
  steam
fi

if [ $answer = 2 ]; then
  echo "launching firefox"
  firefox
fi