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

# Add Postgres.app directory to PATH (Mac only)
set PATH "/Applications/Postgres93.app/Contents/MacOS/bin/" $PATH

# Make brew VIM higher priority
set PATH "/usr/local/Cellar" $PATH

# Add Heroku to PATH (Linux)
#set PATH "/usr/local/heroku/bin" $PATH

# Set editor to VIM
set EDITOR vim
set NODE_ENV development

# GOPATH
set GOPATH /Users/jonathan/.gocode

# NVM path
test -s /Users/jonathan/.nvm-fish/nvm.fish; and source /Users/jonathan/.nvm-fish/nvm.fish

if type nvm > /dev/null
  nvm use 0.10
end
