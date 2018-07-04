#!/bin/sh

# Add bash aliasses
ENV BASH_ALIASSES /home/$WORKSPACE_USER/.bash_aliases
RUN touch $BASH_ALIASSES
RUN echo 'alias mysql-connect="mysql -h mysql -D $MYSQL_DATABASE -u $MYSQL_USER --password=$MYSQL_PASSWORD"' >> $BASH_ALIASSES
RUN echo 'alias redis-connect="redis-cli -h redis"' >> $BASH_ALIASSES

/sbin/my_init