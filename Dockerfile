FROM ubuntu:18.04

RUN apt-get update \
    && apt-get -yq install smbclient \
    && rm -r /var/lib/apt/lists/*

ADD entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

VOLUME /upload
CMD entrypoint.sh
