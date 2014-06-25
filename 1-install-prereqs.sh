#!/bin/sh

mkdir installs
cd installs
curl -OL https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3.dmg
open vagrant_1.6.3.dmg

curl -OL http://download.virtualbox.org/virtualbox/4.3.12/VirtualBox-4.3.12-93733-OSX.dmg
open VirtualBox-4.3.12-93733-OSX.dmg

echo "Run the Vagrant and VirtualBox installers before continuing to the next script."
