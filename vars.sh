#!/bin/bash
export HOST_SRC=10.104.24.11
export HOST_DES=10.10.10.11

export WORK_DIR=/data/backup
BACKUP_DIR=$WORK_DIR/oplog

if [ -d "$BACKUP_DIR" ];then
	export BACKUP_DIR=$BACKUP_DIR
fi

if [ -d "$BACKUP_DIR" ];then
	export DATA_DIR=$BACKUP_DIR/$(ls $BACKUP_DIR |grep backup-)
fi
