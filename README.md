# simple-docker-proxy

Simple docker API proxy based on https://stackoverflow.com/a/2150188

## Run

### Local

`docker run -d --rm -p 127.0.0.1:1234:1234 -v /var/run/docker.sock:/var/run/docker.sock dimdm/simple-docker-proxy`

### Open

`docker run -d --rm -p 1234:1234 -v /var/run/docker.sock:/var/run/docker.sock dimdm/simple-docker-proxy`

## Test

`curl http://127.0.0.1:1234/containers/json`

