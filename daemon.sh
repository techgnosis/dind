#! /usr/bin/env bash

set -euo pipefail

docker run \
--privileged \
--name docker-daemon \
--network dind-network \
--network-alias docker \
-e DOCKER_TLS_CERTDIR=/certs \
-v dind-certs-ca:/certs/ca \
-v dind-certs-client:/certs/client \
docker:${DOCKER_VERSION}-dind