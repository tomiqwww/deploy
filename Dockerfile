FROM alpine:3.11.3

MAINTAINER Yaroslav Andriichuk <tomiqwww@gmail.com>

RUN apk update \
	&& apk upgrade \
	&& apk add --no-cache rsync openssh-client \
	&& rm -rf /var/cache/apk/*

COPY entrypoint.sh /script/entrypoint.sh

WORKDIR /workspace

ENTRYPOINT ["/bin/sh", "/script/entrypoint.sh"]

CMD ["deploy"]
