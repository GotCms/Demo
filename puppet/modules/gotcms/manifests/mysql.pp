define gotcms::mysql() {

    class { 'mysql::server': }

    mysql::db { 'gotcms':
        user     => 'gotcms',
        password => 'mypassword',
        host     => 'localhost',
        grant    => ['all'],
        charset  => 'utf8',
    }
}
