#!/bin/bash

cd /action
$1 --uri=$2 $3
echo "full command: $1 --uri=$2 $3"
mkdir $GITHUB_WORKSPACE/dump
mv dump $GITHUB_WORKSPACE/

echo "Dump created and stored in $GITHUB_WORKSPACE/dump"

if [ "$4" = "true" ] && [ "$1" = "mongodump" ]; then
  cd $GITHUB_WORKSPACE
  tar -zcvf dump.tar.gz dump
  echo "Dump compressed and stored in $GITHUB_WORKSPACE/dump.tar.gz"
else
  echo "Not compressing the dump"
fi

