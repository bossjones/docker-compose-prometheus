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

sudo touch /var/log/unbound.log
sudo chown unbound:unbound /var/log/unbound.log

sudo service unbound restart