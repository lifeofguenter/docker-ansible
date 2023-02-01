FROM python:3.10-alpine

CMD ["bash", "-c"]

RUN set -ex && \
    apk add --no-progress --no-cache \
      bash \
      ca-certificates \
      openssh-client \
      git \
      openssl \
      libffi \
      musl \
      make

RUN set -ex && \
    apk add --quiet --no-cache --virtual .build-deps \
      gcc \
      libffi-dev \
      linux-headers \
      musl-dev && \
    pip3 install \
      ansible==7.2.0 \
      ansible-lint==6.12.0 && \
    apk del --quiet .build-deps
