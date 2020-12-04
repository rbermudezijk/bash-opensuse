#!/bin/bash

#---- MONGO DB ----
#Source: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-suse/
rpm --import https://www.mongodb.org/static/pgp/server-4.4.asc
zypper addrepo --gpgcheck "https://repo.mongodb.org/zypper/suse/15/mongodb-org/4.4/x86_64/" mongodb
# For earlier versions use the follow repo
# zypper addrepo --no-gpgcheck https://repo.mongodb.org/zypper/suse/12/mongodb-org/3.4/x86_64/ mongodb
zypper -n install mongodb-org


# its data files in /var/lib/mongo
# its log files in /var/log/mongodb



