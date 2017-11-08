echo "***************************"
echo " "
echo "Hello $USER"
echo " "
echo "***************************"

sudo apt-get update
sudo apt-get -y install puppet
echo "192.168.10.46 master" |sudo tee --append /etc/hosts
echo "[agent]"|sudo tee --append /etc/puppet/puppet.conf
echo "server = master"|sudo tee --append /etc/puppet/puppet.conf
sudo puppet agent --enable
sudo service puppet restart

echo "***************************"
echo " "
echo "Ready to use"
echo " "
echo "***************************"
