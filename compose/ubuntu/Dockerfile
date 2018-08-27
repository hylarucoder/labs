FROM ubuntu:18.04

MAINTAINER twocucao <twocucao@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

COPY ./compose/ubuntu/sources.list /etc/apt/
RUN apt clean && apt update && apt upgrade -yq && apt install -yq \
    build-essential \
    curl \
    git \
    ipython3 \
    libcurl4-openssl-dev \
    libffi-dev \
    libfreetype6-dev \
    libjpeg8-dev \
    liblcms2-dev \
    libgdal-dev \
    libpq-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libtiff5-dev \
    libwebp-dev \
    libxml2-dev \
    libxslt1-dev \
    libyaml-dev \
    locales \
    ntp \
    openssh-server \
    openssl \
    python3-lxml \
    python3-pip \
    python3-setuptools \
    python3-tk \
    python3.5-dev \
    python3.5 \
    sqlite3 \
    sudo \
    tcl8.6-dev \
    tk8.6-dev \
    vim \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*
