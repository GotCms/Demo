Exec { path => [ '/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/' ] }

node 'common' {
    include gotcms

    stage { 'setup':
        before => Stage['main'],
    }

    class { 'apt::update':
        stage => setup,
    }

    class { 'locales':
        default_value => 'en_US.UTF-8',
        available     => [ 'en_US.UTF-8 UTF-8', 'fr_FR.UTF-8 UTF-8' ],
    }

    class { 'timezone':
        timezone => 'Europe/Paris',
    }

    host { 'gotcms':
        comment => 'gotcms address',
        ip      => '192.168.107.05',
        name    => 'gotcms',
    }
}

node 'gotcms' inherits 'common' {
    include gotcms::params
    include gotcms::gotcms
}

