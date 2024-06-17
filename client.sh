#! /usr/bin/env bash

set -euo pipefail

./build.sh

docker run --rm -it --network dind-network \
-e DOCKER_TLS_CERTDIR=/certs \
-v dind-certs-client:/certs/client:ro \
-w /root/astro-project \
dind-astro-test:1 sh