FROM alpine:3.12.0

ENV PORT=2375

RUN apk --no-cache add socat

VOLUME /var/run/docker.sock
EXPOSE ${PORT}

CMD socat TCP-LISTEN:${PORT},reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock

