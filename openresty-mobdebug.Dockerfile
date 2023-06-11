FROM debian:bookworm-slim

RUN apt-get update

# OPENRESTY
RUN apt-get -y install --no-install-recommends wget gnupg ca-certificates
RUN wget -O - https://openresty.org/package/pubkey.gpg | apt-key add -
RUN echo "deb http://openresty.org/package/debian bullseye openresty" > /etc/apt/sources.list.d/openresty.list
RUN apt-get update
RUN apt-get -y install --no-install-recommends openresty

RUN mkdir /var/run/openresty

# MOBDEBUG

RUN apt-get -y install --no-install-recommends luarocks gcc git
RUN luarocks install mobdebug
