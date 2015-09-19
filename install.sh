#! /bin/bash

link_to_home() {
  echo "Linking $1 to $HOME/$1"
  ln -si "$(pwd)/$1" "$HOME/$1"
}

link_special() {
  echo "Linking $1 to $2"
  ln -si "$(pwd)/$1" $2
}

# Link Bash files
if hash bash 2> /dev/null; then
  link_to_home .bash_aliases
  link_to_home .bashrc
fi

# Link ZSH files
if hash zsh 2> /dev/null; then
  if [ ! -e "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh"
    curl -L "https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh" | sh
  fi

  link_to_home .zshrc
fi

# Link Tmux files
if hash tmux 2> /dev/null; then
  link_to_home .tmux.conf
fi

# Link Git files
if hash git 2> /dev/null; then
  echo "You should update the name and email in '.gitconfig'. Have you done this? "
  read input

  if [[ $input == y* ]]; then
    link_to_home .gitconfig
    link_to_home .gitignore_global
  elif [[ $input == n* ]]; then
    echo "Please do so and run this again"
  else
    echo "Answer was not recognized. Not linking '.gitconfig'"
  fi
fi

# Link Fish files and install oh-my-fish
if hash fish 2> /dev/null; then
  # Install oh-my-fish
  if [ ! -e "$HOME/.oh-my-fish" ]; then
    echo "Installing oh-my-fish"
    curl -L "https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish" | fish
  fi

  # Link fish config
  link_special "config.fish" "$HOME/.config/fish/config.fish"

  # Link fish aliases
  link_to_home .fish_aliases
fi
