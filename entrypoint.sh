#!/bin/bash

echo "full command: $1 --uri=$2 $3"

if [ "$1" = "mongodump" ] && $1 --uri=$2 $3
then
  echo "Dump created and stored in $GITHUB_WORKSPACE/dump"
else $1 --uri=$2 $3
  echo "Not a mongodump command. Skipping moving dump"
fi

if [ "$4" = "true" ] && [ "$1" = "mongodump" ]; then
  tar -zcvf dump.tar.gz dump
  echo "Dump compressed and stored in $GITHUB_WORKSPACE/dump.tar.gz"
else
  echo "Not compressing the dump"
fi

