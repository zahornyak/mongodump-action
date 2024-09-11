#!/bin/bash

cd /action
mongodump --uri=$1 $2
echo "full command: mongodump --uri=$1 $2"
mkdir $GITHUB_WORKSPACE/dump
mv dump $GITHUB_WORKSPACE/

echo "Dump created and stored in $GITHUB_WORKSPACE/dump"

if [ "$3" = "true" ]; then
  tar -zcvf $GITHUB_WORKSPACE/dump.tar.gz $GITHUB_WORKSPACE/dump
  echo "Dump compressed and stored in $GITHUB_WORKSPACE/dump.tar.gz"
else
  echo "Not compressing the dump"
fi

