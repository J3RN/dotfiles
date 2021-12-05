if uname -a | grep "Linux" > /dev/null; then
    alias ls="ls -lh --color=auto --group-directories-first"
else
    alias ls="ls -Glh"
fi
