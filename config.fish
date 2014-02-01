# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme agnoster

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins rvm rails bundler emoji-clock extract vi-mode

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load aliases
. ~/.fish_aliases

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load plugins
set fish_plugins git rails

# Add Heroku to PATH
set PATH "/usr/local/heroku/bin" $PATH 

# Set editor to VIM
set EDITOR vim
