#!/bin/bash
mkdir blog/public/uploads
for i in {1..700}; do
  echo "Generating directory $i of 700"
  mkdir blog/public/uploads/$i
  for j in {1..700}; do
    dd if=/dev/urandom bs=1 count=1 of=blog/public/uploads/$i/file$j >/dev/null 2>&1
  done
done
