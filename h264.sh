#!/bin/bash

if [ -p fifo264 ]
then
  rm fifo264
fi
mkfifo fifo264
nc -l -v -p 5555 > fifo264