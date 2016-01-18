Purpose
=========

Installs and configures a Gerrit Code Review server...https://www.gerritcodereview.com/ and a client to use for testing and learning.

Requirements
------------

Install the following packages for your OS of choice.

###### VirtualBox (https://www.virtualbox.org/)

###### Vagrant (https://www.vagrantup.com/)

Vagrant
-------
Spin up Environment under Vagrant to test.
````
vagrant up
````

Usage
-----

Login to WebUI using defined owncloud_admin_user and owncloud_admin_pass vars (http://127.0.0.1:8080) and click register in top right.

To access via ssh
````
vagrant ssh gerrit
````
````
vagrant ssh client
````

To setup your client I recommend heading over to the following link and follow.

http://everythingshouldbevirtual.com/ansible-setting-up-an-ansible-control-machine-part-1

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
