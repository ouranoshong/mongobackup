#!/bin/bash

source $(cd "$(dirname $0)"; pwd)/vars.sh

COMM="/usr/local/bin/mongo-oplog-backup backup --host $HOST_SRC --dir $BACKUP_DIR --oplog"

echo $COMM;
