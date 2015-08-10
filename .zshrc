# Load Oh My ZSH
if [ -e $HOME/.oh-my-zsh ]; then
  ZSH=$HOME/.oh-my-zsh
  ZSH_THEME="agnoster"
  COMPLETION_WAITING_DOTS="true"
  plugins=(git rails bundler history-substring-search zsh-syntax-highlighting)
  source $ZSH/oh-my-zsh.sh
fi

# Customize to your needs...
export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# Include bash aliases, if they exist
if [ -f $HOME/.bash_aliases ]; then
  . $HOME/.bash_aliases
fi

# Linux keychain
# eval $(keychain --eval --agents ssh -Q --quiet id_rsa)

# OSX only PATH additions
if [ uname = "Darwin" ]; then
  # Postgres.app
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

  # Homebrew
  export PATH="/usr/local/Cellar:$PATH"
fi

# Use Vim, natürlich
export EDITOR=vim

# GOPATH
export GOPATH=/Users/jonathan/.gocode

# Set node development environment
export NODE_ENV development

# Set HOSTNAME to http://localhost:3000
# e.g. link_url = ENV["HOSTNAME"] + "/blarg" -> "http://localhost:3000/blarg"
# But will be "http://mycompany.com/blarg" in production (if it's set there)
export HOSTNAME="http://localhost:3000"

# Add Heroku to path
if [ -f "/user/local/heroku/bin" ]; then
  export PATH="/usr/local/heroku/bin:$PATH"
fi

# NVM
export NVM_DIR="/Users/jonathan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load rbenv
if hash rbenv 2> /dev/null; then
  PATH="$HOME/.rbenv/bin:$PATH"
  PATH="$HOME/.rbenv/shims:$PATH"
  eval "$(rbenv init -)"
fi

# Load thefuck, if present
if hash thefuck 2> /dev/null; then
  eval "$(thefuck --alias)"
fi

# Copy function
if hash pbcopy 2> /dev/null; then
  copy ()
  {
    echo $argv | pbcopy
  }
fi

# Welcome message
if hash figlet 2> /dev/null; then
  echo $USER | tr "[a-z]" "[A-Z]" | figlet -f slant
  echo
fi

# Print out running Tmux sessions, if tmux is present
if hash tmux 2> /dev/null; then
  sessions=$(tmux list-session 2> /dev/null | grep -Eo '^\w+' | tr '\n' ' ')

  if [ $sessions ]; then
    echo "Sessions: $sessions"
    echo
  fi
fi
