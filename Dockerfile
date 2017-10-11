FROM jetbrains/teamcity-minimal-agent

MAINTAINER Lukasz Kusek <https://github.com/lukasz-kusek/docker-teamcity-agent-nodejs>

RUN apt-get update -y && apt-get install -y sudo git bzip2 libfontconfig1
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get update -y && apt-get install -y nodejs
RUN npm install -g gulp npm-cache