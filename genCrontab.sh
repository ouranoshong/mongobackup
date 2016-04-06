#!/bin/bash

PROJECT_DIR=$(cd "$(dirname $0)"; pwd)
source $(cd "$(dirname $0)"; pwd)/vars.sh

OPLOG_CRONTAB="*/15 * * * * $PROJECT_DIR/dumpoplog.sh 2>&1 >> $WORK_DIR/oplog.log"
FULL_CRONTAB="0 6 * * * $PROJECT_DIR/dumpfull.sh 2>&1 >> $WORK_DIR/full.log"

echo "Crontab rule for incremental backup: "
echo "$OPLOG_CRONTAB"
echo "Crontab rule for full backup: "
echo "$FULL_CRONTAB"
