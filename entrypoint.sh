#!/bin/bash

cd /action
mongodump $1
mkdir $GITHUB_WORKSPACE/dump
mv dump $GITHUB_WORKSPACE/dump
ls -la $GITHUB_WORKSPACE/dump

echo "Dump created and stored in $GITHUB_WORKSPACE/dump"

if [ "$2" = "true" ]; then
  tar -zcvf $GITHUB_WORKSPACE/dump.tar.gz $GITHUB_WORKSPACE/dump
  echo "Dump compressed and stored in $GITHUB_WORKSPACE/dump.tar.gz"
else
  echo "Not compressing the dump"
fi

