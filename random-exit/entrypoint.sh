#!/bin/bash

if [ $(($RANDOM % 2)) -eq 0 ]; then
  echo "Succeeded"
  true
else
  echo "Failed"
  false
fi

