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
$command -e "UPDATE core_config_data SET value = '$apacheVhost' WHERE identifier = 'cookie_domain';" $database

cat /data/gotcms/data/install/tpl/config.tpl.php \
| sed "s/__DRIVER__/pdo_mysql/g" \
| sed "s/__USERNAME__/$user/g" \
| sed "s/__PASSWORD__/$password/g" \
| sed "s/__DATABASE__/$database/g" \
| sed "s/__HOSTNAME__/$hostname/g" \
> /data/gotcms/config/autoload/global.php

echo "Copy files..."
rm -rf /data/gotcms/public/media/*
rm -rf /data/gotcms/public/frontend/*

cp /data/scripts/files/* /data/gotcms/module/Admin/views/layouts/
cp -R /data/gotcms/data/install/design/silverblog/files/ /data/gotcms/public/media/
cp -R /data/gotcms/data/install/design/silverblog/frontend/* /data/gotcms/public/frontend/

echo "Done"

