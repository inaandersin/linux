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
sudo cp site.pp /etc/puppet/manifests/

cd /etc/puppet/manifests/
sudo puppet apply site.pp

echo "***************************"
echo " "
echo "Ready to use"
echo " "
echo "***************************"
