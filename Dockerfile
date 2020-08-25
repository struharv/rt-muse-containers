FROM debian:buster
RUN apt-get update
RUN apt-get install libnuma-dev libjson-c-dev libjson-c3 -y sl
COPY bin /bin
COPY input /input
ENTRYPOINT /bin/application /input/taskset.json

