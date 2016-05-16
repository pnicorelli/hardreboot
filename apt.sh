apt-get update

# TOOLS
apt-get install -y vim curl build-essential

apt-get install -y nmap htop filezilla geany vlc geeqie


# SERVICES
apt-get install -y mongodb apache2

# APACHE CONF
a2enmod userdir

# APPS

## Atom
sudo add-apt-repository -y ppa:webupd8team/atom
apt-get update

apt-get install -y atom

##
apt-get install -y network-manager-openvpn-gnome cups-pdf
