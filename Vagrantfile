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

  # config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  # --- Basic provisioning ---
  # Run shell scripts
  # TODO: Worth to consider: https://groups.google.com/g/vagrant-up/c/7sOiG7CUpto - Choose provisioner name for running provision
  # console.vm.provision :shell, :path => "provisioning/shell/00-init-install-required-tools.sh"
  # RUN: vagrant provision-with goss-install-test01
  # FIXME: NOT Working so far ---> Not found files in paths
  # config.vm.provision "goss-install-test01", type: "shell", 
  #   inline: "/bin/bash /vagrant/tests/ansible-goss-install/test01/test-run.sh"

end
