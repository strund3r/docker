FROM ruby:2.2.3-onbuild

RUN apt-get install -y libgmp3-dev

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev redis-server

RUN mkdir /myapp
WORKDIR /myapp

ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

ADD . /myapp