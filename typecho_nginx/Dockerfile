# Copyright (C) 2018 - 2019 liwl <i@1iwl.com>

FROM liwl1iwl/typecho_phpfpm:latest as builder
FROM nginx
MAINTAINER liwl i@1iwl.com

#ADD ./typecho /typecho
COPY --from=builder /typecho /typecho

ADD ./conf/typecho.conf /etc/nginx/conf.d
RUN rm -f /etc/nginx/conf.d/default.conf
RUN mkdir -p /typecho/

RUN useradd nginx -M -s /sbin/nologin ; chown -R nginx. /typecho && chmod -R 755 /typecho



