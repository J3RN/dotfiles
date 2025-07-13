if type lsd &> /dev/null; then
    alias ls="lsd -lAh --group-dirs=first"
elif type eza &> /dev/null; then
    alias ls="eza -la --group-directories-first --git --icons=always"
elif [ $(uname -s) = "Linux" ]; then
    alias ls="ls -lAh --color=auto --group-directories-first"
else
    alias ls="ls -GAlh"
fi
