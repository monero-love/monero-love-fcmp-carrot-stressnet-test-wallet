#!/bin/sh
set -eu
: "${STRESSNET_BIN_DIR:?Set the absolute directory of verified compatible beta binaries}"
: "${STRESSNET_DATA_DIR:?Set a dedicated absolute test data directory}"
case "$STRESSNET_BIN_DIR:$STRESSNET_DATA_DIR" in
  /*:/*) ;;
  *) echo "Both directories must be absolute" >&2; exit 1 ;;
esac
umask 077
mkdir -p "$STRESSNET_DATA_DIR/chain"
exec "$STRESSNET_BIN_DIR/monerod" --testnet --data-dir "$STRESSNET_DATA_DIR/chain" --rpc-bind-ip 127.0.0.1 --rpc-bind-port 28081
