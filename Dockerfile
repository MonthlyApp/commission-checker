FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /commission-checker
WORKDIR /commission-checker
ADD Gemfile /commission-checker/Gemfile
ADD Gemfile.lock /commission-checker/Gemfile.lock
RUN bundle install
ADD . /commission-checker
