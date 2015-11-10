## Install Environment:
####Requirements
You need to have vagrant installed https://www.vagrantup.com/downloads.html, then install these following tools:

<pre>
$ vagrant plugin install vagrant-vbguest
</pre>

#### Install project
Run command lines in order to set up the project in your machine :

<pre>
$ git clone https://github.com/JihadMotii-REISys/hat-2015.git
$ cd hat-2015/conf/vagrant
$ vagrant up
$ vagrant provision --provision-with shell
$ vagrant ssh
</pre>


Note: the IP address allocated to this new VM Box is 192.168.56.105 and if you have used this IP Address, you can change it in `conf/vagrant/puphpet/config.yaml`

## Starting dev :

You can specify develop branch before cloning project from git by:

<pre>
$ git clone -b develop https://github.com/JihadMotii-REISys/hat-2015.git
</pre>

Or you can switch it to "develop" branch after being cloned as mentioned in Install Environment section.

After the VM is up and running, these are the following command to use for vagrant to start, shutdown, delete your current VM:

<pre>
$ vagrant up        # Install/Run the VM
$ vagrant halt      # shutdown the VM
$ vagrant destroy   # remove the VM
$ vagrant ssh       # access to your VM (SSH)
</pre>

To browse the project on the guest machine:

<pre>
$ vagrant ssh
$ cd /var/www/hat-2015
</pre>

#### Note: Make sure you're using develop branch for development purpose.

#### Using Docker in Dev environment:
In order to use docker and build/run images/container in dev, you must change one file as mentioned: http://docs.docker.com/engine/articles/systemd/#custom-docker-daemon-options

<pre>
$ sudo vim /lib/systemd/system/docker.service

- Replace this line:

ExecStart=/usr/bin/docker daemon -H fd://

- By:

EnvironmentFile=-/etc/sysconfig/docker
EnvironmentFile=-/etc/sysconfig/docker-storage
EnvironmentFile=-/etc/sysconfig/docker-network
ExecStart=
ExecStart=/usr/bin/docker daemon -H fd:// $OPTIONS \
          $DOCKER_STORAGE_OPTIONS \
          $DOCKER_NETWORK_OPTIONS \
          $BLOCK_REGISTRY \
          $INSECURE_REGISTRY

- Save file and exit

$ sudo systemctl daemon-reload
$ sudo service docker restart

</pre>

## Update Environment:

If you want to update your environment with our latest builds, simply browse to your path where you cloned git project:

<pre>
$ cd conf/vagrant
$ vagrant provision --provision-with shell
</pre>

