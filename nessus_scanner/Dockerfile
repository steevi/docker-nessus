FROM debian:10

ARG NESSUFILE="Nessus-8.13.1-debian6_amd64.deb"

RUN apt update && \
    apt -y upgrade && \
    apt install -y net-tools iputils-ping tzdata hydra-gtk && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY ${NESSUFILE}  /tmp/nessus.deb

RUN dpkg -i /tmp/nessus.deb
RUN rm /tmp/nessus.deb

EXPOSE 8834

CMD [ "/opt/nessus/sbin/nessus-service" ]