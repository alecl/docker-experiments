# Base image with supervisord, SSH, and useful test utilities
FROM ubuntu:precise

MAINTAINER Alec Lazarescu version: 1.0

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
#RUN echo "deb http://archive.ubuntu.com/ubuntu precise-updates main restricted universe" >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu precise-backports main restricted universe" >> /etc/apt/sources.list

RUN apt-get update
#This is nice in theory but now you're no longer running the same image every time.  Needs more thought on how best to version.
#RUN apt-get -y upgrade
RUN apt-get -y install python-setuptools

RUN easy_install supervisor
RUN mkdir -p /var/log/supervisor
# our child config will go in this director
RUN mkdir -p /etc/supervisor/conf.d
ADD supervisord.conf /etc/supervisord.conf
#ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# ssh server
RUN apt-get -y install openssh-server
RUN mkdir -p /var/run/sshd

# weird local warning fix
RUN locale-gen en_US en_US.UTF-8

# Force a password of docker for the vagrant user for experiment/demo purposes.  Obviously DO NOT DO this for shared environments/production.
RUN useradd -m -d /home/vagrant -s /bin/bash -p $(perl -e'print crypt("docker", "aaa")') vagrant
RUN adduser vagrant sudo

# useful utilities
RUN apt-get -y install curl lynx unzip git jq

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 22

CMD ["/usr/local/bin/supervisord", "-n"]