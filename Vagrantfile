
Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.6"
  config.vm.network "private_network", ip: "192.168.56.3"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  
  config.ssh.insert_key = false
  
  config.vm.synced_folder ".", "/sandbox"
  
  config.vm.provision "shell", path: "build/vagrant/init.sh"
  config.vm.provision "shell", path: "build/vagrant/welcome.sh"
end
