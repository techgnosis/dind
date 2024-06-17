#! /usr/bin/env bash

set -euo pipefail

docker run --rm -it --network dind-network \
-e DOCKER_TLS_CERTDIR=/certs \
-v dind-certs-client:/certs/client:ro \
-w /root \
dind-astro-test:1 sh
# docker:26.1.4 sh