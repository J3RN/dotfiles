# Load Oh My Fish
if test -e $HOME/.oh-my-fish
  set fish_path $HOME/.oh-my-fish
  set fish_theme bobthefish
  set fish_plugins git rails emoji-clock extract vi-mode rvm
  source $fish_path/oh-my-fish.fish
end

# Source aliases
if test -e $HOME/.fish_aliases
  source $HOME/.fish_aliases
end

# OSX only PATH additions
if uname | grep "Darwin" > /dev/null
  # Add Postgres.app directory to PATH (Mac only)
  set PATH "/Applications/Postgres.app/Contents/Versions/9.4/bin" $PATH

  # Make brew VIM higher priority
  set PATH "/usr/local/Cellar" $PATH
end

# Set editor to VIM
set -x EDITOR vim

# GOPATH
set GOPATH $HOME/.gocode

# Set node development environment
set -x NODE_ENV development

# Set HOSTNAME to http://localhost:3000
# e.g. link_url = ENV["HOSTNAME"] + "/blarg" -> "http://localhost:3000/blarg"
# But will be "http://mycompany.com/blarg" in production (if it's set there)
set -x HOSTNAME "http://localhost:3000"

# Add Heroku to PATH
if test -e /usr/local/heroku/bin
  set PATH "/usr/local/heroku/bin" $PATH
end

# Load NVM
if test -e $HOME/.nvm-fish/nvm.fish
  source $HOME/.nvm-fish/nvm.fish
  nvm use 0.10 > /dev/null
end

# Load rbenv
if hash rbenv 2> /dev/null
  set PATH $HOME/.rbenv/bin $PATH
  set PATH $HOME/.rbenv/shims $PATH
  rbenv rehash >/dev/null ^&1
end

# Load thefuck, if present
if hash thefuck 2> /dev/null
  eval (thefuck --alias)
end

# Copy function
if hash pbcopy 2> /dev/null
  function copy
    echo $argv | pbcopy
  end
end

# Welcome message
function fish_greeting
  if hash figlet 2> /dev/null
    echo $USER | tr [a-z] [A-Z] | figlet -f slant
    echo
  end

  # Print out running Tmux sessions, if tmux is present
  if hash tmux 2> /dev/null
    set sessions (tmux list-session 2> /dev/null | grep -Eo '^\w+' | tr '\n' ' ')

    if [ $sessions ]
      echo "Sessions: $sessions"
      echo
    end
  end
end
