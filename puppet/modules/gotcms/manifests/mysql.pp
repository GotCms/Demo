define gotcms::mysql() {

    class { 'mysql::server': }

    mysql::db { $gotcms::params::databaseName:
        user     => $gotcms::params::databaseUser,
        password => $gotcms::params::databasePassword,
        host     => 'localhost',
        grant    => ['ALL'],
        charset  => 'utf8',
    }
}
