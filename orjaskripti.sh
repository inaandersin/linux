sudo apt-get update
sudo apt-get -y install puppet
echo "172.28.171.119 master.local" |sudo tee --append /etc/hosts
echo "[agent]"|sudo tee --append /etc/puppet/puppet.conf
echo "server = master.local"|sudo tee --append /etc/puppet/puppet.conf
sudo puppet agent --enable
sudo service puppet restart
