if type lsd &> /dev/null; then
    alias ls="lsd -lAh --group-dirs=first"
elif type exa &> /dev/null; then
    alias ls="exa -la --group-directories-first --git"
elif [ $(uname -s) = "Linux" ]; then
    alias ls="ls -lAh --color=auto --group-directories-first"
else
    alias ls="ls -GAlh"
fi
