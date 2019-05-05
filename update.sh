docker service update --image liwl1iwl/typecho_phpfpm:latest typecho_phpfpm
docker service ps typecho_phpfpm 

docker service update --image liwl1iwl/typecho_nginx:latest typecho_nginx 
docker service ps typecho_nginx
