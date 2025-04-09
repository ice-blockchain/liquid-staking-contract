#!/bin/bash

# Target directories
WRAPPERS_DIR="./wrappers"
CONTRACTS_DIR="./contracts"

# List of wrapper files to unlink
WRAPPER_FILES=(
  "JettonMinter.compile.ts"
  "JettonMinter.ts"
  "JettonWallet.compile.ts"
  # "JettonWallet.ts"
  "ui-utils.ts"
)

# List of .func files to unlink
FUNC_FILES=(
  "error-codes.func"
  "jetton-minter.func"
  "jetton-utils.func"
  "jetton-wallet.func"
  "messages.func"
  "op-codes.func"
  "params.func"
  "stdlib.func"
)

# Unlink wrapper files (only if they are symlinks)
for file in "${WRAPPER_FILES[@]}"; do
  target="$WRAPPERS_DIR/$file"
  if [ -L "$target" ]; then
    rm "$target"
    echo "Removed symlink: $target"
  fi
done

# Unlink .func files from contracts dir (only if symlinks)
for file in "${FUNC_FILES[@]}"; do
  target="$CONTRACTS_DIR/$file"
  if [ -L "$target" ]; then
    rm "$target"
    echo "Removed symlink: $target"
  fi
done

echo "Unlinking completed."

