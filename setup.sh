#!/bin/bash

echo "Welcome on GotCms demo installer"
echo "Enter apache VirtualHost name and press [ENTER]:"
read apacheVHost
echo "Enter apache use ssl (true/false as string) and press [ENTER]:"
read apacheSslIsActive
echo "Enter database name and press [ENTER]:"
read databaseName
echo "Enter database user and press [ENTER]:"
read databaseUser
echo "Enter database password and press [ENTER]:"
read databasePassword
echo "Enter database hostname and press [ENTER]:"
read databaseHostname

echo "Save configuration"
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "class gotcms::params() {

    \$apacheVhost       = '$apacheVHost'
    \$apacheSslIsActive = '$apacheSslIsActive'
    \$databaseName      = '$databaseName'
    \$databaseUser      = '$databaseUser'
    \$databasePassword  = '$databasePassword'
    \$databaseHostname  = '$databaseHostname'
}" > puppet/modules/gotcms/manifests/params.pp

echo "Done"

