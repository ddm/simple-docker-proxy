# simple-docker-proxy

Simple docker API proxy based on https://stackoverflow.com/a/2150188

## Run

### Local

`docker run -d --rm -p 127.0.0.1:2375:2375 -v /var/run/docker.sock:/var/run/docker.sock dimdm/simple-docker-proxy`

### Open

`docker run -d --rm -p 2375:2375 -v /var/run/docker.sock:/var/run/docker.sock dimdm/simple-docker-proxy`

## Test

`curl http://127.0.0.1:2375/containers/json`

