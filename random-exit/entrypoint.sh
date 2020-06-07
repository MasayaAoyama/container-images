#!/bin/bash

if [ $(($RANDOM % 2)) -eq 0 ]; then
  echo "Succeeded"
  exit 0
else
  echo "Failed"
  exit 1
fi

