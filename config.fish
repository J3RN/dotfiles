# Path to Oh My Fish install.
set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG "$HOME/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Load Oh My Fish
if test -e $HOME/.oh-my-fish
  set fish_path $HOME/.oh-my-fish
  set fish_theme bobthefish
  set fish_plugins git rails emoji-clock extract vi-mode nvm
  source $fish_path/oh-my-fish.fish
end

# Utility function that does what you'd think
function prepend_to_path
  if begin test -e $argv; and not contains $argv $PATH; end
    set -x PATH $argv $PATH
  end
end

# Source aliases
if test -e $HOME/.config/fish/abbreviations.fish
  source $HOME/.config/fish/abbreviations.fish
end

# Source private additions
if test -e $HOME/.config/fish/private.fish
  source $HOME/.config/fish/private.fish
end

# Source work additions
if test -e $HOME/.config/fish/work.fish
  source $HOME/.config/fish/work.fish
end

# OSX only PATH additions
if uname | grep "Darwin" > /dev/null
  # Add Postgres.app directory to PATH (Mac only)
  prepend_to_path "/Applications/Postgres.app/Contents/Versions/latest/bin"

  # Make brew VIM higher priority
  prepend_to_path "/usr/local/Cellar"
end

# Set editor to VIM
set -x EDITOR vim

# GOPATH
set -x GOPATH $HOME/.gocode

# Android home (for Meteor)
set -x ANDROID_HOME $HOME/Library/Android/sdk

# Set node development environment
set -x NODE_ENV development

# Set HOSTNAME to http://localhost:3000
# e.g. link_url = ENV["HOSTNAME"] + "/blarg" -> "http://localhost:3000/blarg"
# But will be "http://mycompany.com/blarg" in production (if it's set there)
set -x HOSTNAME "http://localhost:3000"

# Load Heroku binaries
if test -e /usr/local/heroku/bin
  prepend_to_path "/usr/local/heroku/bin"
end

# Load rbenv
if type rbenv ^ /dev/null > /dev/null
  prepend_to_path $HOME/.rbenv/bin
  prepend_to_path $HOME/.rbenv/shims
  rbenv rehash >/dev/null ^&1
end

# Load thefuck, if present
if type thefuck ^ /dev/null > /dev/null
  eval (thefuck --alias | tr '\n' ';')
end

# Copy function
if type pbcopy ^ /dev/null > /dev/null
  function copy
    echo $argv | pbcopy
  end
end

# Used to deploy with git hooks
function deploy
  git push deploy master
end

# Welcome message
function fish_greeting
  if type figlet ^ /dev/null > /dev/null
    echo $USER | tr [a-z] [A-Z] | figlet -f slant
    echo
  end

  # Print out running Tmux sessions, if tmux is present
  if type tmux ^ /dev/null > /dev/null
    set sessions (tmux list-session 2> /dev/null | grep -Eo '^\w+' | tr '\n' ' ')

    if [ $sessions ]
      echo "Sessions: $sessions"
      echo
    end
  end
end
