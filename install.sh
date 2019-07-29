#!/bin/bash
#General Source: https://doc.opensuse.org/documentation/leap/reference/html/book.opensuse.reference/book.opensuse.reference.html


#---- ADOBE FLASH PLUGIN ----
#Source: https://en.opensuse.org/Adobe_Flash_Player
zypper ar --check --refresh http://linuxdownload.adobe.com/linux/x86_64/ adobe
zypper se -s -r adobe
zypper in adobe-release-x86_64
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
zypper -n install flash-plugin


#---- HTOP ----
zypper -n install htop


#---- MONGO DB ----
#Source: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-suse/
rpm --import https://www.ngo.org/static/pgp/server-4.0.asc
zypper addrepo --gpgcheck "https://repo.mongodb.org/zypper/suse/12/mongodb-org/4.0/x86_64/" mongodb
# For earlier versions use the follow repo
# zypper addrepo --no-gpgcheck https://repo.mongodb.org/zypper/suse/12/mongodb-org/3.4/x86_64/ mongodb
zypper -n install mongodb-org


#---- APACHE ----
#Source: https://www.itzgeek.com/how-tos/linux/opensuse/install-apache-web-server-on-opensuse-12.html
zypper -n install httpd


#---- PHP ----
zypper -n install php7 php7-mysql apache2-mod_php7
# Bind PHP with Apache <PREFORK>
# Source: https://es.opensuse.org/SDB:Instalar_un_servidor_LAMP
a2enmod php
a2enmod -l
systemctl restart apache2


#---- MARIADB, MYSQL WORKBENCH ----
#Source: https://mariadb.com/kb/en/library/installing-mariadb-with-zypper/
zypper addrepo --gpgcheck --refresh https://yum.mariadb.org/10.3/sles/15/x86_64 mariadb
zypper --gpg-auto-import-keys refresh
zypper -n install MariaDB-server galera-4 MariaDB-client MariaDB-shared MariaDB-backup MariaDB-common
zypper -n install mysql-workbench


#---- DOCKER, DOCKER MACHINE ----
#Source to docker-machine command: https://docs.docker.com/machine/install-machine/
zypper -n install docker
base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  install /tmp/docker-machine /usr/local/bin/docker-machine


#---- GIT ----
zypper -n install git
#add NDS Cognitive Labs account
cd ~/.ssh


#---- JAVA ----
# To manage multiple versions of Java use alternatives command
# I recommend the next tutorial: https://www.thegeekdiary.com/how-to-work-with-multiple-java-versions-under-linux/ 
zypper -n install java-1_8_0-openjdk-headless 
zypper -n install java-1_8_0-openjdk


#---- PYTHON 3.7 ----
#Sources: https://unix.stackexchange.com/questions/282429/sles12-how-to-install-zlib-package
#         https://tecadmin.net/install-python-3-7-on-ubuntu-linuxmint/
#         https://www.python.org/downloads/source/
#Libraries required by python
zypper -n install libz1 zlib-devel libffi-devel
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz
tar xvf Python-3.7.4.tar.xz
cd Python-3.7.4/
./configure --enable-optimizations
make install
cd ..
rm -r Python-3.7.4
rm Python-3.7.4.tar.xz
#update pip tool
pip3 install --upgrade pip


#---- PIPENV ----
#Source: https://pipenv-es.readthedocs.io/es/latest/
pip3 install pipenv


#---- AWS CLI ----
#Source: https://docs.aws.amazon.com/es_es/cli/latest/userguide/cli-chap-install.html
#Note: Add the ~/.local/bin to path environment variable to right installation.
pip3 install aws cli --upgrade --user
aws --version


#---- NVM, NODE VERSION MANAGER ----
#Source: https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  #NODE: Install latest version
  #Notes: Some versions (latest or beta versions) work with fails. Install the version that you needs
  nvm install 11.15.0
  #ANGULAR CLI
  npm install -g angular/cli
  #REACT NATIVE/REACT
  npm install -g create-react-app
  npm install -g create-native-app
  npm install -g react-native-cli      
  #FIREBASE
  npm install -g firebase-tools
  #LIVE-SERVER
  npm install -g live-server


#---- POSTMAN ----
wget https://dl.pstmn.io/download/latest/linux64 --output-document=Postman-linux-x64.tar.gz
tar xvzf Postman-linux-x64.tar.gz
rm -r Postman-linux-x64.tar.gz
mv Postman /usr/local/Postman

#---- GOOGLE ----
zypper ar http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
zypper ref
wget https://dl.google.com/linux/linux_signing_key.pub
rpm --import linux_signing_key.pub
rm -r linux_signing_key.pub
zypper -n install google-chrome-stable

#---- VISUAL STUDIO CODE ----
#Source: https://en.opensuse.org/Visual_Studio_Code
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/zypp/repos.d/vscode.repo'
zypper refresh
zypper -n install code

#---- VLC ----
#Source: https://www.videolan.org/vlc/download-suse.html
zypper ar https://download.videolan.org/pub/vlc/SuSE/15.0 VLC
zypper mr -r VLC
zypper -n in vlc

#---- ANDROID ----
#Source: https://developer.android.com/studio/install#64bit-libs
#Androd MUST be installed from graphic user interface


#Install Eclipse  Zoom     PHP Composer
#Install Tomcat   Blender  Skype      
#Install Meaven   Tor
#Install Kubectl  Magento  
#Install GCP SDK  Opera    Wordpress