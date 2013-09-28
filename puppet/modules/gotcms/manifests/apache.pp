define gotcms::apache() {

    apache::vhost { 'ssl-gotcms':
        server_name => 'gotcms',
        priority    => '20',
        port        => '443',
        docroot     => '/data/gotcms/public',
        template    => 'gotcms/vhost-ssl.conf.erb'
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
}
