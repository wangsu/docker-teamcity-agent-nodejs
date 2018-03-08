FROM jetbrains/teamcity-agent

MAINTAINER Su Wang <https://github.com/wangsu/docker-teamcity-agent-nodejs>

RUN apt-get update -y && apt-get install -y sudo git bzip2 libfontconfig1
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get update -y && apt-get install -y nodejs
RUN npm install -g gulp npm-cache
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && sudo apt-get install yarn
RUN git config --global http.sslVerify false 
