FROM alpine:3.17.2

LABEL maintainer="Fabricio Leotti <fabricio.leotti@gmail.com>"

USER root

RUN adduser -h /opt/knetkit --disabled-password --uid 1111 knetkituser

WORKDIR /opt/knetkit

RUN apk update \
  && apk add traceroute tcpdump tar wget iputils openssl busybox-extras netcat-openbsd

USER knetkituser

ENTRYPOINT ["/bin/sh","-c","while sleep 3600; do :; done"]