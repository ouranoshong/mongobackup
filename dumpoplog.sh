#!/bin/bash

VAR_FILE=$(dirname $0)/vars.sh

if [ ! -f "$VAR_FILE" ]; then
        VAR_FILE=$(pwd)/$VAR_FILE
fi

source $VAR_FILE

COMM="/usr/local/bin/mongo-oplog-backup backup --host $HOST_SRC --dir $BACKUP_DIR --oplog"

echo $COMM;

