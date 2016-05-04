all: dev sta

dev:
	cp -up etc/docker/dev/docker-compose.yml.dist docker-compose.yml
	docker-compose build

sta: clean
	rsync -av --files-from=etc/docker/sta/nginx/include --exclude='*.php' . etc/docker/sta/nginx/silex.sta
	rsync -av --files-from=etc/docker/sta/php/include . etc/docker/sta/php/silex.sta
	docker-compose -f etc/docker/sta/docker-compose.yml build

clean:
	rm -rf etc/docker/sta/nginx/silex.sta
	rm -rf etc/docker/sta/php/silex.sta
