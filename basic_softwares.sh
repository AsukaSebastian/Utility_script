echo 'Dpkg::Progress-Fancy "1";' > /etc/apt/apt.conf.d/99progressbar
#add-apt-repository ppa:webupd8team/sublime-text-3
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
apt-get update

apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms

modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
modprobe wl
apt-get -y install vlc
apt-get -y install git
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
#apt-get -y install sublime-text-installer

apt-get -y install apache2
#apt-get -y install netbeans
#apt-get -y install mysql-server mysql-client
#apt-get -y install php7.0-mysql php7.0-curl php7.0-json php7.0-cgi  php7.0 libapache2-mod-php7
#apt-get -y install phpmyadmin

apt-get -y install virtualbox 
apt-get -y install virtualbox virtualbox-ext-pack 
apt-get -y install plank
apt-get -y install htop
#apt-get -y install nmap
apt-get -y update && apt-get -y upgrade && apt-get -y dist-upgrade



