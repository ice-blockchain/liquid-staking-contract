#!/bin/bash

# Target directories
WRAPPERS_DIR="./wrappers"
CONTRACTS_DIR="./contracts"

# List of wrapper files to unlink
WRAPPER_FILES=(
  "JettonMinter.compile.ts"
  "JettonMinterTests.ts"
  "JettonMinter.ts"
  "JettonWallet.compile.ts"
  "JettonWalletTests.ts"
  # "JettonWallet.ts"
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

# List of .func and .tlb files to unlink
FUNC_FILES=(
  "dao-decisions-filter.func"
  "dao-utils.func"
  "error-codes.func"
  "external_params.func"
  "jetton-minter.func"
  "jetton-utils.func"
  "jetton-wallet-auth.func"
  "jetton-wallet.func"
  "messages.func"
  "op-codes.func"
  "params.func"
  "stdlib.func"
  "types.func"
  "vote-keeper.func"
  "voting.func"
  "voting-results.func"
  "voting-results-utils.func"
  "voting.tlb"
)

# Remove symlinks from wrappers
for file in "${WRAPPER_FILES[@]}"; do
  target="$WRAPPERS_DIR/$file"
  if [ -L "$target" ]; then
    rm "$target"
    echo "Removed symlink: $target"
  fi
done

# Remove symlinks from contracts dir
for file in "${FUNC_FILES[@]}"; do
  target="$CONTRACTS_DIR/$file"
  if [ -L "$target" ]; then
    rm "$target"
    echo "Removed symlink: $target"
  fi
done

echo "Unlinking of jetton_dao files completed."


