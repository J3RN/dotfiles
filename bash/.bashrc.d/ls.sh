if hash lsd 2> /dev/null; then
    alias ls="lsd -lAh --group-directories-first"
elif hash exa &> /dev/null; then
    alias ls="exa -la --group-directories-first --git"
elif [ $(uname -s) = "Linux" ]; then
    alias ls="ls -lAh --color=auto --group-directories-first"
else
    alias ls="ls -GAlh"
fi
