#!/bin/sh

echo "Setting up disk swap..."
free -h
sudo fallocate -l 1G /swapfile
ls -lh /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab sudo bash -c "
echo 'vm.swappiness = 70' >> /etc/sysctl.conf"
free -h
echo "SWAP setup complete..."
