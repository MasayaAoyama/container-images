#!/bin/sh

PART_SIZE=$(( ${SIZE_MB} * 1024 / ${NUM_FILES} ))
FILE_PREFIX=${FILE_PREFIX:-$HOSTNAME}

COUNT=0

while true; do
  COUNT=$(( $COUNT + 1 ))
  if [ $COUNT -gt $MAX_LOOP ]; then
    exit 0
  fi

  for i in `seq 1 ${NUM_FILES}`; do
    dd if=/dev/urandom of=${TARGET_DIR}/${FILE_PREFIX}-${i}.txt bs=1024 count=${PART_SIZE}
  done

  echo "$COUNT times"
done

