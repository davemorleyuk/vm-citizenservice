# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
	config.vm.box = "mobileoverlord/centos-6.5"
	config.vm.hostname = "citizenservice.dev"
  
	config.vm.network :private_network, ip: "192.168.56.100"
  config.vm.network "forwarded_port", guest: 3306, host: 33100
 
  config.vm.synced_folder "../../PROJECTS/citizen_service", "/home/vagrant/cs"

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "./chef/roles"
    chef.cookbooks_path = ["./chef/site-cookbooks", "./chef/cookbooks"]
    chef.add_role "vagrant-test-box"
  end

end