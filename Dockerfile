FROM ubuntu:19.04

RUN apt-get update && \
    apt-get install -y curl deluged deluge-web deluge-webui

ADD app/ /app
WORKDIR /app

RUN chmod +x /app/startup.sh

# ports and volumes
EXPOSE 8112/tcp 6881-6891/udp 58846

ENTRYPOINT ["/app/startup.sh"]
