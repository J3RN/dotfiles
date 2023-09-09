function reify() {
  repo="git@github.com:$1/$2"
  branch_name=$(git ls-remote --symref $repo HEAD | awk -F'[/\t]' 'NR == 1 {print $3}')
  target="$HOME/Code/$1/$2/$branch_name"
  git clone $repo $target
  cd $target
}
