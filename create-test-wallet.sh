#!/bin/sh
set -eu
: "${STRESSNET_BIN_DIR:?Set the absolute directory of verified compatible beta binaries}"
: "${STRESSNET_DATA_DIR:?Set a dedicated absolute test data directory}"
case "$STRESSNET_BIN_DIR:$STRESSNET_DATA_DIR" in
  /*:/*) ;;
  *) echo "Both directories must be absolute" >&2; exit 1 ;;
esac
umask 077
mkdir -p "$STRESSNET_DATA_DIR/wallets"
if [ -e "$STRESSNET_DATA_DIR/wallets/practice" ] || [ -e "$STRESSNET_DATA_DIR/wallets/practice.keys" ]; then
  echo "Practice wallet already exists. Open it explicitly instead of recreating it." >&2
  exit 1
fi
exec "$STRESSNET_BIN_DIR/monero-wallet-cli" --testnet --daemon-address 127.0.0.1:28081 --generate-new-wallet "$STRESSNET_DATA_DIR/wallets/practice"
