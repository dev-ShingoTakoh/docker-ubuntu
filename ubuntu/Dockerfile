FROM ubuntu:latest

RUN apt-get update

# 日本語化
RUN apt-get install -y locales
RUN locale-gen ja_JP.UTF-8
RUN echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

# gnupg2インストール
RUN apt-get install -y gnupg2

# wgetインストール
RUN apt-get install -y wget

# mongoshインストール
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
RUN apt-get update
RUN apt-get install -y mongodb-mongosh