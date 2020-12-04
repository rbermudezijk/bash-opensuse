#---- DOCKER, DOCKER MACHINE ----
#Source to docker-machine command: https://docs.docker.com/machine/install-machine/

#Docker
zypper -n install docker

#Docker machine
base=https://github.com/docker/machine/releases/download/v0.16.0 && \
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && \
  install /tmp/docker-machine /usr/local/bin/docker-machine


