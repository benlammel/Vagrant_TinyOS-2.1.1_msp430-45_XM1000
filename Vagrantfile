VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "hashicorp/precise32"
    
    # call installation script
    config.vm.provision :shell, path: "bootstrap.sh"

    
    # Add USB mote to VM
    # VBoxManage list usbhost
    # Product: MTM-XM1000MSP
    # VendorId: 0x0403 (0403)
    # ProductId: 0x6001 (6001)
    config.vm.provider :virtualbox do |vb|
        vb.customize ['modifyvm', :id, '--usb', 'on']
        vb.customize ['usbfilter', 'add', '0', '--target', :id, '--name', 'XM1000MSP', '--vendorid', '0x0403', '--productid', '0x6001']
 end
end
