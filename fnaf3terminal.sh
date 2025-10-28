#!/bin/bash

answer2=6
while true
do
    if [[ "$answer2" == 6 ]]; then
        echo "yo whats broken
        audio (1)
        camera (2)
        ventilation (3)
        random (r)
        nothing bruh idc (c)
        all (a)
        exit (q)"

        read -p ": " answer1

        if [[ "$answer1" == "q" ]] ;then
            echo "ok bye chat ✌️"
            exit
        fi
        
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

        if [[ "$answer1" == a ]]; then
            audio=1 
            camera=1
            ventilation=1
        fi
        answer2=
    else
        clear
        tput setaf 2
        echo "system restart"
        echo "menu>>>"

        if [[ "$audio" == 1 ]]; then
            echo "    (1)audio devices: BROKEN"
        else
            echo "    (1)audio devices"
        fi

        if [[ "$camera" == 1 ]]; then
            echo "    (2)camera systems: BROKEN"
        else
            echo "    (2)camera systems" 
        fi

        if [[ "$ventilation" == 1 ]]; then
            echo "    (3)ventilation: BROKEN"
        else
            echo "    (3)ventilation"
        fi  
        echo ""
        echo "    (4)reboot all"
        echo "    (5)exit"
        tput sgr0
        echo ""
        echo "(6) break shit"

        # debug shit
        # echo "$audio"
        # echo "$camera"
        # echo "$ventilation"

        read -p ": " answer2

        if [[ "$answer2" == "1" ]] ;then
            audio=0
            echo "25%"
            sleep 0.33
            echo "50%"
            sleep 0.33
            echo "75"
            sleep 0.33
            echo "100%"
            sleep 0.05
            echo "done"
            sleep 0.75
        fi

        if [[ "$answer2" == "2" ]] ;then
            camera=0
            echo "25%"
            sleep 0.33
            echo "50%"
            sleep 0.33
            echo "75"
            sleep 0.33
            echo "100%"
            sleep 0.05
            echo "done"
            sleep 0.75
        fi

        if [[ "$answer2" == "3" ]] ;then
            ventilation=0
            echo "25%"
            sleep 0.33
            echo "50%"
            sleep 0.33
            echo "75"
            sleep 0.33
            echo "100%"
            sleep 0.05
            echo "done"
            sleep 0.75
        fi

        if [[ "$answer2" == "4" ]] ;then
            audio=0
            camera=0
            ventilation=0
            echo "10%"
            sleep 0.25
            echo "20%"
            sleep 0.25
            echo "30%"
            sleep 0.25
            echo "40%"
            sleep 0.25
            echo "50%"
            sleep 0.25
            echo "60%"
            sleep 0.25
            echo "70%"
            sleep 0.25
            echo "80%"
            sleep 0.25
            echo "90%"
            sleep 0.25
            echo "100%"
            sleep 0.05
            echo "done"
            sleep 0.75
        fi

        if [[ "$answer2" == "5" ]] ;then
            echo "ok bye chat ✌️"
            exit
        fi
        
        if [[ "$answer2" == "6" ]] ;then
            answer2=6
        fi
    fi
done