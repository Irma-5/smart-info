#!/usr/bin/env bash

res=$(sudo smartctl --scan)
IFS=" " read -a a <<< $res
if ! (test -d "smart_info")
then
    mkdir smart_info
fi
for i in ${!a[@]}; do
    if (($i % 7 == 0)) then
    	IFS=/ read -a name <<< ${a[$i]}
    	sudo smartctl -a ${a[$i]} > smart_info/${name[2]}.txt
    fi
done