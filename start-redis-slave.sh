#!/bin/sh
#
#f [ -z "$DOCKER_REDIS_MASTER_PORT_6379_ADDR" ]; then
#	echo "DOCKER_REDIS_MASTER_PORT_6379_ADDR not defned. Did you run with -link?";
#	exit 7;
#fi

# exec allows docker-redis-slave to receive signals for clean shutdown
#

# echo "DOCKER_REDIS_MASTER_PORT_6379_ADDR -> " $DOCKER_REDIS_MASTER_PORT_6379_ADDR
# echo "DOCKER_REDIS_MASTER_PORT_6379_PORT -> " $DOCKER_REDIS_MASTER_PORT_6379_PORT

echo never > /sys/kernel/mm/transparent_hugepage/enabled

exec /usr/local/bin/redis-server --slaveof redis 6379 #$DOCKER_REDIS_MASTER_PORT_6379_ADDR $DOCKER_REDIS_MASTER_PORT_6379_PORT