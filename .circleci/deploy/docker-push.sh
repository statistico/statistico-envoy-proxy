#!/bin/bash

set -e

aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION | bash

docker tag "statisticoenvoyproxy_envoy" "$AWS_ECR_ACCOUNT_URL/statistico-envoy-proxy:$CIRCLE_SHA1"
docker push "$AWS_ECR_ACCOUNT_URL/statistico-envoy-proxy:$CIRCLE_SHA1"
