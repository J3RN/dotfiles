#! /bin/sh

link_to_home() {
  echo "Linking $1 to $HOME/$1"
  ln -si $1 "$HOME/$1"
}

link_special() {
  echo "Linking $1 to $2"
  ln -si $1 $2
}

# Link Bash files
if which bash > /dev/null; then
  link_to_home .bash_aliases
  link_to_home .bashrc
fi

# Link ZSH files
if which zsh > /dev/null; then
  link_to_home .zshrc

  if [ ! -e "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh"
    curl -L "https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh" | sh
  fi
fi

# Link Tmux files
if which tmux > /dev/null; then
  link_to_home .tmux.conf
fi

# Link Fish files and install oh-my-fish
if which fish > /dev/null; then
  # Link fish config
  link_special config.fish "$HOME/.config/fish/config.fish"

  # Link fish aliases
  link_to_home .fish_aliases

  # Install oh-my-fish
  if [ ! -e "$HOME/.oh-my-fish" ]; then
    echo "Installing oh-my-fish"
    curl -L "https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish" | fish
  fi
fi
