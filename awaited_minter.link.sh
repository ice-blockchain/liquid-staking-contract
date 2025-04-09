#!/bin/bash

# Source directory
SRC_DIR="./contracts/awaited_minter/wrappers"

# Destination directory
DEST_DIR="./wrappers"

# Ensure destination directory exists
mkdir -p "$DEST_DIR"

# List of files to symlink
FILES=(
  "JettonMinter.compile.ts"
  "JettonMinter.ts"
  "JettonWallet.compile.ts"
  "JettonWallet.ts"
  "ui-utils.ts"
)

# Create symbolic links
for file in "${FILES[@]}"; do
  ln -sf "../$SRC_DIR/$file" "$DEST_DIR/$file"
done

# Output confirmation
echo "Symbolic links created in $DEST_DIR"

# Additional: map awaited_minter .func files

DEST_DIR="./contracts"

SRC_DIR_FUNCS="$BASE_DIR/contracts/awaited_minter/contracts"

# List of .func files
FUNC_FILES=(
  error-codes.func
  jetton-minter.func
  jetton-utils.func
  jetton-wallet.func
  messages.func
  op-codes.func
  params.func
  stdlib.func
)

# Symlink them into wrappers
for file in "${FUNC_FILES[@]}"; do
  ln -sf "../$SRC_DIR_FUNCS/$file" "$DEST_DIR/$file"
done

echo ".func symbolic links created in $DEST_DIR"
