#!/bin/bash
sudo apt-get update
sudo apt-get -y install python-setuptools python-dev libffi-dev libssl-dev git sshpass tree
sudo easy_install pip

sudo -H pip uninstall -y virtualenv
sudo -H pip uninstall -y virtualenvwrapper
sudo -H pip install virtualenv
sudo -H pip install virtualenvwrapper --ignore-installed six

rm -rf ~/.virtualenvs
mkdir ~/.virtualenvs
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile
echo "export WORKON_HOME=~/.virtualenvs" >> ~/.profile
source ~/.profile

rm -rf ~/ansible_virtualenvs
mkdir ~/ansible_virtualenvs

cd ~/ansible_virtualenvs
mkdir 1.9.4
cd 1.9.4
mkvirtualenv ansible-1.9.4
pip install ansible==1.9.4
deactivate

cd ~/ansible_virtualenvs
mkdir 2.0
cd 2.0
mkvirtualenv ansible-2.0
pip install ansible
deactivate

workon ansible-1.9.4
pip install pyopenssl ndg-httpsclient pyasn1
pip install pysphere pyvmomi
deactivate

workon ansible-2.0
pip install pyopenssl ndg-httpsclient pyasn1
pip install pysphere pyvmomi
deactivate

mkdir ~/Git_Projects
cd ~/Git_Projects
git clone https://github.com/mrlesmithjr/ansible-clone-git-repos.git

#cd ansible-clone-git-repos
#sed -i -e 's|- bunchc|#- bunchc|' defaults/main.yml
#sed -i -e 's|- debops|#- debops|' defaults/main.yml
#sed -i -e 's|- lowescott|#- lowescott|' defaults/main.yml
#sed -i -e 's|- Mierdin|#- Mierdin|' defaults/main.yml
#sed -i -e 's|- dstamen|#- dstamen|' defaults/main.yml
#sed -i -e 's|- phpipam|#- phpipam|' defaults/main.yml

#workon ansible-1.9.4
#./clone_git_repos.sh
#cd ../GitHub/mrlesmithjr
#ls
