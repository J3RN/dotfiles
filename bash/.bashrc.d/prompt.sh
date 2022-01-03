hr () {
  printf %"$COLUMNS"s | tr " " "-" | xargs echo
}

cdpwdhook () {
  if [[ "$PREVPWD" != "$PWD" ]]; then
    hr && command ls -A --color=always && hr
    export PREVPWD="$PWD"
  fi
}

export PROMPT_COMMAND=cdpwdhook