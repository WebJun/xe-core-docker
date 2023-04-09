FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN echo 'root:docker123' | chpasswd
RUN sed -i 's@archive.ubuntu.com@mirror.kakao.com@g' /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common
RUN add-apt-repository ppa:ondrej/php -y
RUN apt-get update && \
    apt-get install -y --no-install-recommends sudo ca-certificates gnupg software-properties-common \
    wget curl openssh-server vim git nginx unzip

RUN sudo add-apt-repository ppa:ondrej/php
RUN apt-get update && \
    apt-get install -y --no-install-recommends php5.6 php5.6-fpm php5.6-common php5.6-mysql php5.6-xml php5.6-xmlrpc \
    php5.6-curl php5.6-gd php5.6-cli php5.6-dev php5.6-imap php5.6-mbstring php5.6-opcache php5.6-soap php5.6-zip
RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config

ENTRYPOINT service ssh start && service php5.6-fpm stop && service php5.6-fpm start && service nginx start && bash