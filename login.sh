#! /usr/bin/env sh

set -euo pipefail

docker login -u cli --password $ASTRONOMER_AUTH_TOKEN images.astronomer.cloud