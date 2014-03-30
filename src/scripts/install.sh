#!/bin/bash

echo "Load config..."
source /data/scripts/install.cfg

directory="/data/gotcms"
command="mysql --user=$user --password=$password"

echo "Clear repository..."
cd $directory ; git checkout . ; git clean -f

echo "Clear database..."
$command -Nse 'show tables' $database | while read table; do $command -e "SET FOREIGN_KEY_CHECKS=0;drop table $table" $database; done

echo "Install database..."
$command $database< /data/scripts/install.sql
$command -e "UPDATE core_config_data SET value = '$apacheVhost' WHERE identifier = 'cookie_domain';" $database

cat $directory/data/install/tpl/config.tpl.php \
| sed "s/__DRIVER__/pdo_mysql/g" \
| sed "s/__USERNAME__/$user/g" \
| sed "s/__PASSWORD__/$password/g" \
| sed "s/__DATABASE__/$database/g" \
| sed "s/__HOSTNAME__/$hostname/g" \
> $directory/config/autoload/local.php

echo "Copy files..."
rm -rf $directory/public/media/files/*
rm -rf $directory/public/frontend/*

ga="    <script>\n\
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n\
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n\
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n\
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');\n\
        ga('create', 'UA-44629676-1', 'got-cms.com');\n\
        ga('send', 'pageview');\n\
    </script>"
find $directory/module/Admin/views/layouts/ -name "*.phtml" -exec sed -i "s#</body>#$ga\n</body>#" '{}' \;

cp -R $directory/data/install/design/silverblog/files/ $directory/public/media/
cp -R $directory/data/install/design/silverblog/frontend/* $directory/public/frontend/
cp -R /data/scripts/files/* $directory/templates/
cd $directory ; git checkout public/frontend/tmp/.gitignore

echo "Done"
