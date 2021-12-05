export ERL_AFLAGS="-kernel shell_history enabled"

if [ -f $HOME/.cache/rebar3/bin ]; then
    export PATH=$HOME/.cache/rebar3/bin
fi
