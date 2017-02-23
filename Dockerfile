FROM redis:latest

EXPOSE 6379

VOLUME ["/data"]
ADD https://raw.githubusercontent.com/jaq316/redis-slave/master/start-redis-slave.sh /start-redis-slave.sh

RUN chmod +x /start-redis-slave.sh

ENTRYPOINT ["/start-redis-slave.sh", "--dir", "/data"]