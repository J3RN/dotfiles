# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

COMPLETION_WAITING_DOTS="true"

plugins=(git rails bundler history-substring-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# GOPATH
export GOPATH=/Users/jonathan/.gocode

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
PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"      # Postgres.app
PATH="/Applications/Android Studio.app/sdk/platform-tools:$PATH"  # Android tools

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# NVM
export NVM_DIR="/Users/jonathan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load rbenv
if hash rbenv 2> /dev/null; then
  PATH="$HOME/.rbenv/bin:$PATH"
  PATH="$HOME/.rbenv/shims:$PATH"
  eval "$(rbenv init -)"
fi

# added by travis gem
[ -f /Users/jonathan/.travis/travis.sh ] && source /Users/jonathan/.travis/travis.sh

# Welcome message
echo "       _______ ____  _   __"
echo "      / /__  // __ \\/ | / / "
echo " __  / / /_ </ /_/ /  |/ /  "
echo "/ /_/ /___/ / _, _/ /|  /  "
echo "\\____//____/_/ |_/_/ |_/   "
echo ""
