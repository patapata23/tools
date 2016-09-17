#!/bin/bash

cd $(dirname $0)

sudo cat /var/log/nginx/access.log | ./kataribe -f kataribe.toml
