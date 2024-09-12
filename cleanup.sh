#!/bin/bash

#rm -rf $GITHUB_WORKSPACE/dump
#echo "Dump removed"
ls -la


if [ "$2" = "true" ]; then
  rm $GITHUB_WORKSPACE/dump.tar.gz
  if [ $? -eq 0 ]; then
    echo "Compressed dump removed"
  fi
fi
