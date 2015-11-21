FROM ubuntu:14.04
MAINTAINER Eric Johnson <ejohnson.pub@gmail.com>

RUN apt-get -yqq update
RUN apt-get -yqq upgrade
RUN apt-get -yqq install curl lsb-release git \
    build-essential \
    libcurl3 libcurl3-gnutls libcurl4-openssl-dev \
    libxml2-dev libxslt1-dev libpcre3-dev libsqlite3-dev \
    openjdk-7-jre-headless \
    ruby

RUN apt-get -yqq clean
RUN gem install bundler

