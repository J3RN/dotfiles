hr () {
  printf %"$COLUMNS"s\\n | tr " " "-"
}

cdpwdhook () {
  if [[ "$PREVPWD" != "$PWD" ]]; then
    hr && command ls --group-directories-first -A --color=always && hr
    export PREVPWD="$PWD"
  fi
}

if test -z "$PROMPT_COMMAND"; then
    export PROMPT_COMMAND="cdpwdhook"
else
    export PROMPT_COMMAND="$PROMPT_COMMAND;cdpwdhook"
fi

if type starship &> /dev/null && [[ $TERM != "dumb" ]]; then
    eval "$(starship init bash)"
else
    export PS1="[\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \[\033[01;33m\]\A\[\033[00m\]] \$ "
fi
