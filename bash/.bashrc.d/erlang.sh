export ERL_AFLAGS="-kernel shell_history enabled"

if [ -d $HOME/.cache/rebar3/bin ]; then
    export PATH=$HOME/.cache/rebar3/bin
fi
