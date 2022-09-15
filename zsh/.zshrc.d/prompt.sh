function hr () {
    printf %"$COLUMNS"s\\n | tr " " "-"
}

function chpwd() {
    hr && command ls -A --color=always && hr
}

export PS1="[%n@%m %~ %D{(%a %b %d) %H:%M}]%# "
