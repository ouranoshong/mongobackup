#!/bin/bash

source $(cd "$(dirname $0)"; pwd)/vars.sh

if [ -d "$DATA_DIR" ]; then
	echo "/usr/local/bin/mongo-oplog-backup merge --dir $DATA_DIR"
fi

if [ -d "$DATA_DIR" ]; then
	echo "/usr/bin/mongorestore --host $HOST_DES --drop --oplogReplay $DATA_DIR/dump"
fi
