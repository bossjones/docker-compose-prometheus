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
	docker compose --env-file env restart loki-write && \
	docker compose --env-file env restart loki-read && \
	docker compose --env-file env restart loki-backend && \
	docker compose --env-file env restart grafana && \
	docker compose --env-file env restart promtail && \
	docker compose --env-file env restart grafana && \
	docker compose --env-file env restart minio && \
	docker compose --env-file env restart loki-gateway && \
	docker compose --env-file env restart traefik

restart-cadvisor:
	$(MAKE) gpr;
	docker compose --env-file env restart pushgateway && \
	docker compose --env-file env restart cadvisor && \
	docker compose --env-file env restart prometheus && \
	docker compose --env-file env restart loki-write && \
	docker compose --env-file env restart loki-read && \
	docker compose --env-file env restart loki-backend && \
	docker compose --env-file env restart grafana && \
	docker compose --env-file env restart grafana && \
	docker compose --env-file env restart minio && \
	docker compose --env-file env restart loki-gateway && \
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
	docker compose --env-file env stop loki-write
	docker compose --env-file env stop loki-read
	docker compose --env-file env stop loki-backend
	docker compose --env-file env stop grafana
	docker compose --env-file env stop promtail
	docker compose --env-file env stop minio
	docker compose --env-file env stop loki-gateway
	docker compose --env-file env stop traefik


start:
	docker compose -d --env-file env start pushgateway
	docker compose -d --env-file env start cadvisor
	docker compose -d --env-file env start prometheus
	docker compose -d --env-file env start loki-write
	docker compose -d --env-file env start loki-read
	docker compose -d --env-file env start loki-backend
	docker compose -d --env-file env start grafana
	docker compose -d --env-file env start promtail
	docker compose -d --env-file env restart grafana
	docker compose -d --env-file env start minio
	docker compose -d --env-file env start loki-gateway
	docker compose -d --env-file env start traefik

lint:
	promtool check rules prometheus/alerts.yml
	promtool check rules prometheus/rules.yml

logs-loki-backend:
	docker compose --env-file env logs -f --tail=50 loki-backend

logs-loki-write:
	docker compose --env-file env logs -f --tail=50 loki-write

logs-loki-read:
	docker compose --env-file env logs -f --tail=50 loki-read

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
	docker compose --env-file env stop && sleep 100 && docker compose --env-file env up --build -d

get-docker-logs:
	sudo systemctl status --full --no-pager pihole-FTL.service
	sudo -u pihole pihole-FTL -f | ccze -A