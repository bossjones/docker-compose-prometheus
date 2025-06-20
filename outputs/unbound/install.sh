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

sudo mkdir -p /var/run/unbound
sudo chown unbound:unbound /var/run/unbound
sudo chmod 777 /var/run/unbound

sudo mkdir -p  /usr/local/etc/unbound/ || true
sudo chown unbound:unbound /usr/local/etc/unbound/
# Setup or update of the root trust anchor for DNSSEC validation
# sudo chown unbound:unbound /etc/unbound/unbound_control.key
# unbound-anchor -a /etc/unbound/unbound_control.key
sudo -u unbound unbound-anchor -a /usr/local/etc/unbound/root.key
unbound-anchor -a /var/lib/unbound/root.key
sudo chown unbound:unbound /var/lib/unbound/root.key

sudo service unbound restart
sudo systemctl enable unbound

echo "/var/log/unbound/unbound.log rw," | sudo tee -a /etc/apparmor.d/local/usr.sbin.unbound
sudo apparmor_parser -r /etc/apparmor.d/usr.sbin.unbound
sudo service unbound restart

go install github.com/letsencrypt/unbound_exporter@latest

PATH_TO_UNBOUND_EXPORTER=$(which unbound_exporter)

sudo cp -a ${PATH_TO_UNBOUND_EXPORTER} /usr/local/bin/unbound_exporter
sudo ls -lta /usr/local/bin/unbound_exporter

sudo cp -a unbound_exporter.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable unbound_exporter
sudo systemctl restart unbound_exporter

unbound-control status

# pi@boss-monitor ~/dev/bossjones/docker-compose-prometheus/outputs/unbound feature-perf* 41s
# ❯ unbound_exporter -h
# Usage of unbound_exporter:
#   -unbound.ca string
#         Unbound server certificate. (default "/etc/unbound/unbound_server.pem")
#   -unbound.cert string
#         Unbound client certificate. (default "/etc/unbound/unbound_control.pem")
#   -unbound.host string
#         Unix or TCP address of Unbound control socket. (default "tcp://localhost:8953")
#   -unbound.key string
#         Unbound client key. (default "/etc/unbound/unbound_control.key")
#   -web.listen-address string
#         Address to listen on for web interface and telemetry. (default ":9167")
#   -web.telemetry-path string
#         Path under which to expose metrics. (default "/metrics")