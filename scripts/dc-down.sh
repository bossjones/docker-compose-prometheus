#!/usr/bin/env bash

cleanup(){
    cd -
}

trap "cleanup" EXIT

cd outputs
docker-compose --env-file env down
cd -
