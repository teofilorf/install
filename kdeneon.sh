#!/bin/bash

cd /tmp/

#dropbox

#sudo apt update
#sudo apt install nautilus-dropbox
#dropbox start -i 

#repositorios
echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" | sudo tee /etc/apt/sources.list.d/vbox.list &&\
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add - &&\
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add - &&\
wget -c http://download.virtualbox.org/virtualbox/5.1.14/Oracle_VM_VirtualBox_Extension_Pack-5.1.14-112924.vbox-extpack &&\
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - &&\
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' &&\
sudo add-apt-repository ppa:gns3/ppa &&\

#update
sudo apt update &&\

#install
sudo apt install -y google-chrome-stable virtualbox-5.1  wine gns3-gui gns3-iou openssh-server yakuake rdesktop &&\

#postinstall
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.14-112924.vbox-extpack &&\
sudo cp $HOME/Dropbox/bin/winbox.desktop /usr/share/applications/ &&\
sudo cp $HOME/Dropbox/bin/Gns3.desktop /usr/share/applications/ &&\
echo -e "[Auto Deny]\nkdewallet=Google Chrome" >> $HOME/.kde/share/config/kwalletrc 

echo boa cabelo
