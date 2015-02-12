FROM gliderlabs/alpine:3.1
RUN apk-install bash git \
    && git clone https://github.com/sstephenson/bats /tmp/bats \
    && cd /tmp/bats \
    && ./install.sh /usr/local \
    && rm -rf /tmp/bats \
    && apk del git
