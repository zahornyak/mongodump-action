#!/bin/bash


if [ -d $GITHUB_WORKSPACE/dump ]; then
  rm -rf $GITHUB_WORKSPACE/dump
  echo "Dump removed"
else
  echo "Dump does not exist"
fi

if [ -f $GITHUB_WORKSPACE/dump.tar.gz ]; then
  rm $GITHUB_WORKSPACE/dump.tar.gz
  echo "Compressed dump removed"
else
  echo "Compressed dump does not exist"
fi