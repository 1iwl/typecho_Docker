## Version
	
	PHP 7.2.17 (cli)
	nginx/1.15.12

## Clone Repositories

	git clone https://github.com/1iwl/typecho_Docker.git	


## Run in Docker Swarm

	
	docker stack deploy -c docker-compose.yml typecho
	#or
	docker-compose up -d 


## Import table structure

	
	mysql < typecho_utf8.sql


## Update 


	sh update.sh


## Home
	
	user:admin
	password:123123

## Static

	http://*.*.*.*/usr/themes/default/img/icon-search.png

