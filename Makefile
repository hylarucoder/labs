.PHONY:  help 
.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-30s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

build-labs-ubuntu-mini: ## build ubuntu mini
	docker build -f compose/ubuntu-mini/Dockerfile . -t labs-ubuntu-mini

build-labs-ubuntu: ## build ubuntu
	docker build -f compose/ubuntu/Dockerfile . -t labs-ubuntu

build-labs-postgres: ## build postgres
	docker build -f compose/postgres/Dockerfile . -t labs-postgres

build-labs-thrift: ## build thrift
	docker build -f compose/thrift/Dockerfile . -t labs-thrift

build-labs-elasticsearch: ## build elasticsearch
	docker build -f compose/elasticsearch/Dockerfile . -t labs-elasticsearch

build-labs-rabbitmq: ## build rabbitmq
	docker build -f compose/rabbitmq/Dockerfile . -t labs-rabbitmq
