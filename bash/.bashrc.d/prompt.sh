hr () {
  printf %"$COLUMNS"s\\n | tr " " "-"
}

cdpwdhook () {
  if [[ "$PREVPWD" != "$PWD" ]]; then
    hr && command ls -A --color=always && hr
    export PREVPWD="$PWD"
  fi
}

export PROMPT_COMMAND=cdpwdhook

if hash starship 2> /dev/null && [[ $TERM != "dumb" ]]; then
    eval "$(starship init bash)"
else
    export PS1="[\u@\h \w \A]\$ "
fi
