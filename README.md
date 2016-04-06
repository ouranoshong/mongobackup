# mongobackup
mongobackup shell scripts file

### Requirement

* mongodb
* mongodb-client
* ruby
* ruby-dev
* mongo-oplog-backup

### SetUp

Install ruby envirment
```bash
apt-get install -y ruby ruby-dev build-essential
```

Install `mongo-oplog-backup` program
```bash
gem install mongo-oplog-backup
```

### Backup

First full backup script should be run
```bash
/path/to/dumpofull.sh
```

Then set crontab for mongodb incremental backup
```bash
*/10 * * * * /path/to/dumpoplog.sh 2>&1 >> /path/to/file
```

### Configure

Change configures in `vars.sh` file

* `HOST_SRC` host of backup db
* `HOST_DES` host of restore db
* `WORK_DIR` program working direcory
* `BACKUP_DIR` directory to store backup file
