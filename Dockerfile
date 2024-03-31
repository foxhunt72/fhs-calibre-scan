FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
MAINTAINER rdevos72@gmail.com

RUN apt-get update && \ 
    apt-get upgrade -y && \
    apt-get install -y calibre && \
    apt-get clean && \
    rm -rf /var/cache/apt/* && \ 
    mkdir /library /books /logs

ADD scripts/scan-calibre.sh /opt/scan-calibre.sh
ADD scripts/entrypoint.sh /opt/entrypoint.sh

VOLUME        ["/library", "/books"]
ENTRYPOINT           ["bash", "/opt/entrypoint.sh"]

