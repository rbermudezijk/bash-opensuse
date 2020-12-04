#!/bin/bash

#---- GOOGLE ----
zypper ar http://dl.google.com/linux/chrome/rpm/stable/x86_64 Google-Chrome
zypper ref
wget https://dl.google.com/linux/linux_signing_key.pub
rpm --import linux_signing_key.pub
rm -r linux_signing_key.pub
zypper -n install google-chrome-stable


