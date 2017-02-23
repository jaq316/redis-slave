#!/bin/bash
#
if [ -z "$DOCKER_REDIS_MASTER_PORT_6379_ADDR" ]; then
	echo "DOCKER_REDIS_MASTER_PORT_6379_ADDR not defined. Did you run with -link?";
	exit 7;
fi

# exec allows docker-redis-slave to receive signals for clean shutdown
#

echo "DOCKER_REDIS_MASTER_PORT_6379_ADDR -> " $DOCKER_REDIS_MASTER_PORT_6379_ADDR
echo "DOCKER_REDIS_MASTER_PORT_6379_PORT -> " $DOCKER_REDIS_MASTER_PORT_6379_PORT

exec /usr/local/bin/redis-server --slaveof $DOCKER_REDIS_MASTER_PORT_6379_ADDR $DOCKER_REDIS_MASTER_PORT_6379_PORT
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Security Status Help