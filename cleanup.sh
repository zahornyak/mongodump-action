#!/bin/bash

rm -rf $GITHUB_WORKSPACE/dump

if [ "$2" = "true" ]; then
  rm $GITHUB_WORKSPACE/dump.tar.gz
  ls -la $GITHUB_WORKSPACE/dump.tar.gz
  if [ $? -ne 0 ]; then
    echo "Compressed dump removed"
  fi
fi

ls -la $GITHUB_WORKSPACE/dump
if [ $? -ne 0 ]; then
  echo "Dump removed"
fi
