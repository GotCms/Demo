class gotcms::gotcms {

    class { 'apache':
        source => 'puppet:///modules/gotcms/apache2/apache2.conf',
    }

    gotcms::mysql {'mysql':}
    gotcms::apache {'apache':}

    package { 'memcached':
        ensure => 'present',
    }

    gotcms::php {'php':
        notify    => Service['apache'],
    }

    file {
        'apache2.ini':
            path    => '/etc/php5/apache2/php.ini',
            content => template('gotcms/php5/apache2.ini.erb'),
            group   => 'www-data',
            owner   => 'www-data',
            replace => 'yes',
            require => [Php['php'], File['/var/log/apache2/php5']],
            notify  => Service['apache'];
        'apache.ports':
            require => Package['apache'],
            path    => '/etc/apache2/ports.conf',
            ensure  => present,
            source  => 'puppet:///modules/gotcms/apache2/ports.conf',
            owner   => root,
            group   => root,
            notify  => Service['apache'],
            mode    => 0644;
        'apache.security':
            require => Package['apache'],
            path    => '/etc/apache2/conf.d/security',
            ensure  => present,
            source  => 'puppet:///modules/gotcms/apache2/security',
            owner   => root,
            group   => root,
            notify  => Service['apache'],
            mode    => 0644;
        'apache.envvars':
            require => Package['apache'],
            path    => '/etc/apache2/envvars',
            ensure  => present,
            source  => 'puppet:///modules/gotcms/apache2/envvars',
            owner   => root,
            group   => root,
            notify  => Service['apache'],
            mode    => 0644;
    }

    $parameters = "user='$params::databaseUser'
password='$params::databasePassword'
database='$params::databaseName'
hostname='$params::databaseHostname'"
    $paramsFile = '/data/scripts/install.cfg'
    file { $paramsFile:
        path    => $paramsFile,
        content => $parameters,
    }

    $scriptFile = '/data/scripts/install.sh'
    file { $scriptFile:
        path   => $scriptFile,
        mode   => '755',
    }
}

