#!/bin/bash

cd $(dirname $0)

IP=$1

USERNAME=$2
USERNAME=${USERNAME:-isucon}

ls 
rsync -acv data $USERNAME@$IP:/tmp/
ssh $USERNAME@$IP "/tmp/data/init.sh"
