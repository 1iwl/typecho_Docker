# Copyright (C) 2018 - 2019 liwl <i@1iwl.com>

FROM bitnami/php-fpm

MAINTAINER liwl i@1iwl.com

RUN mkdir -p /typecho/
ADD ./typecho /typecho
RUN useradd nginx -M -s /sbin/nologin ; chown -R nginx. /typecho && chmod -R 755 /typecho

