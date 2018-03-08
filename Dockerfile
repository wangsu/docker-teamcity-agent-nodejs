FROM jetbrains/teamcity-minimal-agent

MAINTAINER Su Wang <https://github.com/wangsu/docker-teamcity-agent-nodejs>

RUN apt-get update -y && apt-get install -y sudo git bzip2 libfontconfig1
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get update -y && apt-get install -y nodejs
RUN npm install -g gulp npm-cache
RUN git config --global http.sslVerify false 
