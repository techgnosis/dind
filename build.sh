#! /usr/bin/env sh

set -euo pipefail

DATE=$(date -u +"%Y-%m-%dT%H-%M-%S")

docker build -t images.astronomer.cloud/$ORG_ID/$DEPLOYMENT_ID:deploy-$DATE astro-project