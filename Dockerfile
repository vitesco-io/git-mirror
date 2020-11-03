FROM python:3.7-alpine

RUN apk add --update --no-cache \
      git \
      openssh-client \
      jq

RUN pip install --no-cache-dir awscli

ADD mirror.sh /usr/local/bin
RUN chmod +x /usr/local/bin/mirror.sh

ENTRYPOINT [ "/bin/sh" ]
