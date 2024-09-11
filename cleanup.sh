#!/bin/bash

rm -rf $GITHUB_WORKSPACE/dump
if [ $? -eq 0 ]; then
  echo "Dump removed"
fi

if [ "$2" = "true" ]; then
  rm $GITHUB_WORKSPACE/dump.tar.gz
  if [ $? -eq 0 ]; then
    echo "Compressed dump removed"
  fi
fi
