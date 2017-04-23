# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.define "samba" do |samba|
    samba.vm.box = "mrlesmithjr/trusty64"
    samba.vm.hostname = "samba"

    samba.vm.network :private_network, ip: "192.168.202.200"

    samba.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "mrlesmithjr - samba"
    end
    samba.vm.provision :shell, path: "provision.sh", keep_color: "true"
    samba.vm.provision :shell, inline: 'ansible-galaxy install -r /vagrant/requirements.yml -f'
    samba.vm.provision :shell, inline: 'ansible-playbook -i /vagrant/hosts -c local /vagrant/playbook.yml --limit "samba-server"'
  end
  config.vm.define "gerrit" do |gerrit|
    gerrit.vm.box = "mrlesmithjr/trusty64"
    gerrit.vm.hostname = "gerrit"

    gerrit.vm.network :private_network, ip: "192.168.202.201"
    gerrit.vm.network "forwarded_port", guest: 8080, host: 8080

    gerrit.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "mrlesmithjr - gerrit"
    end
    gerrit.vm.provision :shell, path: "provision.sh", keep_color: "true"
    gerrit.vm.provision :shell, inline: 'ansible-galaxy install -r /vagrant/requirements.yml -f'
    gerrit.vm.provision :shell, inline: 'ansible-playbook -i /vagrant/hosts -c local /vagrant/playbook.yml --limit "gerrit-server"'
  end
  config.vm.define "client" do |client|
    client.vm.box = "mrlesmithjr/trusty64"
    client.vm.hostname = "client"

    client.vm.network :private_network, ip: "192.168.202.202"

    client.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.name = "mrlesmithjr - client"
    end
  end
  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "mrlesmithjr/trusty64"
    jenkins.vm.hostname = "jenkins"

    jenkins.vm.network :private_network, ip: "192.168.202.203"
    jenkins.vm.network "forwarded_port", guest: 8080, host: 8081

    jenkins.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "mrlesmithjr - jenkins"
    end
    jenkins.vm.provision :shell, path: "provision.sh", keep_color: "true"
    jenkins.vm.provision :shell, inline: 'ansible-galaxy install -r /vagrant/requirements.yml -f'
    jenkins.vm.provision :shell, inline: 'ansible-playbook -i /vagrant/hosts -c local /vagrant/playbook.yml --limit "jenkins"'
  end
  config.vm.define "gitlab" do |gitlab|
    gitlab.vm.box = "mrlesmithjr/trusty64"
    gitlab.vm.hostname = "gitlab"

    gitlab.vm.network :private_network, ip: "192.168.202.204"
    gitlab.vm.network "forwarded_port", guest: 80, host: 8082

    gitlab.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "mrlesmithjr - gitlab"
    end
    gitlab.vm.provision :shell, path: "provision.sh", keep_color: "true"
    gitlab.vm.provision :shell, inline: 'ansible-galaxy install -r /vagrant/requirements.yml -f'
    gitlab.vm.provision :shell, inline: 'ansible-playbook -i /vagrant/hosts -c local /vagrant/playbook.yml --limit "gitlab"'
  end
  config.vm.define "node1" do |node1|
    node1.vm.box = "mrlesmithjr/trusty64"
    node1.vm.hostname = "node1"

    node1.vm.network :private_network, ip: "192.168.202.211"

    node1.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.name = "mrlesmithjr - node1"
    end
  end
  config.vm.define "node2" do |node2|
    node2.vm.box = "mrlesmithjr/trusty64"
    node2.vm.hostname = "node2"

    node2.vm.network :private_network, ip: "192.168.202.212"

    node2.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
      vb.name = "mrlesmithjr - node2"
    end
  end
end
