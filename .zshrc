## Utility functions
# Copy function
if hash pbcopy 2> /dev/null; then
    copy ()
    {
	echo $argv | pbcopy
    }
fi

## Load Oh My ZSH
if [ -e $HOME/.oh-my-zsh ]; then
    ZSH=$HOME/.oh-my-zsh
    ZSH_THEME="agnoster"
    COMPLETION_WAITING_DOTS="true"
    plugins=(git rails bundler history-substring-search zsh-syntax-highlighting)
    source $ZSH/oh-my-zsh.sh
fi

## Modify LC_ALL for sane sorting under Linux
#export LC_ALL="C"

## Other useful env vars
# XDG base directory (default)
export XDG_CONFIG_HOME=$HOME/.config
export ZSH_CONFIG_HOME=$XDG_CONFIG_HOME/zsh

# Use terminal Emacs as the default editor
export EDITOR="emacs"

# GOPATH
export GOPATH=$HOME/.gocode

# Set node development environment
export NODE_ENV development

# Set HOSTNAME to http://localhost:3000
# e.g. link_url = ENV["HOSTNAME"] + "/blarg" -> "http://localhost:3000/blarg"
# But will be "http://mycompany.com/blarg" in production (if it's set there)
export HOSTNAME="http://localhost:3000"

## Load rbenv
if hash rbenv 2> /dev/null; then
    eval "$(rbenv init -)"
fi

## Load thefuck, if present
if hash thefuck 2> /dev/null; then
    eval "$(thefuck --alias)"
fi

## Inclusions
# Source aliases, if they exist
if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

# Source private additions
private_path=$ZSH_CONFIG_HOME/private.zsh
if [ -f $private_path ]; then
    source $private_path
fi

## Welcome message
# Print out running Tmux sessions, if tmux is present
if hash tmux 2> /dev/null; then
    sessions=$(tmux list-session 2> /dev/null | grep -Eo '^\w+' | tr '\n' ' ')

    if [ $sessions ]; then
	echo "Sessions: $sessions"
	echo
    fi
fi
