#!/bin/bash

#---- POSTMAN ----
wget https://dl.pstmn.io/download/latest/linux64 --output-document=Postman-linux-x64.tar.gz
tar xvzf Postman-linux-x64.tar.gz
rm -r Postman-linux-x64.tar.gz
mv Postman /usr/local/Postman


