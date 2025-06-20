# -*- coding: utf-8	-*-
# SOURCE: https://github.com/autopilotpattern/jenkins/blob/master/makefile
MAKEFLAGS += --warn-undefined-variables
# .SHELLFLAGS := -eu -o pipefail

# SOURCE: https://github.com/luismayta/zsh-servers-functions/blob/b68f34e486d6c4a465703472e499b1c39fe4a26c/Makefile
# Configuration.
SHELL =	/bin/bash
ROOT_DIR = $(shell pwd)
PROJECT_BIN_DIR	= $(ROOT_DIR)/bin
DATA_DIR = $(ROOT_DIR)/var
SCRIPT_DIR = $(ROOT_DIR)/script

WGET = wget
# SOURCE: https://github.com/wk8838299/bullcoin/blob/8182e2f19c1f93c9578a2b66de6a9cce0506d1a7/LMN/src/makefile.osx
HAVE_BREW=$(shell brew --prefix	>/dev/null 2>&1; echo $$? )


.PHONY:	list help default all check	fail-when-git-dirty
.PHONY:	pre-commit-install check-connection-postgres monkeytype-stub monkeytype-apply monkeytype-ci

.PHONY:	FORCE_MAKE

PR_SHA				  := $(shell git rev-parse HEAD)

define ASCILOGO
prometheus-docker-compose
=======================================
endef

export ASCILOGO

# http://misc.flogisoft.com/bash/tip_colors_and_formatting

RED=\033[0;31m
GREEN=\033[0;32m
ORNG=\033[38;5;214m
BLUE=\033[38;5;81m
NC=\033[0m

export RED
export GREEN
export NC
export ORNG
export BLUE

# verify that certain variables	have been defined off the bat
check_defined =	\
		$(foreach 1,$1,$(__check_defined))
__check_defined	= \
		$(if $(value $1),, \
			$(error	Undefined $1$(if $(value 2), ($(strip $2)))))

export PATH	:= ./script:./bin:./bash:./venv/bin:$(PATH)

MKFILE_PATH	:= $(abspath $(lastword	$(MAKEFILE_LIST)))
CURRENT_FOLDER := $(notdir $(patsubst %/,%,$(dir $(MKFILE_PATH))))
CURRENT_DIR	:= $(shell pwd)
MAKE := make
PY_MODULE_NAME := prometheus-docker-compose

list_allowed_args := product ip command	role tier cluster non_root_user	host

default: all

all: help

.PHONY:	help
help: ## ** Show this help message
	@perl -nle'print $& if m{^[a-zA-Z_-]+:.*?##	.*$$}' $(MAKEFILE_LIST)	| sort | awk 'BEGIN	{FS	= ":.*?## "}; {printf "\033[36m%-30s\033[0m	%s\n", $$1,	$$2}'

.PHONY:	up
up:
# docker-compose -f docker-compose.yml up -d
	scripts/dc-up.sh

.PHONY:	down
down:
# docker-compose -f docker-compose.yml --env-file env down
	scripts/dc-down.sh

.PHONY:	logs
logs:
	docker-compose -f docker-compose.yml --env-file	env	logs -f

.PHONY:	rm
rm:
# docker-compose -f docker-compose.yml --env-file env rm
	scripts/dc-rm.sh

.PHONY:	restart
restart: down up

.PHONY:	restart-logs
restart-logs: down up logs

.PHONY:	viz
viz:
	docker run --rm	-it	--name dcv -v $(PWD):/input	pmsipilot/docker-compose-viz render	-m image docker-compose.yml

chrome:
	bash scripts/open-all.sh

loki-dashboards:
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-chunks.json	-P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-deletion.json -P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-logs.json -P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-mixin-recording-rules.json -P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-operational.json -P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-reads-resources.json -P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-reads.json -P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-retention.json -P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-writes-resources.json -P dashboards/
	wget https://raw.githubusercontent.com/monitoring-mixins/website/master/assets/loki/dashboards/loki-writes.json	-P dashboards/

dashboards:
	@echo "go to https://github.com/bossjones/monitoring-mixins-website"

render:
	bash ./render.sh

get_running_config:
	curl localhost:3100/config

clean:
	bash .scripts/start-clean.sh

sort-yaml:
	dyff yaml --restructure	--in-place templates/loki/etc/loki/rules/fake/rules.yml.j2

.PHONY: dev-setup
dev-setup: ## ** Set up development environment (creates venv, installs deps, renders templates)
	@echo "$$ASCILOGO"
	@echo "Setting up development environment..."
	bash ./scripts/dev-setup.sh
