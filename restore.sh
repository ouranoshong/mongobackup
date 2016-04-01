#!/bin/bash

VAR_FILE=$(dirname $0)/vars.sh

if [ ! -f "$VAR_FILE" ]; then
	VAR_FILE=$(pwd)/$VAR_FILE
fi

source $VAR_FILE

if [ -d "$DATA_DIR" ]; then
	echo "/usr/local/bin/mongo-oplog-backup merge --dir $DATA_DIR"
fi

if [ -d "$DATA_DIR" ]; then
	echo "/usr/bin/mongorestore --host $HOST_DES --drop --oplogReplay $DATA_DIR/dump"
fi
