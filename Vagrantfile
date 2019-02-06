# -*- mode: ruby -*-
# vi: set ft=ruby :

# Customize the amount of memory on the VM:
#VB_RAM = "2048"
VB_RAM = "1024"

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../src", "/src"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = VB_RAM
    # vb.gui = true
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
    ansible.galaxy_role_file = "provisioning/requirements.yml"
  end
  config.vm.provision "shell", path: "provisioning/shellscripts/git.sh"
  config.vm.provision "shell", path: "provisioning/shellscripts/cmake.sh"
  config.vm.provision "shell", path: "provisioning/shellscripts/catch2.sh"
  config.vm.provision "shell", path: "provisioning/shellscripts/c++debugging.sh"

end
