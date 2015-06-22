# Vagrant_TinyOS-2.1.1_msp430-45_XM1000

Prerequisites
--------
In order to install and start vagrant TinyOS XM1000 environment, VirtualBox and vagrant needs to be installed. Download the application for your OS from the following download areas:

VirtualBox: https://www.virtualbox.org/wiki/Downloads

Vagrant: https://www.vagrantup.com/downloads.html

Start the machine
--------
Open a terminal window and browse to the cloned (or downloaded) repository

    cd git/Vagrant_TinyOS-2.1.1_msp430-45_XM1000/

Tell vagrant to start the machine

    vagrant up

Note: The first start will trigger the provsion process where all the packages will be installed.

Once the machine is up, connect using 

    vagrant ssh

Note: Windows is not shipped with an ssh client, so you'll nee a third party application (i.e. putty). Check out the following link for accessing it: https://github.com/Varying-Vagrant-Vagrants/VVV/wiki/Connect-to-Your-Vagrant-Virtual-Machine-with-PuTTY

### Start the virtual environment UI
The `vagrant ssh` will actually log you into the virtual environment. If you want to start the environment the traditional way using the virtual machine window, change the `Vagrantfile` parameter `v.gui` from  `v.gui = false` to  `v.gui = true` and start the machine again.

    user: vagrant
    password: vagrant

Most likely, you'll need to setup your keyboard layout using

    sudo dpkg-reconfigure keyboard-configuration

Using the platform
--------
The TinyOs files are stored at 

    /vagrant/tinyos-2.1.1/

which is the folder in the git repository. So you can change your apps locally and they will be directly available in the virtual environment.

Vagrant Cheat Sheet
--------
Start:

    vagrant up

Shutdown

    vagrant halt

Connect

    vagrant ssh

Delete machine (just OS) without deliting the files at `/vagrant/`

    vagrant destroy


Troubleshooting
-----
I focussed on IPv6 using blip. If there are some troubles with XM1000 make sure you have added `defined(PLATFORM_XM1000)` in the code. XM1000 follow the telosb specs, so it works usually if you add it as follows:

    #elif defined(PLATFORM_TELOS) || defined(PLATFORM_TELOSB) || defined(PLATFORM_EPIC) || defined(PLATFORM_XM1000)
