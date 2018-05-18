#!/bin/bash
TIMESTAMP=$(date +"%Y%m%d_%H%M%S_%N")
FILEPATH="$1";
FILE_ORIG_NAME=$(basename "$FILEPATH")
FILE_ORIG_PATH=$(dirname "$FILEPATH")
EXT="$2";
if [ -z "$2" ]; then
        EXT="snap";
fi
FILE_DEST_PATH="$3";
if [ -z "$3" ]; then
        FILE_DEST_PATH="$FILE_ORIG_PATH";
fi
SNAPSHOT_NAME="$FILE_DEST_PATH/$FILE_ORIG_NAME.$TIMESTAMP.$EXT";
cp -a $FILEPATH $SNAPSHOT_NAME
echo $SNAPSHOT_NAME
