## Obligatory meta
alias ba="vim ~/.bash_aliases"

## For sourcing RC files
alias szrc=". ~/.zshrc"
alias sbrc=". ~/.bashrc"

## For more configuration
alias ac="vim ~/.config/awesome/rc.lua"
alias xmxr="xrdb -merge ~/.Xresources"

## For Work
alias prj="cd ~/workspace/work/quote-builder && tmux new -s work"
alias sp="sudo systemctl start postgresql"
alias ap="RAILS_ENV=production bundle exec rake assets:precompile"
alias qb-dev-restore="pg_restore --verbose --clean --no-acl --no-owner -h localhost -U jonathan -d qb_development latest.dump"

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

## For OSU
alias ssh-cse="ssh -X arnettj@stdlinux.cse.ohio-state.edu"
alias mount-cse="sshfs arnettj@stdlinux.cse.ohio-state.edu:/home/6/arnettj ~/workspace/School/Mount"
alias unmount-cse="fusermount -uz ~/workspace/School/Mount"
alias resnet="python2 ~/workspace/python/OSU-ResNet-Login/resnet.py"

## For Gaming
alias mine-blog="cd ~/workspace/ruby/J3RNsMinecraftBlog/"

## For Mistakes
alias c="clear"
alias celar="clear"
alias clea="clear"
alias clar="clear"
alias claer="clear"
alias ckear="clear"

## For IRC
alias irc="weechat-curses"
#alias weechat="weechat-curses"

## For Tmux
alias tls="tmux list-sessions"
alias ta="tmux attach -t"

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

## For server stuff
alias j3rn-serv="ssh jthrrnco@j3rn.com"
alias mine-serv="ssh j3rn@minecraft.j3rn.com"

