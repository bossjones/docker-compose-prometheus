restart:
	docker-compose --env-file env restart pushgateway && \
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