#! /usr/bin/env bash

set -euo pipefail

docker network create dind-network
docker volume create dind-certs-ca
docker volume create dind-certs-client