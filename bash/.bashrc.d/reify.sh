function reify() {
  repo="git@github.com:$1/$2"
  target="$HOME/Code/$1/$2/main"
  git clone $repo $target
  cd $target
}