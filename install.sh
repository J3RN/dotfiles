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
fi

# Link Git files
if type git &> /dev/null; then
  echo "You should update the name and email in '.gitconfig'. Have you done this? "
  read input

  if [[ $input == y* ]]; then
    link_to_home .gitconfig
    link_to_home .gitignore_global
  elif [[ $input == n* ]]; then
    echo "Please do so and run this again"
    exit
  else
    echo "Answer was not recognized. Not linking '.gitconfig'"
  fi
fi

# Link Fish files and install oh-my-fish
if type fish &> /dev/null; then
  # Install oh-my-fish
  if [ ! -e "$HOME/.local/share/omf" ]; then
    echo "Installing oh-my-fish"
    curl -L "https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install" | fish
  fi

  # Link fish configs
  link_special "config.fish" "$HOME/.config/fish/config.fish"
  link_special "abbreviations.fish" "$HOME/.config/fish/abbreviations.fish"
fi

# Check for Tmuxinator
if type tmuxinator &> /dev/null; then
  echo "Would you like my Tmuxinator projects (you probably don't)?"
  read input

  if [[ $input == y* ]]; then
    link_to_home .tmuxinator
  elif [[ $input == n* ]]; then
    echo "Cool, I totally understand."
  else
    echo "Answer was not recognized. Not linking '.tmuxinator'"
  fi
fi
