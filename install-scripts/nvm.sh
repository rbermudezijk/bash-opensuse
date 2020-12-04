#!/bin/bash

#---- NVM, NODE VERSION MANAGER ----
#Source: https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. ~/.bashrc
  #NODE: Install latest version
  #Notes: Some versions (latest or beta versions) work with fails. Install the version that you needs
nvm install 14.15.1
  #ANGULAR CLI
#  npm install -g angular/cli
  #REACT NATIVE/REACT
#  npm install -g create-react-app
#  npm install -g create-native-app
#  npm install -g react-native-cli
  #Vue CLI
#  npm install -g @vue/cli
  #FIREBASE
#  npm install -g firebase-tools
  #LIVE-SERVER
#  npm install -g live-server


