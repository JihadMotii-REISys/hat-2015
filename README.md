## Install Environment:

<pre>
$ git clone https://github.com/JihadMotii-REISys/hat-2015.git
$ cd hat-2015/conf/vagrant
$ vagrant up
</pre>


Note: the IP address allocated to this new VM Box is 192.168.56.105 and if you have used this IP Address, you can change it in `conf/vagrant/puphpet/config.yaml`

## Starting dev :

You can specify develop branch before cloning project from git by:

<pre>
$ git clone -b develop https://github.com/JihadMotii-REISys/hat-2015.git
</pre>

Or you can switch it after being cloned as mentioned in Install Environment section.

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

## Update Environment:

If you want to update your environment with our latest builds, simply browse to your path where you cloned git project:

<pre>
$ cd conf/vagrant
$ vagrant provision --provision-with shell
</pre>