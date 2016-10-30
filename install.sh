#! /bin/bash

if [[ $1 == -y ]]; then
  yes=true
fi

link_to_home() {
  echo "Linking $1 to $HOME/$1"
  if [[ $yes == true ]]; then
    ln -sf "$(pwd)/$1" "$HOME/$1"
  else
    ln -si "$(pwd)/$1" "$HOME/$1"
  fi
}

link_special() {
  echo "Linking $1 to $2"
  if [[ $yes == true ]]; then
    ln -sf "$(pwd)/$1" $2
  else
    ln -si "$(pwd)/$1" $2
  fi
}

yes_or_ask() {
  if [[ $yes == true ]]; then
    return 0
  fi

  echo $1
  read input
  if [[ $input == y* ]]; then
    return 0
  elif [[ $input == n* ]]; then
    echo $2
  else
    echo "Answer not recognized, skipping..."
  fi

  return 1
}

# Link ZSH files
if type zsh &> /dev/null; then
  if [ ! -e "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh"
    curl -L "https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh" | sh
  fi

  link_to_home .zshrc
  link_to_home .aliases
fi

# Link Tmux files
if type tmux &> /dev/null; then
  link_to_home .tmux.conf
  link_to_home .tmux
fi

# Link Git files
if type git &> /dev/null; then
  if yes_or_ask "You should update the name and email in '.gitconfig'. Have you done this? " "Please do so and run this again"; then
    link_to_home .gitconfig
  fi

  link_to_home .gitignore_global
fi

# Link Fish files and install oh-my-fish
if type fish &> /dev/null; then
  # Install oh-my-fish
  if [ ! -e "$HOME/.local/share/omf" ]; then
    echo "Installing oh-my-fish"
    curl -L http://get.oh-my.fish | fish
  fi

  # Link fish configs
  link_special "config.fish" "$HOME/.config/fish/config.fish"
  link_special "abbreviations.fish" "$HOME/.config/fish/abbreviations.fish"
fi

# Link Tmuxinator files
if type tmuxinator &> /dev/null; then
  if yes_or_ask "Would you like my Tmuxinator projects (you probably don't)?" "Cool, I totally understand."; then
    link_to_home .tmuxinator
  fi
fi

# Link Emacs files
if type emacs &> /dev/null; then
  link_to_home .emacs.d
fi
