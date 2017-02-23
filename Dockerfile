FROM redis:latest

EXPOSE 6379

VOLUME ["/data"]

COPY start-redis-slave.sh /start-redis-slave.sh

RUN chmod +x /start-redis-slave.sh

ENTRYPOINT ["/start-redis-slave.sh", "--dir", "/data"]