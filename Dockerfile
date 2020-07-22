FROM 056154071827.dkr.ecr.us-east-1.amazonaws.com/base-image-openresty:latest
MAINTAINER cru.org <wmd@cru.org>

# Copy container configuration
COPY docker /

# Install lua-resty-auto-ssl
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-auto-ssl 0.13.1 \
  && chown nobody /etc/resty-auto-ssl

WORKDIR /usr/local/openresty/nginx
