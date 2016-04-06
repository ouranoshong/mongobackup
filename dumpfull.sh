#!/bin/bash

$VAR_FILE=$(cd "$(dirname $0)"; pwd)/vars.sh

source $VAR_FILE

if [ -d "$BACKUP_DIR" ]; then
	rm -rf $BACKUP_DIR
fi

COMM="/usr/local/bin/mongo-oplog-backup backup --host $HOST_SRC --dir $BACKUP_DIR --full"

echo $COMM

source $VAR_FILE

ADMIN_DIR=$DATA_DIR/dump/admin

if [ -d "$ADMIN_DIR" ]; then
	rm -rf $ADMIN_DIR
fi
