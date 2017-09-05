FROM jetbrains/teamcity-minimal-agent

MAINTAINER Lukasz Kusek <https://github.com/lukasz-kusek/docker-teamcity-agent-nodejs>

RUN apt-get update -y
RUN apt-get install -y sudo
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs