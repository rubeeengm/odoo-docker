current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
SHELL = /bin/sh

initial-config:
	if [ ! -d $(current-dir)addons/ ]; then mkdir $(current-dir)addons/ ; fi
	if [ ! -d $(current-dir)addons-customize/ ]; then mkdir $(current-dir)addons-customize/ ; fi
	if [ ! -f $(current-dir)config/odoo.conf ]; then cp $(current-dir)config/odoo.conf.example $(current-dir)config/odoo.conf; fi
	if [ ! -f $(current-dir).env ]; then cp $(current-dir).env.example $(current-dir).env; fi

build:
	docker compose up -d

clean:
	docker compose down -v

stop:
	docker stop odoo_db_16
	docker stop odoo_app_16

start:
	docker start odoo_db_16
	docker start odoo_app_16

restart:
	docker restart odoo_app_16

logs:
	docker logs -f odoo_app_16
