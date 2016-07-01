#!/bin/bash

nb_line=20
sleep_time=2
i=0


while true; do
    clear
    tail -n $nb_line /var/log/httpd/access_log
    sleep $sleep_time

    echo ++$i;
done

