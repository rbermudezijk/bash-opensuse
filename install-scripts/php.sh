#---- PHP ----
zypper -n install php7 php7-mysql apache2-mod_php7

# Bind PHP with Apache <PREFORK>
# Source: https://es.opensuse.org/SDB:Instalar_un_servidor_LAMP
a2enmod php
a2enmod -l
systemctl restart apache2

