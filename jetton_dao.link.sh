#!/bin/bash

# Source directory
SRC_DIR="./contracts/jetton_dao/wrappers"

# Destination directory
DEST_DIR="./wrappers"

# Ensure destination directory exists
mkdir -p "$DEST_DIR"

# List of files to symlink
FILES=(
  "JettonMinter.compile.ts"
  "JettonMinterTests.ts"
  "JettonMinter.ts"
  "JettonWallet.compile.ts"
  "JettonWalletTests.ts"
  "JettonWallet.ts"
  "MinterUpdate.compile.ts"
  "ui-utils.ts"
  "VoteKeeper.compile.ts"
  "VoteKeeperTests.ts"
  "VoteKeeper.ts"
  "Voting.compile.ts"
  # "VotingResults.compile.ts"
  # "VotingResults.ts"
  "VotingTests.ts"
  "Voting.ts"
)

# Create symbolic links
for file in "${FILES[@]}"; do
  ln -sf "../$SRC_DIR/$file" "$DEST_DIR/$file"
done

# Output confirmation
echo "Symbolic links created in $DEST_DIR"

# Map .func and .tlb files from jetton_dao/contracts

# Destination directory
DEST_DIR="./contracts"

SRC_DIR_JETTON_FUNCS="$BASE_DIR/contracts/jetton_dao/contracts"

JETTON_FUNC_FILES=(
  dao-decisions-filter.func
  dao-utils.func
  error-codes.func
  external_params.func
  jetton-minter.func
  jetton-utils.func
  jetton-wallet-auth.func
  jetton-wallet.func
  # messages.func
  # op-codes.func
  params.func
  # stdlib.func
  # types.func
  vote-keeper.func
  voting.func
  voting-results.func
  voting-results-utils.func
  voting.tlb
)

# for file in "${JETTON_FUNC_FILES[@]}"; do
#   ln -sf "../$SRC_DIR_JETTON_FUNCS/$file" "$DEST_DIR/$file"
# done

# echo "Jetton DAO .func and .tlb symbolic links created in $DEST_DIR"
