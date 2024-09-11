#!/bin/bash

rm -rf $GITHUB_WORKSPACE/dump

if [ "$2" = "true" ]; then
  rm $GITHUB_WORKSPACE/dump.tar.gz
fi