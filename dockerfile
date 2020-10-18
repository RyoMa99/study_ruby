FROM ruby:2.7

RUN apt-get update

# git,vimをインストール
RUN apt-get install -y --no-install-recommends \
    vim \
    git

# bundlerで自分が使いたいライブラリを追加する
WORKDIR /usr
ADD Gemfile Gemfile
RUN bundler install


WORKDIR /usr/src