#!/bin/bash

zypper addrepo --gpgcheck --refresh https://yum.mariadb.org/10.5/sles/15/x86_64 mariadb
zypper --gpg-auto-import-keys refresh
zypper install MariaDB-server galera-4 MariaDB-client MariaDB-shared MariaDB-backup MariaDB-common
zypper install mysql-workbench


