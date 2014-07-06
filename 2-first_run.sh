#!/bin/sh

vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1'
echo "Vagrant plugins are installed."
echo "To start up your VM, from this directory enter:"
echo "vagrant up --provider=(provider)"
echo "where provider is 'virtualbox', 'vmware_fusion', or 'parallels' depending on which you want to use."
echo "If in doubt, use 'vagrant up --provider=virtualbox'"
