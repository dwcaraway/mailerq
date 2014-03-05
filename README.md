Mailerq Puppet Installation
============================

This project installs Mailerq in a virtualbox VM using Vagrant, shell and puppet.

Installation
===================
First, [install Vagrant for your host operating system](http://www.vagrantup.com/downloads.html). Vagrant runs virtual machines inside VirtualBox on your host OS. We use
a common image and configure it using Vagrant (Puppet) so that all developers have the same runtime environment.

To start the virtual machine type
```vagrant up```

Wait for installation and setup to complete (several minutes), then SSH into the virtual machine, start the virtual environment
and change to the synced folder
```
vagrant ssh
```