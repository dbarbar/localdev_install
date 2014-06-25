#!/bin/sh

vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-berkshelf --plugin-version '>= 2.0.1'

git clone git@github.com:JacksonRiver/chef-jrdevsetup.git box
cd box
git checkout master
vagrant up --provider=virtualbox

echo "If all is well above then you should be all set."
