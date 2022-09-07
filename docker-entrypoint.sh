#!/bin/sh
set -e

echo "Generating envoy.yaml config file..."
cat /tmpl/envoy.yaml.tmpl | envsubst \$STATISTICO_FOOTBALL_DATA_HOST,\$STATISTICO_FOOTBALL_DATA_PORT,\$STATISTICO_ODDS_COMPILER_HOST,\$STATISTICO_ODDS_COMPILER_PORT,\$STATISTICO_RATINGS_HOST,\$STATISTICO_RATINGS_PORT,\$STATISTICO_TRADER_HOST,\$STATISTICO_TRADER_PORT > /etc/envoy/envoy.yaml

echo "Starting Envoy..."
/usr/local/bin/envoy -c /etc/envoy/envoy.yaml
