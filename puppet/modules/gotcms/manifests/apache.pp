define gotcms::apache() {

    apache::vhost { $gotcms::params::apacheVhost:
        server_name => $gotcms::params::apacheVhost,
        priority    => '20',
        port        => '80',
        docroot     => '/data/gotcms/public',
        template    => 'gotcms/vhost.conf.erb'
    }

    if $gotcms::params::apacheSslIsActive == 'true' {
        apache::vhost { 'ssl-gotcms':
            server_name => $gotcms::params::apacheVhost,
            priority    => '20',
            port        => '443',
            docroot     => '/data/gotcms/public',
            template    => 'gotcms/vhost-ssl.conf.erb'
        }
    }

    apache::module { 'rewrite': }
    apache::module { 'expires': }
    apache::module { 'headers': }
    apache::module { 'deflate': }
    apache::module { 'ssl': }
    apache::module { 'php5':
        install_package => true,
    }

    file {
        '/var/log/apache2':
            ensure => 'directory',
            mode   => 'a+X',
            owner  => 'root',
            group  => 'root';
        '/var/log/apache2/php5':
            ensure => 'directory',
            path   => '/var/log/apache2/php5',
            group  => 'www-data',
            owner  => 'www-data';
        '/etc/apache2/ssl':
            ensure => 'directory',
            mode   => 'a+X',
            owner  => 'root',
            group  => 'root';
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

    openssl::certificate::x509 { 'gotcms':
        cnf_tpl      => 'gotcms/cert.cnf.erb',
        country      => 'FR',
        organization => 'GotCms',
        commonname   => 'www.got-cms.com',
        state        => 'France',
        locality     => 'France',
        unit         => 'Foo',
        email        => 'contact@got-cms.com',
        days         => 3456,
        base_dir     => '/etc/apache2/ssl',
        owner        => 'root',
        force        => true,
    }
}
