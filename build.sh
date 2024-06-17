#! /usr/bin/env bash

set -euo pipefail

docker image rm dind-astro-test:1

docker build -t dind-astro-test:1 .