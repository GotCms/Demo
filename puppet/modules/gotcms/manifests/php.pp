define gotcms::php() {

    class { 'php': }
    php::module { ['gd', 'mysql', 'curl', 'intl', 'memcached']:
        notify => Service['apache'],
    }


    file { '/var/log/php5':
        ensure => 'directory',
        path   => '/var/log/php5',
        group  => 'developer',
        owner  => 'vagrant',
    }
}
