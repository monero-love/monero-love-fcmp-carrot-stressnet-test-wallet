# Published examples

Source: https://monero.love/guides/fcmp-carrot-stressnet-test-wallet/

Read the article for the ordering, prerequisites and version limits of these separate examples.

## Block 1

```text
./monerod --version
./monero-wallet-cli --version
mkdir -p "$HOME/fcmp-carrot-test/chain"
mkdir -p "$HOME/fcmp-carrot-test/wallets"
```

## Block 2

```text
./monerod --testnet \
  --data-dir "$HOME/fcmp-carrot-test/chain" \
  --rpc-bind-ip 127.0.0.1 \
  --rpc-bind-port 28081
```

## Block 3

```text
./monero-wallet-cli --testnet \
  --daemon-address 127.0.0.1:28081 \
  --generate-new-wallet "$HOME/fcmp-carrot-test/wallets/practice"
```
