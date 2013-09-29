require 'rbconfig'

Vagrant::configure('2') do |config|

    config.vm.box = "wheezy64"

    config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        vb.customize ["modifyvm", :id, "--memory", 2048]
        config.vm.box_url = "http://dl.dropbox.com/u/937870/VMs/wheezy64.box"
    end

    config.vm.define :gotcms do |gotcms|
        gotcms.vm.provision :shell, :inline => "apt-get update --fix-missing"

        gotcms.vm.provision :puppet do |puppet|
            puppet.facter = { "fqdn" => "gotcms", "hostname" => "gotcms"}
            puppet.manifests_path = "puppet/manifests"
            puppet.manifest_file = "project.pp"
            puppet.module_path = "puppet/modules"
        end

        gotcms.vm.network :private_network, ip: "192.168.107.5"
        gotcms.vm.provision :shell, :inline => "/data/scripts/install.sh"
    end

    config.vm.synced_folder "src/", "/data", :id => "vagrant-root", :nfs => true
end
