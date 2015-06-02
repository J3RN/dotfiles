## Obligatory meta
alias ba="vim ~/.bash_aliases"

## For sourcing RC files
alias szrc=". ~/.zshrc"
alias sbrc=". ~/.bashrc"

## For config files
alias ac="vim ~/.config/awesome/rc.lua"
alias xmxr="xrdb -merge ~/.Xresources"

## Git
alias pr="hub pull-request"
alias co="git checkout"
alias push="git push"
alias psuh="git push"
alias deploy="git push && git push heroku"
alias pushu="git push -u origin "
alias fetch="git fetch"
alias fupst="git fetch upstream"
alias status="git status"
alias stat="git status"
alias mkbr="git checkout -B"
alias rmbr="git branch -d"
alias Rmbr="git branch -D"
alias lsbr="git branch -l"
alias branch="git branch"
alias add="git add"
alias adda="git add -A"
alias diff="git diff"
alias com="git commit -m"
alias gpum="git pull upstream master"
alias pubr="git pull git@github.com:j3rn/quote-builder"
alias pull="git pull"

## For Mistakes
alias c="clear"
alias celar="clear"
alias clea="clear"
alias clar="clear"
alias claer="clear"
alias ckear="clear"

## For IRC
alias irc="weechat"
#alias irc="weechat-curses"
#alias weechat="weechat-curses"

## For Tmux
alias tls="tmux list-sessions"
alias ta="tmux attach -t"
alias tn="tmux new -s"

## For Package management
# Paktahn version
#alias install="paktahn -S"
#alias update="paktahn -Syu --aur"
#alias remove="pak -R"
## Yaourt version
alias install="yaourt -S"
alias update="yaourt -Sau"
alias remove="yaourt -R"
# Pacman version
#alias install="sudo pacman -S"
#alias update="pacman -Syu"
#alias remove="pacman -R"
# Apt version
#alias install="sudo apt-get install"
#alias update="sudo apt-get update && sudo apt-get upgrade"
#alias remove="sudo apt-get remove"

## For niceity
alias ls="ls -al"
