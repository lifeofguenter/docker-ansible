FROM python:3.9-alpine

CMD ["bash", "-c"]

RUN set -ex && \
    apk add --no-progress --no-cache \
      bash \
      ca-certificates \
      openssh-client \
      git \
      openssl \
      libffi \
      musl

RUN set -ex && \
    apk add --quiet --no-cache --virtual .build-deps \
      gcc \
      libffi-dev \
      linux-headers \
      musl-dev && \
    pip3 install \
      ansible==5.2.0 \
      ansible-lint==5.3.2 && \
    apk del --quiet .build-deps
