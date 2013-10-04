#!/bin/bash

echo "Load config..."
source /data/scripts/install.cfg
command="mysql --user=$user --password=$password"

echo "Clear repository..."
cd /data/gotcms ; git clean -f

echo "Clear database..."
$command -Nse 'show tables' $database | while read table; do $command -e "SET FOREIGN_KEY_CHECKS=0;drop table $table" $database; done

echo "Install database..."
$command $database< /data/scripts/install.sql
cat /data/gotcms/data/install/tpl/config.tpl.php \
| sed "s/__DRIVER__/pdo_mysql/g" \
| sed "s/__USERNAME__/$user/g" \
| sed "s/__PASSWORD__/$password/g" \
| sed "s/__DATABASE__/$database/g" \
| sed "s/__HOSTNAME__/$hostname/g" \
> /data/gotcms/config/autoload/global.php

echo "Copy files..."
cp -R /data/gotcms/data/install/design/silverblog/files/ /data/gotcms/public/media/
cp -R /data/gotcms/data/install/design/silverblog/frontend/* /data/gotcms/public/frontend/

echo "Done"

