hr () {
  printf %"$COLUMNS"s\\n | tr " " "-"
}

cdpwdhook () {
  if [[ "$PREVPWD" != "$PWD" ]]; then
    hr && command ls -A --color=always && hr
    export PREVPWD="$PWD"
  fi
}

export PROMPT_COMMAND="$PROMPT_COMMAND;cdpwdhook"

if hash starship 2> /dev/null && [[ $TERM != "dumb" ]]; then
    eval "$(starship init bash)"
else
    export PS1="[\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \[\033[01;33m\]\A\[\033[00m\]] \$ "
fi
