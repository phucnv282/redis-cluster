# syntax=docker/dockerfile:1
FROM grokzen/redis-cluster:5.0.12

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod 755 /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["redis-cluster", "redis-server"]
