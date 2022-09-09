if [ $(uname -s) = "Linux" ]; then
    alias ls="ls -Alh --color=auto --group-directories-first"
else
    alias ls="ls -GAlh"
fi
