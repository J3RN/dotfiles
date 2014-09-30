# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails vi-mode bundler history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# GOPATH
export GOPATH=/Users/jonathan/.gocode

# Set Vim keybindings
bindkey -v

# Use Vim, natürlich
export EDITOR=vim

# Include bash aliases, if they exist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Linux keychain
# eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

# I use this for better_errors with Unicorn and Foreman. Long story.
export WEB_CONCURRENCY=1

# Additions to the path
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH="/usr/local/heroku/bin:$PATH" # Add Heroku to PATH
PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH" # Postgres.app
PATH="/Applications/Android Studio.app/sdk/platform-tools:$PATH"  # Android tools

### NVM
export NVM_DIR="/Users/jonathan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Welcome message
echo "       _______ ____  _   __"
echo "      / /__  // __ \\/ | / / "
echo " __  / / /_ </ /_/ /  |/ /  "
echo "/ /_/ /___/ / _, _/ /|  /  "
echo "\\____//____/_/ |_/_/ |_/   "
echo ""
