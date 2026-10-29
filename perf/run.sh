#!/bin/bash
export TARGET=http://$(cat ../node/lb_dns)
export DEBUG=plugin:publish-metrics:datadog-statsd
npm run artillery -- run $1.yaml --output $2.json
