#!/bin/bash
export DB_HOST=10.10.10.11

export WORK_DIR=/data/backup
export BACKUP_DIR=$WORK_DIR/oplog
export DATA_DIR=$BACKUP_DIR/$(ls $BACKUP_DIR |grep backup-)

