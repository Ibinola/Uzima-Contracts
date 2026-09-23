#!/usr/bin/env bash
set -euo pipefail

echo "Running dead-code scanner for Soroban smart contracts..."
cargo check --target wasm32-unknown-unknown --message-format=json | grep -i "dead_code" || true
echo "Dead-code check completed successfully."
