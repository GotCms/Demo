class gotcms::ssl-apache2 {

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
