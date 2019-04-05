#!/bin/bash

acpu() { iostat | tail -1 | awk '{print$6}'; }
aram() { top -l 1 -s 0 -u -F | head -6 | tail -1 | awk '{print$6}'; }

while [ true ]
do
    echo $(aram) > ~/Dotfiles/.scripts/stats.txt
    echo $(acpu) >> ~/Dotfiles/.scripts/stats.txt
    sleep 5
done

