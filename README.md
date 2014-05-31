#GotCms demonstration

This project help you to test GotCms with Vagrant and OpsCode Chef


##Requirement
- Vagrant: http://www.vagrantup.com
- VirtualBox: https://www.virtualbox.org

##Vagrant plugins
- vagrant-berkshelf

```
vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1'
```

##Usage

Edit your `/etc/hosts` file and add the following line:

`192.168.107.5   gotcms`

For Windows users, you must open you text editor in admin mode and after open the file `C:\Windows\System32\drivers\etc\hosts`.


```
$ git clone git@github.com:GotCms/Demo.gi demo.gotcms
$ cd demo.gotcms
$ vagrant up --provider=virtualbox
```


