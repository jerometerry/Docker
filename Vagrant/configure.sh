sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y \
	-o Dpkg::Options::="--force-confdef" \
	-o Dpkg::Options::="--force-confold" \
	upgrade

sudo apt-get install -y \
	build-essential \
	virtualbox-guest-dkms \
	virtualbox-guest-utils \
	virtualbox-guest-x11\
	xfce4

sudo startxfce4&
sudo VBoxClient-all