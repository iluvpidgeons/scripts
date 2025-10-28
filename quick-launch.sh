#!/bin/bash

while true
do
  read -p "whatchu wanna launch
  (1) steam
  (2) firefox
  (3) exit
  : " answer

  if [ $answer = 1 ]; then
    echo "launching steam"
    steam
  fi

  if [ $answer = 2 ]; then
    echo "launching firefox"
    firefox
  fi

  if [ $answer = 3 ]; then
    echo "ok bye chat ✌️"
    exit
  fi
done