#include ../kubernetes/etc/help.mk
#include ../kubernetes/etc/cli.mk

.PHONY: deploy
deploy: ##@setup deploy to nodes
	$(CLI) kubectl apply -f .

.PHONY: system-requirements-check
system-requirements-check: ##@setup checks system for required dependencies
	./etc/system-requirements-check.sh

