#!/bin/bash

VAR_FILE=$(dirname $0)/vars.sh

if [ ! -f $VAR_FILE ]; then
	VAR_FILE=$(pwd)/$VAR_FILE
fi

source $VAR_FILE

/usr/local/bin/mongo-oplog-backup merge --dir $DATA_DIR 2>&1 >> $WORK_DIR/restore.log

/usr/bin/mongorestore --host $DB_HOST --drop --oplogReplay $DATA_DIR/dump
