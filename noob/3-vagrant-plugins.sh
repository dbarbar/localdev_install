#!/bin/sh

vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1'
echo "Vagrant plugins are installed."
