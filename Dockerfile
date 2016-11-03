FROM ubuntu:16.04
MAINTAINER Eric Chen <eric.chen@sfgov.org>
RUN apt-get update && apt-get install -y ruby ruby-dev make gcc ruby-bundler git sudo nano
RUN gem install jekyll bundler
RUN useradd -ms /bin/bash jekyll && \
chown jekyll /home/jekyll && \
sudo su jekyll && \
cd /home/jekyll && \
git clone https://github.com/sfdtmedia/analytics.git && \
cd analytics && \
bundle install && \
bundle exec jekyll serve --watch 
