FROM buildpack-deps:latest
MAINTAINER Tomohiko Himura <eiel.hal@gmail.com>

ENV STACK_VERSION 0.1.6.0
ENV STACK_DOWNLOAD_URL https://github.com/commercialhaskell/stack/releases/download/v$STACK_VERSION/stack-$STACK_VERSION-linux-x86_64.tar.gz
ENV DEBIAN_FRONTEND noninteractive
ENV PATH $PATH:/root/.local/bin
ENV LANG C.UTF-8

RUN apt-get update -q && \
    apt-get install -qy libgmp-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /root/.local/bin && \
    curl -L $STACK_DOWNLOAD_URL | tar zx -C /root/.local/bin/ --wildcards '*/stack' --strip=1  && \
    chmod +x /root/.local/bin/stack

CMD stack
