#!/bin/bash
for BS in "1K" "1M" "1G"; do
  for COUNT in 1 2 4 8 16 32 64 128 256 512 1024; do
    echo $BS - $COUNT
    cat Dockerfile | perl -p -e "s|__BS__|$BS|g" | perl -p -e "s|__COUNT__|$COUNT|g" > ./Dockerfile-$BS-$COUNT
  done
done
