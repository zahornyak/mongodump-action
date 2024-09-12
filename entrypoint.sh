#!/bin/bash

$1 --uri=$2 $3
echo "full command: $1 --uri=$2 $3"

if [ "$1" = "mongodump" ]; then
  mv dump $GITHUB_WORKSPACE/
  echo "Dump created and stored in $GITHUB_WORKSPACE/dump"
else
  echo "Not a mongodump command. Skipping moving dump"
fi

if [ "$4" = "true" ] && [ "$1" = "mongodump" ]; then
  cd $GITHUB_WORKSPACE
  tar -zcvf dump.tar.gz dump
  echo "Dump compressed and stored in $GITHUB_WORKSPACE/dump.tar.gz"
else
  echo "Not compressing the dump"
fi

