#!/bin/bash

VAR_FILE=$(dirname $0)/vars.sh

if [ ! -f $VAR_FILE ]; then
        VAR_FILE=$(pwd)/$VAR_FILE
fi

source $VAR_FILE

/usr/local/bin/mongo-oplog-backup backup --host $DB_HOST --dir $BACKUP_DIR --oplog 2>&1 >> $WORK_DIR/oplog.log
