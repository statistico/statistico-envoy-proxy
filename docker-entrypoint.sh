#!/bin/sh
set -e

echo "Generating envoy.yaml config file..."
cat /tmpl/envoy.yaml.tmpl | envsubst \$STATISTICO_FOOTBALL_DATA_HOST,\$STATISTICO_FOOTBALL_DATA_PORT,\$STATISTICO_FOOTBALL_DATA_HOST,\$STATISTICO_FOOTBALL_DATA_PORT > /etc/envoy/envoy.yaml

echo "Starting Envoy..."
/usr/local/bin/envoy -c /etc/envoy/envoy.yaml
