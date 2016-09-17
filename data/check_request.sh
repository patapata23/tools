#!/bin/bash

sudo cat /var/log/nginx/access.log | awk '{print $6" "$9" "$16}' \
| sed 's/\/posts\?.*/\/posts\?.../g' \
| sed 's/\/@.*/\/@user/' \
| sed 's/\/image\/.*/\/image\/.../' \
| sort -k 3,3 \
| awk '{arr[$1" "$3]+=$2;cntarr[$1" "$3]+=1;} END {for (i in arr) {print arr[i]"\t"cntarr[i]"\t"i}}' \
| sort -nr
