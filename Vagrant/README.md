Spins up a new VM using Vagrant / Virtual Box. Here's the details of the resulting VM
* Running Ubuntu 14.04 amd64
* Docker installed
* Docker Node Image installed
* Docker Ubuntu Image installed
* All packages updated via apt-get update / upgrade

Here are the relevant Vagrant commands

```
vagrant up 
```

* Creates the VM

```
vagrant ssh
```

* SSH into the VM, giving you access to the shell

``` 
vagrant halt
```

* Stops the VM

```    
vagrant destroy
```

* Tears down the VM, and removes it from the file system

```    
vagrant provision
```

* Applies the vagrant provisioning steps to the VM. 
* Run this if you make any changes to Vagrantfile

After running *vagrant up*, you now have a Ubuntu box running docker. SSH into the box to execute some commands.

```
vagrant ssh
```

* SSH into the box

vagrant@ubuntu-14:~$ 
* Prompt after logging in via SSH

vagrant@ubuntu-14:~$ docker --version<br/>
Docker version 1.5.0, build a8a31ef
* Echos Docker versoin

vagrant@ubuntu-14:~$ docker images
* Lists installed images

vagrant@ubuntu-14:~$ docker ps
* Lists running containers

vagrant@ubuntu-14:~$ docker ps -a
* Lists all containers

vagrant@ubuntu-14:~$ sudo docker run -i -t node /bin/bash
root@d8ba8a4a646d:/#
* Creates a new container based on the node image
* Gives command line access to the container, with Node installed

vagrant@ubuntu-14:~$ sudo docker run -i -t ubuntu /bin/bash
* Creates a new container based on the ubuntu image
* Gives command line access to a new Ubuntu box

vagrant@ubuntu-14:~$ docker stop $(docker ps -a -q)
* Stops all Docker containers

vagrant@ubuntu-14:~$ docker rm $(docker ps -a -q)
* Removes all Docker containers

vagrant@ubuntu-14:~$ logout
* Closes the SSH connection
