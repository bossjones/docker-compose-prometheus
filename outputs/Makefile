# -*- coding: utf-8 -*-
# SOURCE: https://github.com/autopilotpattern/jenkins/blob/master/makefile
MAKEFLAGS += --warn-undefined-variables
# .SHELLFLAGS := -eu -o pipefail

# SOURCE: https://github.com/luismayta/zsh-servers-functions/blob/b68f34e486d6c4a465703472e499b1c39fe4a26c/Makefile
# Configuration.
SHELL = /bin/bash
ROOT_DIR = $(shell pwd)

MAKE := make

gpr:
	git pull --rebase

restart:
	docker compose --env-file env restart pushgateway
	docker compose --env-file env restart prometheus && \
	docker compose --env-file env restart grafana && \
	docker compose --env-file env restart grafana && \
	docker compose --env-file env restart nginx-gateway && \
	docker compose --env-file env restart traefik

restart-cadvisor:
	$(MAKE) gpr;
	docker compose --env-file env restart pushgateway && \
	docker compose --env-file env restart cadvisor && \
	docker compose --env-file env restart prometheus && \
	docker compose --env-file env restart grafana && \
	docker compose --env-file env restart grafana && \
	docker compose --env-file env restart nginx-gateway && \
	docker compose --env-file env restart traefik
	$(MAKE) logs;

restart-pihole:
	$(MAKE) gpr;
	docker compose --env-file env restart pihole
	$(MAKE) logs;

stop:
	docker compose --env-file env stop pushgateway
	docker compose --env-file env stop cadvisor
	docker compose --env-file env stop prometheus
	docker compose --env-file env stop grafana
	docker compose --env-file env stop nginx-gateway
	docker compose --env-file env stop traefik


start:
	docker compose -d --env-file env start pushgateway
	docker compose -d --env-file env start cadvisor
	docker compose -d --env-file env start prometheus
	docker compose -d --env-file env start grafana
	docker compose -d --env-file env restart grafana
	docker compose -d --env-file env start nginx-gateway
	docker compose -d --env-file env start traefik

lint:
	promtool check rules prometheus/alerts.yml
	promtool check rules prometheus/rules.yml


logs-prometheus:
	docker compose --env-file env logs -f --tail=50 prometheus

logs-grafana:
	docker compose --env-file env logs -f --tail=50 grafana

logs:
	docker compose --env-file env logs -f --tail=50 | grep -v "syslog-ng" | grep -v "pve-exporter" | ccze -A

restart-all:
	docker compose stop; docker compose -d up --env-file env

port-53:
	sudo ss -tlnp|grep :53
get-ports:
	sudo ss -upln
	echo "lsof"
	sudo lsof -nP -iUDP

stop-start:
	docker compose --env-file env stop && docker compose --env-file env up -d

cp-dnsmaq-conf:
	docker cp pihole/dnsmasq.d/02-systemd-override.conf pihole_dnsmasq:/etc/dnsmasq.d/02-systemd-override.conf

network-manager-show:
	sudo nmcli c show

restart-quick:
	git pull --rebase; docker compose --env-file env stop && sleep 100 && docker compose --env-file env up --build -d

get-docker-logs:
	sudo systemctl status --full --no-pager pihole-FTL.service
	sudo -u pihole pihole-FTL -f | ccze -A

# SOURCE: https://ubuntu.com/core/docs/networkmanager/exploring-network-status
network-status:
	echo -e "Show the status of devices known to NetworkManager:\n\n"
	sudo nmcli d
	echo -e "To show the current status of each of NetworkManager's connections:\n\n"
	sudo nmcli c

litecli:
	docker exec -it pihole bash -c litecli --help

# NOTE: https://github.com/systemd/systemd/issues/13432
netplan-apply:
	sudo resolvectl log-level debug
	sudo systemctl status NetworkManager.service


	sudo mkdir -p /etc/systemd/resolved.conf.d
	sudo sh -c 'echo "[Resolve]" > /etc/systemd/resolved.conf.d/disable-stub.conf'
	sudo sh -c 'echo "DNSStubListener=no" >> /etc/systemd/resolved.conf.d/disable-stub.conf'
	sudo sh -c 'echo "DNS=192.168.3.16" >> /etc/systemd/resolved.conf.d/disable-stub.conf'
	sudo sh -c 'echo "FallbackDNS=" >> /etc/systemd/resolved.conf.d/disable-stub.conf'
	sudo sh -c 'echo "Domains=~." >> /etc/systemd/resolved.conf.d/disable-stub.conf'
	sudo sh -c 'echo "DNSSEC=no" >> /etc/systemd/resolved.conf.d/disable-stub.conf'
	echo -e "cmd: cat '/etc/systemd/resolved.conf.d/disable-stub.conf' \n\n"
	cat '/etc/systemd/resolved.conf.d/disable-stub.conf'
	sudo systemctl daemon-reload
	sudo systemctl restart systemd-resolved


	docker cp pihole/dnsmasq.d/02-systemd-override.conf pihole:/etc/dnsmasq.d/02-systemd-override.conf
	sudo ss -tlnp|grep :53
	@echo ""
	sudo cp -av pihole/etc/netplan/02-pihole.yaml /etc/netplan/01-network-manager-all.yaml

	# Setting custom DNS servers in a connection (nmcli / connection file)
	To setup DNS Servers per connection, you can use the dns field (and the associated dns-search and dns-options) in the connection settings.
	# If method is set to auto (when you use DHCP), you need to set ignore-auto-dns to yes.

	# NOTE: via https://wiki.archlinux.org/title/dnsmasq
	# NOTE: via https://wiki.archlinux.org/title/NetworkManager
	sudo nmcli connection modify 'netplan-enp0s25' ipv4.dns-options trust-ad
	sudo nmcli connection modify 'netplan-enp0s25' ipv4.ignore-auto-dns yes
	sudo nmcli connection modify 'netplan-enp0s25' ipv6.dns ::1
	sudo nmcli connection modify 'netplan-enp0s25' ipv6.dns-options trust-ad
	sudo nmcli connection modify 'netplan-enp0s25' ipv6.ignore-auto-dns yes
	sudo nmcli general reload
	sudo systemctl restart NetworkManager.service
	sudo netplan generate
	sudo netplan apply
	sleep 10

	sudo systemctl daemon-reload

	sudo systemctl restart systemd-resolved
	sudo systemctl restart NetworkManager
	sudo resolvectl flush-caches
	sudo resolvectl status
	sleep 60
	sudo ss -tlnp|grep :53
	@echo ""
	sudo resolvectl statistics
	sudo resolvectl status
	ping -c 1 google.com
	sudo journalctl -f | grep -v unbound_exporter | ccze -A

# SOURCE: https://gist.github.com/deviantony/62c009b41bde5e078b1a7de9f11f5e55
generate-pass:
	docker run --rm httpd:2.4-alpine htpasswd -nbB admin password | cut -d ":" -f 2 | sed 's/\$/\$\$/g'

journal-networkd:
	sudo journalctl -b -u systemd-networkd | ccze -A

journal-resolved:
	sudo journalctl -b -u systemd-resolved | ccze -A

# SOURCE: https://github.com/draios/sysdig/wiki/Sysdig-Examples
# Show the network data exchanged with the host 192.168.0.1
sysdig-network-localhost:
	sudo sysdig -s2000 -A -c echo_fds fd.cip=127.0.0.1

# View the list of containers running on the machine and their resource usage
sysdig-view-containers:
	sudo csysdig -vcontainers

# View the list of processes with container context
sysdig-view-container-processes:
	sudo csysdig -pc

# View the CPU usage of the processes running inside the pihole container
sysdig-view-container-cpu-pihole:
	sudo sysdig -pc -c topprocs_cpu container.name=pihole


###########################################################################################
# made by chatgpt: via https://github.com/draios/sysdig/wiki/Sysdig-Examples
###########################################################################################

# This task displays the network bandwidth usage of the processes running inside the pihole container.
view-network-bandwidth:
	sudo sysdig -pc -c topprocs_net container.name=pihole

# This task displays the processes using the most network bandwidth inside the pihole container.
view-top-bandwidth-processes:
	sudo sysdig -pc -c topprocs_net container.name=pihole

# This task shows the top files in terms of I/O bytes inside the pihole container.
view-top-io-files:
	sudo sysdig -pc -c topfiles_bytes container.name=pihole

# This task displays the top network connections inside the pihole container.
view-top-network-connections:
	sudo sysdig -pc -c topconns container.name=pihole

# This task shows all the interactive commands executed inside the pihole container.
view-interactive-commands:
	sudo sysdig -pc -c spy_users container.name=pihole

# Application
# This task displays all the GET HTTP requests made by the machine.
see-http-get-requests:
	sudo sysdig -s 2000 -A -c echo_fds fd.port=80 and evt.buffer contains GET

# This task displays all the SQL SELECT queries made by the machine.
see-sql-select-queries:
	sudo sysdig -s 2000 -A -c echo_fds evt.buffer contains SELECT

# This task displays the queries made via Apache to an external MySQL server in real-time.
see-apache-mysql-queries:
	sysdig -s 2000 -A -c echo_fds fd.sip=192.168.30.5 and proc.name=apache2 and evt.buffer contains SELECT

# Disk I/O
# This task displays the top processes in terms of disk bandwidth usage.
see-top-disk-bandwidth-processes:
	sysdig -c topprocs_file

# This task lists the processes that are using a high number of files.
list-high-file-usage-processes:
	sysdig -c fdcount_by proc.name "fd.type=file"

# This task displays the top files in terms of read+write bytes.
see-top-read-write-files:
	sysdig -c topfiles_bytes

# This task displays the top files that Apache has been reading from or writing to.
see-apache-read-write-files:
	sysdig -c topfiles_bytes proc.name=httpd

# This task provides a basic opensnoop, snooping file opens as they occur.
snoop-file-opens:
	sysdig -p "%12user.name %6proc.pid %12proc.name %3fd.num %fd.typechar %fd.name" evt.type=open

# This task displays the top directories in terms of read+write disk activity.
see-top-rw-directories:
	sysdig -c fdbytes_by fd.directory "fd.type=file"

# This task displays the top files in terms of read+write disk activity in the /tmp directory.
see-tmp-directory-rw-files:
	sysdig -c fdbytes_by fd.filename "fd.directory=/tmp/"

# This task observes the I/O activity on all the files named 'passwd'.
observe-passwd-io-activity:
	sysdig -A -c echo_fds "fd.filename=passwd"

# This task displays I/O activity by FD type.
display-io-by-fd-type:
	sysdig -c fdbytes_by fd.type