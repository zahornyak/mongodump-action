#!/bin/bash

rm -rf $GITHUB_WORKSPACE/dump

if [ "$2" = "true" ]; then
  rm $GITHUB_WORKSPACE/dump.tar.gz
fi

echo $(la -la $GITHUB_WORKSPACE)
echo "Cleanup completed"