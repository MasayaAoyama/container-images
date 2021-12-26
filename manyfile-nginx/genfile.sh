for i in `seq 1 $NUM_FILES`; do
  dd if=/dev/urandom of=/usr/share/nginx/html/$i.html bs=1K count=1024;
done

