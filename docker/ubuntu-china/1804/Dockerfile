FROM ubuntu:18.04

COPY ./apt/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get -y install apt-transport-https ca-certificates curl software-properties-common
