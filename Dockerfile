FROM alpine:3.6

ENV PORT=1234

RUN apk --no-cache add \
      docker \
      socat

VOLUME /var/run/docker.sock
EXPOSE ${PORT}

CMD socat TCP-LISTEN:${PORT},reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
