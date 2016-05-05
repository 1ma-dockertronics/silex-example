MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY: all
all: dev sta

.PHONY: dev
dev:
	cp -up $(MAKEFILE_DIR)dev/docker-compose.yml.dist $(MAKEFILE_DIR)../../docker-compose.yml

.PHONY: sta
sta: clean
	rsync -arv --files-from=$(MAKEFILE_DIR)sta/nginx/include --exclude='*.php' $(MAKEFILE_DIR)../../ $(MAKEFILE_DIR)sta/nginx/silex.sta
	rsync -arv --files-from=$(MAKEFILE_DIR)sta/php/include                     $(MAKEFILE_DIR)../../ $(MAKEFILE_DIR)sta/php/silex.sta
	docker-compose -f $(MAKEFILE_DIR)sta/docker-compose.yml build

.PHONY: clean
clean:
	rm -rf $(MAKEFILE_DIR)sta/nginx/silex.sta
	rm -rf $(MAKEFILE_DIR)sta/php/silex.sta
