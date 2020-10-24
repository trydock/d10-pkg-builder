FROM debian:buster
LABEL maintainer="debuggerboy"
SHELL ["/bin/bash", "-c"]
COPY entrypoint.sh /entrypoint.sh
COPY src-snips.txt /src-snips.txt
RUN cat /src-snips.txt >> /etc/apt/sources.list
RUN apt update
RUN apt install -y build-essential debhelper devscripts pkg-config
ENTRYPOINT ["/entrypoint.sh"]
