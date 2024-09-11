#!/bin/bash

rm -rf $GITHUB_WORKSPACE/dump

if [ "$2" = "true" ]; then
  rm $GITHUB_WORKSPACE/dump.tar.gz
  echo $(ls -la $GITHUB_WORKSPACE/dump.tar.gz)
  echo "Compressed dump removed"
fi

echo $(ls -la $GITHUB_WORKSPACE/dump)
echo "Cleanup completed"