#!/bin/bash
mkdir -m 777 /home/vagrant/DB/postgres/"DB-BK-Date-$(date +"%d-%m-%Y")"
function db()
{
DATABASE="$1"
FILE=$DATABASE-`date +%F-%H%M%S`.sql
DIR=/home/vagrant/DB/postgres/"DB-BK-Date-$(date +"%d-%m-%Y")"
export PGPASSWORD=postgres

## backup command
pg_dump -U postgres $DATABASE > $DIR/$FILE

## compressing the backup file
gzip  $DIR/$FILE

## Removing export
unset PGPASSWORD

}

db opensrp
db postgres

find /home/vagrant/DB/postgres/*  -mtime +20 -type d -exec rm -rf {} \;
