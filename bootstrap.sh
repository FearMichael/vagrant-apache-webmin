apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

sudo sh -c 'echo "deb http://ftp.au.debian.org/debian/ buster main non-free" > /etc/apt/sources.list.d/nonfree.list'
sudo apt update
sudo apt install wget
wget -qO - http://www.webmin.com/jcameron-key.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list'
sudo apt update
sudo apt install webmin

/usr/share/webmin/changepass.pl /etc/webmin root password
echo "Webmin login: UN: root PASS: password"


