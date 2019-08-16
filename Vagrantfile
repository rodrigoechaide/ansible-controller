# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

vm_name = "ansible-controller"


# Absolute path to the folder where ansible projects are stored
projects_dir = "~/Projects/"

Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/bionic64"
    config.vm.hostname = vm_name
    config.vm.synced_folder projects_dir, "/Projects"
    config.vm.provider "virtualbox" do |vb|
        vb.name = vm_name
        #vb.gui = true
        vb.memory = "512"
    end
    config.vm.provision "shell", path: "ansible-mgmt-deploy.sh"
end
