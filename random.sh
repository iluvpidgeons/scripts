#!/bin/bash
 
read -p "Do you want to continue? (y/n): " answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
    echo "You answered yes."
else
    echo "You answered no or something else."
fi