#! /usr/bin/env bash

if ! type stow; then
  echo "GNU Stow is required, but not found. Exiting."
  exit 1
fi

stow -t ~ tmux
stow -t ~ git
stow -t ~ emacs
stow -t ~ bash
stow -t ~ zsh
