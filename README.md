Purpose
=========

Installs and configures a Gerrit Code Review server...https://www.gerritcodereview.com/

Requirements
------------

Install the following packages for your OS of choice.

###### VirtualBox (https://www.virtualbox.org/)

###### Vagrant (https://www.vagrantup.com/)

Vagrant
-------
Spins up Vagrant environment with the following:
````
samba (AD Domain Controller for LDAP)
gerrit (Gerrit Server)
client (Client - for running code from)
jenkins (Jenkins CI Server)
Gitlab-CE (Gitlab Server)
node1 (Node to run Ansible against)
node2 (Node to run Ansible against)
````
Spin up the environment.
````
vagrant up
````

Usage
-----

#### Gerrit
http://127.0.0.1:8080
````
user: lab@vagrant.local
pass: P@55w0rd
````
#### Jenkins
http://127.0.0.1:8081
#### Gitlab-CE
http://127.0.0.1:8082
````
user: lab
pass: P@55w0rd
````

To access via ssh (replace gerrit w/any of the following samba, gerrit, gitlab, jenkins, client, node1 or node2)
````
vagrant ssh client
````

To setup your client I recommend heading over to the following link and follow.

http://everythingshouldbevirtual.com/ansible-setting-up-an-ansible-control-machine-part-1  

Or....You can do the following...
````
vagrant ssh client
cd /vagrant
./setup_client.sh
````

Dependencies
------------

None

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- @mrlesmithjr
- http://everythingshouldbevirtual.com
- mrlesmithjr [at] gmail.com
