class gotcms::tools {
    package { [ 'curl', 'git' ]:
        ensure => 'latest',
    }

    package { [ 'netcat-openbsd', 'sysstat', 'htop', 'iotop', 'atop', 'nmap', 'gawk' ]:
        ensure => 'latest',
    }
}
