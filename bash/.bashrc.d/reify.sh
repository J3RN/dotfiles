function reify() {
    local repo

    case $3 in
        "" | github) repo="git@github.com:$1/$2" ;;
        codeberg) repo="git@codeberg.org/$1/$2" ;;
        *) >&2 echo "Unknown forge '$3'" && return 1 ;;
    esac

    local branch_name=$(git ls-remote --symref $repo HEAD | awk -F'[/\t]' 'NR == 1 {print $3}')
    if [ -z $branch_name ]; then
        return 1
    fi

    local target="$HOME/Code/$1/$2/$branch_name"

    if [ ! -d $target ]; then
        git clone $repo $target
    fi
    cd $target
}
