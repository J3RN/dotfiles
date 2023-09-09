if hash exa &> /dev/null; then
    alias ls="exa -l --group-directories-first --git"
elif [ $(uname -s) = "Linux" ]; then
    alias ls="ls -lh --color=auto --group-directories-first"
else
    alias ls="ls -Glh"
fi
