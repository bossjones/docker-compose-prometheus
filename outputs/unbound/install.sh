#!/usr/bin/env bash

# wget -O /etc/unbound/unbound.conf.d/dns.conf https://raw.githubusercontent.com/VirtuBox/bash-scripts/master/apps/unbound/dns.conf
# sudo apt-get install -y unbound

sudo apt-get update
sudo apt-get install unbound -y

wget https://www.internic.net/domain/named.root -qO- | sudo tee /var/lib/unbound/root.hints

sudo chown unbound:unbound /var/lib/unbound/root.hints
sudo chmod 644 /var/lib/unbound/root.hints

sudo cp pi-hole.conf /etc/unbound/unbound.conf.d/pi-hole.conf
sudo chown unbound:unbound /etc/unbound/unbound.conf.d/pi-hole.conf
sudo chmod 644 /etc/unbound/unbound.conf.d/pi-hole.conf

docker cp 99-edns.conf pihole:/etc/dnsmasq.d/99-edns.conf

# sudo touch /var/log/unbound.log
# sudo chown unbound:unbound /var/log/unbound.log

sudo mkdir -p /var/log/unbound
sudo touch /var/log/unbound/unbound.log
sudo chown unbound /var/log/unbound/unbound.log


sudo service unbound restart
sudo systemctl enable unbound

echo "/var/log/unbound/unbound.log rw," | sudo tee -a /etc/apparmor.d/local/usr.sbin.unbound
sudo apparmor_parser -r /etc/apparmor.d/usr.sbin.unbound
sudo service unbound restart