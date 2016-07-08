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

# Utility function to source file if it exists
function source_if_exists
  if test -e $argv
    source $argv
  end
end

# Utility function to check if a program is installed
function installed
  type $argv ^ /dev/null > /dev/null
end

# Source aliases
set abbr_config $HOME/.config/fish/abbreviations.fish
source_if_exists $abbr_config

# Source private additions
set private_config $HOME/.config/fish/private.fish
source_if_exists $private_config

# Source work additions
set work_config $HOME/.config/fish/work.fish
source_if_exists $work_config

# OSX only PATH additions
if uname | grep "Darwin" > /dev/null
  # Add Postgres.app directory to PATH (Mac only)
  prepend_to_path "/Applications/Postgres.app/Contents/Versions/latest/bin"

  # Make brew VIM higher priority
  prepend_to_path "/usr/local/Cellar"

  # LaTeX tools
  prepend_to_path "/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin"
end

# Set editor to a version of Vi (Neovim has highest preference)
if installed nvim
  set -x EDITOR nvim
else if installed vim
  set -x EDITOR vim
else
  set -x EDITOR vi
end

# Set GOPATH for Go development
set -x GOPATH $HOME/.gocode

# Android home (for Meteor)
set -x ANDROID_HOME $HOME/Library/Android/sdk

# Set node development environment
set -x NODE_ENV development

# Load Heroku binaries
prepend_to_path "/usr/local/heroku/bin"

# Load rbenv
if test -e $HOME/.rbenv
  prepend_to_path $HOME/.rbenv/bin
  prepend_to_path $HOME/.rbenv/shims
  rbenv rehash >/dev/null ^&1
end

# Load thefuck, if present
if installed thefuck
  eval (thefuck --alias | tr '\n' ';')
end

# Copy function
if installed pbcopy
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
  if installed figlet
    echo "J3RN" | tr [a-z] [A-Z] | figlet -f slant
    echo
  end

  # Print out running Tmux sessions, if tmux is present
  if installed tmux
    set sessions (tmux list-session 2> /dev/null | grep -Eo '^\w+' | tr '\n' ' ')

    if [ $sessions ]
      echo "Sessions: $sessions"
      echo
    end
  end
end
