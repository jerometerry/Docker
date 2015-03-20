Spins up a new Ubuntu VM with Docker installed, pulling in the Node.js Docker container

vagrant up 
* Creates the VM
 
vagrant halt
* Stops the VM
    
vagrant destroy
* Tears down the VM, and removes it from the file system
    
vagrant provision
* Applies the vagrant provisioning steps to the VM. 
* Run this if you make any changes to Vagrantfile
