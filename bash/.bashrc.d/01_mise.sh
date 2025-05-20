if type mise &> /dev/null; then
    eval "$(mise activate bash)"
    eval "$(mise hook-env -s bash)"
fi
