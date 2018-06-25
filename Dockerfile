FROM phusion/baseimage:latest

# Set Variables
ENV WORKSPACE_NODE_VERSION "10.4.1"
ENV MYSQL_USER "admin"
ENV MYSQL_PASSWORD "admin"
ENV MYSQL_DATABASE "db"

# Default Shell
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Add PHP Repository
RUN add-apt-repository -y ppa:ondrej/php
# Install Packages

RUN apt-get update && apt-get install -y software-properties-common build-essential libkrb5-dev libfontconfig pkg-config libcurl4-openssl-dev libedit-dev libssl-dev libxml2-dev libjemalloc1 libjemalloc-dev gcc make python2.7 xz-utils openssl php-cli php-curl php-intl php-json php-xml php-mbstring php-mysql php-zip php-bcmath php-memcached php-gd php-dev git curl wget vim unzip mysql-client

# Install Composer
RUN cd /tmp && curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN cd /tmp && php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Create Workspace User
ENV WORKSPACE_USER workspace
RUN adduser --disabled-password --gecos "" --home /home/$WORKSPACE_USER $WORKSPACE_USER
RUN usermod -G $WORKSPACE_USER $WORKSPACE_USER

USER $WORKSPACE_USER
# Install Node with nvm
RUN mkdir /home/$WORKSPACE_USER/nvm
ENV NVM_DIR /home/$WORKSPACE_USER/nvm
RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

RUN source $NVM_DIR/nvm.sh \
    && nvm install $WORKSPACE_NODE_VERSION \
    && nvm alias default $WORKSPACE_NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/v$WORKSPACE_NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$WORKSPACE_NODE_VERSION/bin:$PATH

RUN npm config set python /usr/bin/python2.7

RUN npm install --quiet -g @vue/cli
RUN npm install --quiet -g @vue/cli-init

USER root

# Install Redis CLI
RUN cd /tmp && wget http://download.redis.io/redis-stable.tar.gz
RUN cd /tmp && tar xvzf redis-stable.tar.gz
RUN cd /tmp/redis-stable && make
RUN cp /tmp/redis-stable/src/redis-cli /usr/local/bin/
RUN rm -rf /tmp/redis-stable

# Add bash aliasses
ENV BASH_ALIASSES /home/$WORKSPACE_USER/.bash_aliases
RUN touch $BASH_ALIASSES
RUN echo 'alias mysql-connect="mysql -h mysql -D $MYSQL_DATABASE -u $MYSQL_USER --password=$MYSQL_PASSWORD"' >> $BASH_ALIASSES
RUN echo 'alias redis-connect="redis-cli -h redis"' >> $BASH_ALIASSES

# Create Working Directory
RUN mkdir /code

# Set Working Directory
WORKDIR /code

# Expose Ports
EXPOSE 3000
