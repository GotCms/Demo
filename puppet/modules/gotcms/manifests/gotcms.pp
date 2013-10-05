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

    $parameters = "user='$params::databaseUser'
password='$params::databasePassword'
database='$params::databaseName'
hostname='$params::databaseHostname'
apacheVhost='$params::apacheVhost'"
    $paramsFile = '/data/scripts/install.cfg'
    file { $paramsFile:
        path    => $paramsFile,
        mode    => '755',
        content => $parameters,
    }

    $scriptFile = '/data/scripts/install.sh'
    file { $scriptFile:
        path   => $scriptFile,
        mode   => '755',
    }
}

