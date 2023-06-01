FROM debian:11
WORKDIR /opt/hw/
RUN apt-get update
RUN apt-get install -y wget bash
CMD wget $SITE/favicon.ico
