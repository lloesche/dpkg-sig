FROM debian:jessie
MAINTAINER Mesosphere Package Builder <support@mesosphere.io>
RUN apt-get update && \
    apt-get -y install apt-utils && \
    apt-get -y install gnupg dpkg-sig dpkg-dev
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
WORKDIR /root
CMD ["dpkg-sig"]
