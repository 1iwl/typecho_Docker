network_name=typecho_net
docker network create --driver overlay $network_name

docker service create \
--name typecho_phpfpm \
--replicas=1 \
--network $network_name \
liwl1iwl/typecho_phpfpm

docker service create \
--name typecho_nginx \
--replicas=1 \
--publish 80:80 \
--publish 443:443 \
--network $network_name \
liwl1iwl/typecho_nginx
