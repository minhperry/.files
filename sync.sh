#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"
GIT_BIN=$(which git)

cd "$DOTFILES_DIR" || exit

# Add all changes (Stow links ensure the files in here are always up to date)
$GIT_BIN add .

# Only commit if there are changes
if ! $GIT_BIN diff-index --quiet HEAD; then
  echo "Syncing dotfiles to GitHub..."

  COMMIT_MSG=$(date +'%d.%m.%Y %H:%M:%S')
  if [[ $1 ]]; then
    COMMIT_MSG="$1"
  fi
  $GIT_BIN commit -m "update dotfiles: $COMMIT_MSG"
  $GIT_BIN push
else
  echo "No changes detected."
fi
