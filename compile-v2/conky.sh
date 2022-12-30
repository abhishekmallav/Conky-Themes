#!/bin/bash

time=$(date "+%H")

if [[ $time -ge 7 ]] && [[ $time -le 18 ]]
then
    killall conky
    ~/.config/conky/compile-v2/compile-light/light.sh
else
    killall conky
    ~/.config/conky/compile-v2/compile-dark/dark.sh
fi
