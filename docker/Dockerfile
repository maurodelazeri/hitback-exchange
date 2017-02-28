FROM theoraculo/hitback-exchange
MAINTAINER Hitback maurodelazeri@gmail.com

RUN /etc/init.d/nginx start
RUN /etc/init.d/redis-server start
RUN /etc/init.d/rabbitmq-server start
RUN rm -rf /home/deploy/hitback-exchange/
RUN rm -rf hitback-exchange
RUN git clone https://github.com/maurodelazeri/hitback-exchange.git
RUN mv hitback-exchange /home/deploy/
RUN chown -R deploy:deploy /home/deploy/hitback-exchange/
USER deploy
WORKDIR /home/deploy/hitback-exchange/
RUN cd /home/deploy/hitback-exchange/; RAILS_ENV=production /home/deploy/.rbenv/shims/bundle install --without development test --path vendor/bundle
RUN cd /home/deploy/hitback-exchange/; RAILS_ENV=production /home/deploy/.rbenv/shims/rake db:setup
RUN cd /home/deploy/hitback-exchange/; RAILS_ENV=production /home/deploy/.rbenv/shims/rake assets:precompile
RUN cd /home/deploy/hitback-exchange/; RAILS_ENV=production /home/deploy/.rbenv/shims/rake daemons:start
RUN cd /home/deploy/hitback-exchange/; RAILS_ENV=production /home/deploy/.rbenv/shims/rake solvency:liability_proof
