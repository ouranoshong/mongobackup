#!/bin/bash

VAR_FILE=$(dirname $0)/vars.sh

if [ ! -f $VAR_FILE ]; then
        VAR_FILE=$(pwd)/$VAR_FILE
fi

source $VAR_FILE

if [ -d $BACKUP_DIR ]; then
	rm -rf $BACKUP_DIR
fi

/usr/local/bin/mongo-oplog-backup backup --host $DB_HOST --dir $BACKUP_DIR --full 2>&1 >> $WORK_DIR/full.log
