#!/usr/bin/env bash

cd outputs || exit
docker-compose --env-file env down --remove-orphans
docker-compose --env-file env down --remove-orphans
docker volume rm outputs_grafana_data
docker-compose --env-file env up -d
cd -
