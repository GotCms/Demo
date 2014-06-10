Vagrant::configure('2') do |config|
  config.berkshelf.enabled = true
  config.ssh.forward_agent = true
  config.vm.box = 'opscode-ubuntu-13.04'
  config.vm.provision :shell, :inline => 'sudo apt-get update ; sudo apt-get -y install curl'
  config.vm.provision :shell, :inline => 'curl -L https://www.opscode.com/chef/install.sh | sudo bash'

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--memory', 2048]
    config.vm.box_url = 'https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-13.04_provisionerless.box'
  end

  config.vm.define :gotcms do |gotcms|
    json = {
      'gotcms' => {
        'config' => {
          'template' => 'silverblog'
        }
      }
    }

    gotcms.vm.provision 'chef_solo' do |chef|
      chef.node_name = 'gotcms'
      chef.add_recipe 'gotcms'

      filename = ::File.dirname(__FILE__) + '/attributes.json'
      puts "Try to load '#{filename}' file."
      if ::File.exist?(filename)
        puts 'File found...'
        f = File.read(filename)
        json = json.merge(JSON.parse(f)) { |k, x, y| x.merge(y) }
        puts 'Attributes merged'
      end

      chef.json = json
    end

    gotcms.vm.provision :shell, :path => './scripts/install.sh' if json.key?('analytics')
    gotcms.vm.network :private_network, ip: '192.168.107.5'
  end
end
