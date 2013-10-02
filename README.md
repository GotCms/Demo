#GotCms demonstration

This project help you to test GotCms with vagrant and puppet.


##Requirement

- Vagrant : http://www.vagrantup.com/
- VirtualBox : https://www.virtualbox.org/


##Install

```
$ git clone git@github.com:GotCms/Demo.gi demo.gotcms
$ cd demo.gotcms
$ git submodule init
$ git submodule update
$ cd src
$ git clone git@github.com:GotCms/GotCms.git gotcms
$ vagrant up
```

Edit your /etc/hosts and add the following line:

`192.168.107.5   gotcms`

For Windows users, you must open you text editor in admin mode and after open the file C:\Windows\System32\drivers\etc\hosts.
