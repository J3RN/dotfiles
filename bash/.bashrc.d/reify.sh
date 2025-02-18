function reify() {
    local repo="git@github.com:$1/$2"
    local branch_name=$(git ls-remote --symref $repo HEAD | awk -F'[/\t]' 'NR == 1 {print $3}')
    local target="$HOME/Code/$1/$2/$branch_name"

    if [ ! -d $target ]; then
        git clone $repo $target
    fi
    cd $target
}
