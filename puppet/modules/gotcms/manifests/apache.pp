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

    file { '/var/log/apache2':
        ensure => 'directory',
        mode   => 'a+X',
        owner  => 'root',
        group  => 'root',
    }

    file { '/var/log/apache2/php5':
        ensure => 'directory',
        path   => '/var/log/apache2/php5',
        group  => 'www-data',
        owner  => 'www-data',
    }

    file { '/etc/apache2/ssl':
        ensure => 'directory',
        mode   => 'a+X',
        owner  => 'root',
        group  => 'root',
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
