# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load Plugins
set fish_plugins git rails emoji-clock extract vi-mode

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
set -x EDITOR vim

# GOPATH
set GOPATH ~/.gocode

# Set node development environment (can be read without being exported?)
set NODE_ENV development

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

# Load rbenv
if which rbenv > /dev/null
  set PATH $HOME/.rbenv/bin $PATH
  set PATH $HOME/.rbenv/shims $PATH
  rbenv rehash >/dev/null ^&1
end
