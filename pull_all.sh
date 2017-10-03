#!/bin/bash
echo "You are on :" `git rev-parse --abbrev-ref HEAD` "this will not be pulled!" && git fetch --all --prune && git branch | sed 's/*.*//' | sed 's|[ ]||g' | while read line ; do echo "Pulling :" $line; `git fetch origin $line:$line`; done
