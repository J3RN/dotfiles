# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins rvm git rails emoji-clock extract vi-mode

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load aliases
. ~/.fish_aliases

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# OSX only items
if uname | grep "Darwin" > /dev/null
  # Add Postgres.app directory to PATH (Mac only)
  set PATH "/Applications/Postgres93.app/Contents/MacOS/bin/" $PATH

  # Make brew VIM higher priority
  set PATH "/usr/local/Cellar" $PATH
end

# Add Heroku to PATH (Linux)
#set PATH "/usr/local/heroku/bin" $PATH

# Set editor to VIM
set EDITOR vim
set NODE_ENV development

# GOPATH
set GOPATH ~/.gocode

# Load NVM
if test -s ~/.nvm-fish/nvm.fish
  source ~/.nvm-fish/nvm.fish
  nvm use 0.10 > /dev/null
end

# Print out running Tmux sessions
if which tmux > /dev/null
  set sessions (tmux list-session 2> /dev/null | grep -Eo '^\w+' | tr '\n' ' ')

  if [ $sessions ]
    echo "Sessions: $sessions"
  end
end
