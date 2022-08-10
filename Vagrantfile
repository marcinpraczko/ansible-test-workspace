# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-vbguest")
  raise 'vagrant-vbguest plugin is not installed!'
end

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.box_version = "202206.03.0"
 
  config.vm.hostname = "test-ubuntu-2004"
  config.vm.define "test_ubuntu_2004"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  # --- Basic provisioning ---
  # NOTE: Credits: https://groups.google.com/g/vagrant-up/c/7sOiG7CUpto
  # RUN   : vagrant provision --provision-with 00-init-install-req-tools
  config.vm.provision "00-init-install-req-tools", type: "shell", 
    inline: "/bin/bash /vagrant/provisioning/shell/01-init-install-required-tools.sh"

  # FIXME : NOT Working so far ---> Not found files in paths
  # config.vm.provision "goss-install-test01", type: "shell", 
  #   inline: "/bin/bash /vagrant/tests/ansible-goss-install/test01/test-run.sh"

end
