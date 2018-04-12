# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.7.0"

hosts = {
  :default      => { autostart: true, box: 'hashicorp-vagrant/centos-7.4'}
}


Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
#    SharedFoldersEnableSymlinksCreate  = false
    config.vm.box_check_update = false
    config.vm.box = "hashicorp-vagrant/centos-7.4"
# Port mapping TEST for web access "localhost:8080" maps to port 80 on the guest machine, as some OSs prevent using ports < 1024
    config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true

    vb.name = "default"
    vb.memory = 1024
#    vb.memory = 2048
    vb.cpus = 1

  # Disable the new default behavior introduced in Vagrant 1.7, to
  # ensure that all Vagrant machines will use the same SSH key pair.
  # See https://github.com/mitchellh/vagrant/issues/5005
    config.ssh.insert_key = false
end
  config.vm.provision "puppet" do |puppet|
#    puppet.options = '--verbose --debug'
    puppet.module_path = "puppet/modules"
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "site.pp"
  end

  config.vm.provision "shell", inline: <<-SHELL
    #!/bin/bash
#    set -x
    if [ ! -d /var/lib/mysql/tech ]; then sudo mysql < /data/dbdata.sql; fi
  SHELL
end

