FROM ruby:3.3.1 AS rails-app

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH


WORKDIR $INSTALL_PATH

COPY rails_app/ .

RUN gem install rails bundler

RUN bundle install

EXPOSE 3000
CMD ["./bin/rails", "server"]
