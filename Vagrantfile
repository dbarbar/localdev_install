# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # PICK A UNIQUE PRIVATE NETWORK IP:
  # Change this IP if you're having conflicts with other VMs.
  config.vm.network :private_network, ip: "192.168.100.100"

  config.berkshelf.enabled = true

  # Make sure Chef is the latest version.
  config.omnibus.chef_version = :latest

  config.vm.hostname = "sbdev"

  # Config the synced folder using NFS if possible.
  config.vm.synced_folder '.', '/vagrant', :nfs => (RUBY_PLATFORM =~ /linux/ or RUBY_PLATFORM =~ /darwin/)

  # Provider specific configuration.

  # VirtualBox
  config.vm.provider "virtualbox" do |v, override|
    v.name = "sbdev"
    v.memory = 1024
    v.cpus = 2

    override.vm.box = "CentOS 6.4 x86_64 Minimal (2013-10-30)"
    override.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v0.1.0/centos64-x86_64-20131030.box"

    # Fix issue with DNS
    # @todo Is this still needed?
    v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  # VMWare Fusion
  config.vm.provider "vmware_fusion" do |v, override|
    v.name = "sbdev"
    v.memory = 1024
    v.cpus = 2
    override.vm.box = "chef/centos-6.5"
  end

  # Parallels
  config.vm.provider "parallels" do |v, override|
    v.name = "sbdev"
    v.memory = 1024
    v.cpus = 2
    override.vm.box = "parallels/centos-6.5"
  end

  # Chef Solo Provisoning
  config.vm.provision "chef_solo" do |chef|
    chef.formatter = ENV.fetch("CHEF_FORMAT", "null").downcase.to_sym
    chef.log_level = ENV.fetch("CHEF_LOG", "info").downcase.to_sym
    chef.data_bags_path = "data_bags"
    chef.environments_path = "environments"
    chef.environment = "dev"
    chef.roles_path = "roles"
    chef.add_role("base")
    chef.add_role("webserver")
    chef.add_role("dbserver")
    chef.node_name = "sbdev"

  end
end
