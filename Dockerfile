FROM ruby:3.3.1 AS rails-app

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH


WORKDIR $INSTALL_PATH

COPY rails_app/ .

RUN rm -f /tmp/pids/server.pid

RUN gem install rails bundler

RUN bundle install

CMD bin/rails server
