FROM gliderlabs/alpine:3.3
RUN apk-install bash curl \
    && curl -sL https://github.com/sstephenson/bats/archive/master.zip > /tmp/bats.zip \
    && cd /tmp \
    && unzip -q bats.zip \
    && ./bats-master/install.sh /usr/local \
    # /usr/local/bin/bats should be a symlink, so make it happen.
    && ln -sf /usr/local/libexec/bats /usr/local/bin/bats \
    && rm -rf /tmp/bats* \
    && apk del curl
