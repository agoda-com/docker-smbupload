FROM ubuntu

RUN apt-get update && apt-get install smbclient -y
ADD entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

VOLUME /upload
CMD entrypoint.sh
