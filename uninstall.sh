#! /usr/bin/env bash

if ! type stow &> /dev/null; then
  echo "GNU Stow is required, but not found. Exiting."
  exit 1
fi

stow -t ~ -D bash
stow -t ~ -D emacs
stow -t ~ -D git
stow -t ~ -D starship
stow -t ~ -D tmux
stow -t ~ -D zsh
