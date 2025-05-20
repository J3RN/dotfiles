#! /usr/bin/env bash

if ! type stow; then
  echo "GNU Stow is required, but not found. Exiting."
  exit 1
fi

stow -t ~ bash
stow -t ~ emacs
stow -t ~ git
stow -t ~ starship
stow -t ~ tmux
stow -t ~ zsh
