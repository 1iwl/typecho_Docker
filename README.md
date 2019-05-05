## Version
	
	PHP 7.2.17 (cli)
	nginx version: nginx/1.15.12

## Clone Repositories

	git clone https://github.com/1iwl/typecho_Docker.git	

## Edit your Mysql Config

	docker service create \
	--name typecho_mysql \
	--publish 3309:3306 \
	--network typecho_net \
	-e MYSQL_ROOT_PASSWORD=123456 \
	mysql:5.7
	#这里的3309是方便管理

	cat Docker_phpfpm/typecho/config.inc.php
		$db->addServer(array (
		  'host' => 'typecho_mysql',
		  'user' => 'typecho',
		  'password' => '123456',
		  'charset' => 'utf8',
		  'port' => '3306',
		  'database' => 'typecho',
		), Typecho_Db::READ | Typecho_Db::WRITE);

## Import table structure

	create database typecho;

	grant all on typecho.* to typecho@'%' identified by '123456';
	
	mysql < typecho_utf8.sql


	
## Run in Docker Swarm


	sh start.sh

## Update 


	sh update.sh


## Home
	
	user:admin
	password:123123

## Static

	http://*.*.*.*/usr/themes/default/img/icon-search.png

