#! /usr/bin/env bash

set -euo pipefail

docker run \
--rm \
-it \
--network dind-network \
-e DOCKER_TLS_CERTDIR=/certs \
-v dind-certs-client:/certs/client:ro \
-v $(pwd):/root \
-w /root \
docker:${DOCKER_VERSION} sh