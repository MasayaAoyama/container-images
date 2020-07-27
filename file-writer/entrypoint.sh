#!/bin/sh

PART_SIZE=$(( ${SIZE_MB} * 1024 / ${NUM_FILES} ))

while true; do
  for i in `seq 1 ${NUM_FILES}`; do
    dd if=/dev/urandom of=${TARGET_DIR}/${HOSTNAME}-${i}.txt bs=1024 count=${PART_SIZE}
  done
done

