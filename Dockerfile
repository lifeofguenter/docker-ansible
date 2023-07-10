FROM python:3.11-alpine

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
      make \
      gettext

RUN set -ex && \
    apk add --quiet --no-cache --virtual .build-deps \
      gcc \
      libffi-dev \
      linux-headers \
      musl-dev && \
    pip3 install \
      ansible==8.1.0 \
      ansible-lint==6.17.2 && \
    apk del --quiet .build-deps
