#!/bin/bash

cd /compile/source/linux-stable-rp

for i in `cat /compile/doc/stable-rp/misc.rpi/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/stable-rp/misc.rpi/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
