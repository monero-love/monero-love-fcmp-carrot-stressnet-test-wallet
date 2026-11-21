# Try FCMP++ and Carrot Without Touching Your Main Wallet: configuration examples

Source: https://monero.love/guides/fcmp-carrot-stressnet-test-wallet/

Use only a dedicated test environment and matching, verified stressnet daemon and wallet binaries. Never supply a mainnet seed or wallet file. The source article targets beta 3.1, which forked the ordinary testnet. Stable Monero with `--testnet` is not an interchangeable substitute.

Set `STRESSNET_BIN_DIR` to the absolute directory containing the verified beta binaries and `STRESSNET_DATA_DIR` to a new absolute directory outside this checkout. Check both binaries with `--version` against your selected compatible release before running either script. The wrappers enforce testnet and separate paths, but cannot authenticate a binary or prove that a directory is free of real wallet secrets.

Run `sh start-daemon.sh`, wait for synchronization, then run `sh create-test-wallet.sh` in a second terminal with the same environment variables. The wallet wrapper refuses an existing practice wallet. Keep its generated recovery information private.

`monerod-testnet.conf` is an alternative to the daemon wrapper. Use the verified beta binary with `--config-file /absolute/path/monerod-testnet.conf --data-dir /absolute/test/path/chain`. The explicit data directory is required for isolation. Do not run both alternatives together. The configuration file intentionally has no `$HOME` placeholder because shell expansion does not occur in this format.

No beta synchronization or test transaction was performed. Test funds have no real value.

Reference: [beta 3.1 release and compatibility notes](https://github.com/seraphis-migration/monero/releases/tag/v0.19.0.0-beta.3.1).

## Files

- `monerod-testnet.conf`
- `start-daemon.sh`
- `create-test-wallet.sh`

`ARTICLE-EXAMPLES.md` preserves the published code blocks for context. It is a reference, not a script to execute in one pass. `SOURCE.json` identifies the fetched page and packaged file hashes. No services were installed or restarted when preparing this repository.
