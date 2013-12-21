sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"
sudo apt-get -q -y update
sudo apt-get -q -y --force-yes install lxc-docker git