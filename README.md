# Springboard local development


## Initial installs

Get in the noob directory to run some scripts.  This will get you set up with Vagrant, Virtualbox, and the chef omnibus and berkshelf vagrant plugins.

````
cd noob
````

### Vagrant

First you need to install Vagrant.

````
./1-vagrant.sh
````

This will download the installer dmg and open it.  You'll need to complete the install wizred on your own.

### Virtualbox

This is optional.  If you're using VMWare Fusion (and paid for the vagrant connector) or Parallels, you can use those instead.  You will need one of three.  Virtualbox is free so if you don't have any, then do this step.

````
./2-virtualbox.sh
````

Like the Vagrant installer, this will download the dmg and open it.  Go through the install wizard.

### Vagrant plugins

````
./3-vagrant-plugins.sh
````

This will install the chef omnibus plugin and the berkshelf plugin.

### Remove the installers

````
./4-remove-installers.sh
````

If everything went well, you no longer need the dmg files, which take up about 200mb.  This removes them.


## Build and provision the VM

Depending on which virtualization software you use, you'll run one of these commands.  You will need to enter your admin password at one point so the NFS share can be connected.


````
vagrant up --provider=virtualbox
````

````
vagrant up --provider=vmware_fusion
````

````
vagrant up --provider=parallels
````
