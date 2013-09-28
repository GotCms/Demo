class gotcms {
    include gotcms::tools

    group { 'developer':
        ensure => 'present',
    }
}
