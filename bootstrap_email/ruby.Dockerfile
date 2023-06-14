FROM ruby:latest
RUN mkdir -p /work
WORKDIR /work
RUN gem install bootstrap-email