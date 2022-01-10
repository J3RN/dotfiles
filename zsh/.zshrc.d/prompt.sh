function hr () {
    printf %"$COLUMNS"s | tr " " "-" | xargs echo
}

function chpwd() {
    hr && command ls -A --color=always && hr
}

export PS1="[%n@%m %~ %D{(%a %b %d) %H:%M}]%# "
