include ../kubernetes/etc/help.mk
include ../kubernetes/etc/cli.mk

.PHONY: deploy
deploy: ##@setup deploy to nodes
	$(CLI) kubectl create ns wordpress-demo
	$(CLI) kubectl -n wordpress-demo apply -f .

.PHONY: remove
remove: ##@setup destroy deployment
	$(CLI) kubectl delete ns wordpress-demo

.PHONY: system-requirements-check
system-requirements-check: ##@setup checks system for required dependencies
	./etc/system-requirements-check.sh
