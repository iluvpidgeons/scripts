#!/bin/bash

echo "yo whats broken

audio (1)
camera (2)
ventilation (3)
random (r)
nothing bruh idc (c)"

read -p ": " answer1

case "$answer1" in
    *1*)
        audio=1
        ;;&
    *2*)
        camera=1
        ;;&
    *3*)
        ventilation=1
        ;;  
esac

if [[ "$answer1" == r ]]; then
    audio=$((RANDOM % 2))
    camera=$((RANDOM % 2))
    ventilation=$((RANDOM % 2))
fi

if [[ "$answer1" == c ]]; then
    audio=0 
    camera=0
    ventilation=0
fi

clear
tput setaf 2
echo "system restart
menu>>>
"

if [[ "$audio" == 1 ]]; then
    echo "  (1)audio devices: BROKEN"
else
    echo "  (1)audio devices"
fi

if [[ "$camera" == 1 ]]; then
    echo "  (2)camera systems: BROKEN"
else
    echo "  (2)camera systems" 
fi

if [[ "$ventilation" == 1 ]]; then
    echo "  (3)ventilation: BROKEN"
else
    echo "  (3)ventilation"
fi  

echo "
  (4)reboot all"
echo "  (5)exit"

tput sgr0

read -p ": " answer2

if [[ "$answer2" == "1" ]] ;then
    audio=1
fi

if [[ "$answer2" == "2" ]] ;then
    camera=1
fi

if [[ "$answer2" == "3" ]] ;then
    ventilation=1
fi

if [[ "$answer2" == "4" ]] ;then
    audio=1
    camera=1
    ventilation=1
fi

if [[ "$answer2" == "5" ]] ;then
    echo "ok bye chat ✌️"
    exit
fi