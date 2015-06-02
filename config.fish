# If you have Oh My Fish...
if test -e "$HOME/.oh-my-fish"
  # Define the path to your oh-my-fish.
  set fish_path $HOME/.oh-my-fish

  # Theme
  set fish_theme bobthefish

  # Load Plugins
  set fish_plugins git rails emoji-clock extract vi-mode

  # Load aliases
  source ~/.fish_aliases

  # Load oh-my-fish configuration.
  source $fish_path/oh-my-fish.fish
end

# OSX only items
if uname | grep "Darwin" > /dev/null
  # Add Postgres.app directory to PATH (Mac only)
  set PATH "/Applications/Postgres93.app/Contents/MacOS/bin/" $PATH

  # Make brew VIM higher priority
  set PATH "/usr/local/Cellar" $PATH
end

# Add Heroku to PATH (Linux)
if test -e /usr/local/heroku/bin
  set PATH "/usr/local/heroku/bin" $PATH
end

# Set editor to VIM
set -x EDITOR vim

# GOPATH
set GOPATH ~/.gocode

# Set node development environment (can be read without being exported?)
set NODE_ENV development

# Set HOSTNAME to http://localhost:3000
# e.g. link_url = ENV["HOSTNAME"] + "/blarg" -> "http://localhost:3000/blarg"
# But will be "http://mycompany.com/blarg" in production (if it's set there)
set -x HOSTNAME "http://localhost:3000"

# Load NVM, if you've got it
if test -s ~/.nvm-fish/nvm.fish
  source ~/.nvm-fish/nvm.fish
  nvm use 0.10 > /dev/null
end

# Load rbenv
if which rbenv > /dev/null
  set PATH $HOME/.rbenv/bin $PATH
  set PATH $HOME/.rbenv/shims $PATH
  rbenv rehash >/dev/null ^&1
end

# Load thefuck, if present
if which thefuck > /dev/null
  function fuck
    eval (thefuck $history[2])
end
end

# My custom keybindings
function fish_user_key_bindings
  # Fish autocompletions are really good. Trust me.
  bind \t accept-autosuggestion
end

# Welcome message
function fish_greeting
  echo "       _______ ____  _   __"
  echo "      / /__  // __ \\/ | / / "
  echo " __  / / /_ </ /_/ /  |/ /  "
  echo "/ /_/ /___/ / _, _/ /|  /  "
  echo "\\____//____/_/ |_/_/ |_/   "
  echo

  # Print out running Tmux sessions, if tmux is present
  if which tmux > /dev/null
    set sessions (tmux list-session 2> /dev/null | grep -Eo '^\w+' | tr '\n' ' ')

    if [ $sessions ]
      echo "Sessions: $sessions"
      echo
  end
end
end
