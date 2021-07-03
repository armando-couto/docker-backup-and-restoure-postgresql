# syntax=docker/dockerfile:1
FROM postgres:12.7

COPY job.sh .

ENV HOST 127.0.0.1
ENV DATABASE postgres
ENV USERNAME postgres
ENV PASSWORD postgres

# Set the default command to run when starting the container
CMD ["/usr/lib/postgresql/9.3/bin/postgres", "-D", "/var/lib/postgresql/9.3/main", "-c", "config_file=/etc/postgresql/9.3/main/postgresql.conf"]