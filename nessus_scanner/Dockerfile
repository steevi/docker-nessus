FROM debian:10

ARG NESSUFILE="Nessus-8.13.1-debian6_amd64.deb"

RUN apt update && \
    apt -y upgrade && \
    apt install -y net-tools iputils-ping tzdata hydra-gtk && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY ${NESSUFILE}  /tmp/nessus.deb
COPY entrypoint.sh /usr/bin/entrypoint.sh

EXPOSE 8834

ENTRYPOINT /usr/bin/entrypoint.sh