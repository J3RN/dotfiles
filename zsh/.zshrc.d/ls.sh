if [ $(uname -s) = "Linux" ]; then
    alias ls="ls -lh --color=auto --group-directories-first"
else
    alias ls="ls -Glh"
fi
