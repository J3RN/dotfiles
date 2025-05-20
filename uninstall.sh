#! /usr/bin/env bash

if ! type stow; then
  echo "GNU Stow is required, but not found. Exiting."
  exit 1
fi

stow -t ~ -D tmux
stow -t ~ -D git
stow -t ~ -D emacs
stow -t ~ -D bash
stow -t ~ -D zsh
