current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
SHELL = /bin/sh

install:
	if [ ! -d $(current-dir)addons/ ]; then mkdir $(current-dir)addons/ ; fi
	if [ ! -d $(current-dir)addons-customize/ ]; then mkdir $(current-dir)addons-customize/ ; fi
	if [ ! -f $(current-dir)config/odoo.conf ]; then cp $(current-dir)config/odoo.conf.example $(current-dir)config/odoo.conf; fi
	if [ ! -f $(current-dir).env ]; then cp $(current-dir).env.example $(current-dir).env; fi

run:
	docker-compose up -d