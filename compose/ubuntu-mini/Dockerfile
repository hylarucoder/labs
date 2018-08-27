FROM ubuntu:18.04

MAINTAINER twocucao <twocucao@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

COPY ./compose/ubuntu/sources.list /etc/apt/

RUN apt clean && \
    apt update && \
    apt upgrade -yq && \
    apt install -yq locales && \
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt install -yq build-essential \
    curl \
    git \
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
    ntp \
    openssh-server \
    openssl \
    ipython3 \
    python3-lxml \
    python3-pip \
    python3-setuptools \
    python3-tk \
    python3.6-dev \
    python3.6 \
    sqlite3 \
    sudo \
    tcl8.6-dev \
    tk8.6-dev \
    vim \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

