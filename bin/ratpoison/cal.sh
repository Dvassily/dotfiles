#!/bin/sh
date=$(date | awk '{print($3)}')
format_cal=$(cal | sed "s/ $date /<$date>/")
ratpoison -c "echo $format_cal"
