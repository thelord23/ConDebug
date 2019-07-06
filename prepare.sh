#!/bin/sh
echo "Creating busybox binary and musl library from alpine image"
rm busybox
rm ld-musl-x86_64.so.1
docker run -itd --rm --name alp_tmp alpine > /dev/null
docker cp alp_tmp:/lib/ld-musl-x86_64.so.1 ./ld-musl-x86_64.so.1
docker cp alp_tmp:/bin/busybox ./busybox
docker kill alp_tmp > /dev/null
