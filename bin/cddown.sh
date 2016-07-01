#!/bin/bash

function cddown {
    dest=$1
    cur=$(pwd)

    while [ "$(basename $(pwd))" != "$dest" ]; do
	cd ..
    done
    
    #if [ "$(basename $(pwd))" != "$dest" ]; then
    #    cd $cur
    #fi
}
