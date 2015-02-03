#!/usr/bin/docker
FROM ubuntu:trusty
MAINTAINER Matt Chapman <Matt@NinjitsuWeb.com>

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible
RUN apt-get install -y ssh-client
ADD hosts /etc/ansible/hosts

CMD /bin/bash
