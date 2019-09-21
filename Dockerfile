FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install --yes wget unzip

COPY mc.sh /mc.sh

ENTRYPOINT ["/mc.sh"]
