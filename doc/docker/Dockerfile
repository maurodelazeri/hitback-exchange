FROM phusion/passenger-full
MAINTAINER PEATIO community@hitback.com

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

RUN apt update
RUN apt-get -y install imagemagick gsfonts

ADD hitback /home/app/hitback
RUN chown -R app:app /home/app/hitback

USER app
ENV HOME /home/app

WORKDIR /home/app/hitback
RUN bundle install --without development test --path vendor/bundle

# RUN ./bin/init_config
ADD conf/rails-amqp.yml /home/app/hitback/config/amqp.yml
ADD conf/rails-database.yml /home/app/hitback/config/database.yml
ADD conf/rails-application.yml /home/app/hitback/config/application.yml
ADD conf/nginx-hitback-env.conf /etc/nginx/main.d/hitback-env.conf

USER root

RUN rm /etc/nginx/sites-enabled/default
ADD conf/nginx-hitback-with-ssl.conf /etc/nginx/sites-available/hitback
RUN ln -s /etc/nginx/sites-available/hitback /etc/nginx/sites-enabled/hitback

RUN mkdir /etc/nginx/ssl_keys/
ADD conf/ssl_keys/server.crt /etc/nginx/ssl_keys/server.crt
ADD conf/ssl_keys/server.key /etc/nginx/ssl_keys/server.key

RUN chown -R app:app /home/app/hitback/config

RUN rm -f /etc/service/nginx/down

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
