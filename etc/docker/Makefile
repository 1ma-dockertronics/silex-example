.PHONY: all
all: dev sta

.PHONY: dev
dev:
	cp -up dev/docker-compose.yml.dist ../../docker-compose.yml

.PHONY: sta
sta: clean
	rsync -arv --files-from=sta/nginx/include --exclude='*.php' ../../ sta/nginx/silex.sta
	rsync -arv --files-from=sta/php/include ../../ sta/php/silex.sta
	docker-compose -f sta/docker-compose.yml build

.PHONY: clean
clean:
	rm -rf sta/nginx/silex.sta
	rm -rf sta/php/silex.sta
