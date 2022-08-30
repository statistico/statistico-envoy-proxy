#!/bin/bash

set -e

mkdir -p /tmp/workspace/docker-cache

docker save -o /tmp/workspace/docker-cache/statisticoenvoyproxy_envoy.tar statistico-envoy-proxy_envoy:latest
