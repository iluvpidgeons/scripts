#!/bin/bash
 
read -p "are you a diddyblud (y/n): " answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo "mango six seven"
else
    echo "im finna shut ur shit down in 5 seconds"
    echo "5"
    sleep 1
    echo "4"
    sleep 1
    echo "3"
    sleep 1
    echo "2"
    sleep 1
    echo "1"
    sleep 1
    echo "ok bye"
    shutdown
fi