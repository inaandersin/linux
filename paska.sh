echo "***************************"
echo " "
echo "Hello $USER"
echo " "
echo "***************************"
sudo timedatectl set-timezone Europe/Helsinki
setxkbmap fi
sudo apt-get update
sudo apt-get install -y git puppetmaster

sudo git clone https://github.com/inaandersin/linux.git

cd linux/modules/
sudo cp -r apache/ /etc/puppet/modules/
sudo cp -r ssh/ /etc/puppet/modules/
sudo cp -r ufw/ /etc/puppet/modules/

cd linux/modules/manifests/
sudo cp -r sites.pp /etc/puppet/manifests/

cd /etc/puppet/
sudo puppet apply /etc/puppet/manifests/sites.pp

echo "***************************"
echo " "
echo "Ready to use"
echo " "
echo "***************************"

