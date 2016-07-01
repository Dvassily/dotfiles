#!/bin/bash
for file in *; do
    if [ $(cat $i | grep $1 | wc -l) -eq 1 ]; then
	echo $i;
    fi;
done
