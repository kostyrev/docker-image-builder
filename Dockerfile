FROM ubuntu:latest

RUN apt-get -qq update && apt-get -qq install make software-properties-common curl > /dev/null \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && apt-add-repository -y ppa:ansible/ansible-2.6 \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    && apt-get -qq update && apt-get -qq install ansible docker-ce git > /dev/null
