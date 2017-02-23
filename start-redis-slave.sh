#!/bin/bash
#
#f [ -z "$DOCKER_REDIS_MASTER_PORT_6379_ADDR" ]; then
#	echo "DOCKER_REDIS_MASTER_PORT_6379_ADDR not defned. Did you run with -link?";
#	exit 7;
#fi

# exec allows docker-redis-slave to receive signals for clean shutdown
#

#cho "DOCKER_REDIS_MASTER_PORT_6379_ADDR -> " $DOCKER_REDIS_MASTER_PORT_6379_ADDR
#cho "DOCKER_REDIS_MASTER_PORT_6379_PORT -> " $DOCKER_REDIS_MASTER_PORT_6379_PORT

exec /usr/local/bin/redis-server --slaveof redis-master #$DOCKER_REDIS_MASTER_PORT_6379_ADDR $DOCKER_REDIS_MASTER_PORT_6379_PORT