#!/bin/bash
for BS in "1K" "1M" "1G"; do
  for COUNT in 1 2 4 8 16 32 64 128 256 512 1024; do
    echo $BS - $COUNT
    TAG=${COUNT}$(echo $BS | tr -d 1 | tr "[:upper:]" "[:lower:]")
    docker push amsy810/largefile-nginx:$TAG
  done
done
