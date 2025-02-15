# syntax=docker/dockerfile:1
FROM postgres:17.3

COPY job.sh .

ENV HOST 127.0.0.1
ENV DATABASE postgres
ENV USERNAME postgres
ENV PASSWORD postgres

# Set the default command to run when starting the container
CMD ./job.sh