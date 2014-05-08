Vagrant.configure("2") do |config|
  # base box
  config.vm.box = "precise64-docker"
  config.vm.box_url = "https://oss-binaries.phusionpassenger.com/vagrant/boxes/ubuntu-12.04.3-amd64-vbox.box"

  #config.vm.network :private_network, ip: "192.168.1.10"
  #config.vm.network :private_network, type: "dhcp"

  # map a bunch of ports so we can later remap to docker containers
  (49000..49100).each do |port|
    config.vm.network :forwarded_port, :host => port, :guest => port
  end

  #config.ssh.forward_agent = true

  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.provider :virtualbox do |vb|
    # vb.gui = true
    vb.name = "docker-playground"
    vb.customize ["modifyvm", :id, "--memory", "2048"]
	vb.destroy_unused_network_interfaces = true
  end
end
