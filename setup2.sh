echo "***************************"
echo " "
echo "Hello $USER"
echo " "
echo "***************************"
sudo apt-get install -y git puppet

sudo git clone https://github.com/inaandersin/linux.git

cd linux/
sudo cp -r artsy/ /etc/puppet/modules/

cd linux/artsy/
sudo cp -r sites.pp /etc/puppet/manifests/

cd /etc/puppet/manifests/
sudo puppet apply sites.pp

echo "***************************"
echo " "
echo "Ready to use"
echo " "
echo "***************************"
