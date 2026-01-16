#!/usr/bin/env bash
set -e

CONFIG_ID="${NEXTDNS_PROFILE_ID}"
LISTEN="${NEXTDNS_LISTEN:-:53}"

if [[ -z "$CONFIG_ID" ]]; then
  echo "Error: NEXTDNS_PROFILE_ID required"
  exit 1
fi

exec nextdns run \
  -config "$CONFIG_ID" \
  -listen "$LISTEN" \
  -report-client-ip
