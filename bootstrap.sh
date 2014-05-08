sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get -q -y update
sudo apt-get -q -y --force-yes install lxc-docker git wget curl
# sudo curl -Sso /usr/bin/dssh https://raw.github.com/gak/dotfiles/master/home/bin/dssh
# sudo chmod +x /usr/bin/dssh

sudo usermod -aG docker vagrant
