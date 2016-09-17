#!/bin/bash -x

cd $(dirname $0)

sudo apt-get install -y nginx redis-server python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php

