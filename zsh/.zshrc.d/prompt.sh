function hr () {
    printf %"$COLUMNS"s\\n | tr " " "-"
}

function chpwd() {
    hr && command ls -A --color=always && hr
}

if type starship &> /dev/null && [[ $TERM != "dumb" ]]; then
    eval $(starship init zsh)
else
    export PS1="[%n@%m %~ %D{(%a %b %d) %H:%M}]%# "
fi
