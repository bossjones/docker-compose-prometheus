restart:
	docker-compose --env-file env restart pushgateway
	docker-compose --env-file env restart prometheus && \
	docker-compose --env-file env restart loki-write && \
	docker-compose --env-file env restart loki-read && \
	docker-compose --env-file env restart loki-backend && \
	docker-compose --env-file env restart grafana && \
	docker-compose --env-file env restart promtail && \
	docker-compose --env-file env restart grafana && \
	docker-compose --env-file env restart minio && \
	docker-compose --env-file env restart loki-gateway && \
	docker-compose --env-file env restart traefik

restart-cadvisor:
	docker-compose --env-file env restart pushgateway && \
	docker-compose --env-file env restart cadvisor && \
	docker-compose --env-file env restart prometheus && \
	docker-compose --env-file env restart loki-write && \
	docker-compose --env-file env restart loki-read && \
	docker-compose --env-file env restart loki-backend && \
	docker-compose --env-file env restart grafana && \
	docker-compose --env-file env restart promtail && \
	docker-compose --env-file env restart grafana && \
	docker-compose --env-file env restart minio && \
	docker-compose --env-file env restart loki-gateway && \
	docker-compose --env-file env restart traefik

stop:
	docker-compose --env-file env stop pushgateway
	docker-compose --env-file env stop cadvisor
	docker-compose --env-file env stop prometheus
	docker-compose --env-file env stop loki-write
	docker-compose --env-file env stop loki-read
	docker-compose --env-file env stop loki-backend
	docker-compose --env-file env stop grafana
	docker-compose --env-file env stop promtail
	docker-compose --env-file env stop minio
	docker-compose --env-file env stop loki-gateway
	docker-compose --env-file env stop traefik


start:
	docker-compose --env-file env start pushgateway
	docker-compose --env-file env start cadvisor
	docker-compose --env-file env start prometheus
	docker-compose --env-file env start loki-write
	docker-compose --env-file env start loki-read
	docker-compose --env-file env start loki-backend
	docker-compose --env-file env start grafana
	docker-compose --env-file env start promtail
	docker-compose --env-file env restart grafana
	docker-compose --env-file env start minio
	docker-compose --env-file env start loki-gateway
	docker-compose --env-file env start traefik

lint:
	promtool check rules prometheus/alerts.yml
	promtool check rules prometheus/rules.yml

logs-loki-backend:
	docker-compose --env-file env logs -f --tail=50 loki-backend

logs-loki-write:
	docker-compose --env-file env logs -f --tail=50 loki-write

logs-loki-read:
	docker-compose --env-file env logs -f --tail=50 loki-read

logs-prometheus:
	docker-compose --env-file env logs -f --tail=50 prometheus

logs-grafana:
	docker-compose --env-file env logs -f --tail=50 grafana

logs:
	docker-compose --env-file env logs -f --tail=50 | grep -v "syslog-ng" | grep -v "pve-exporter"