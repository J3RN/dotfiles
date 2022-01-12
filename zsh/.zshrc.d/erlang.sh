# kerl
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_MANPAGES=yes
export KERL_INSTALL_HTMLDOCS=yes

# erl
export ERL_AFLAGS="-kernel shell_history enabled"

# rebar3
if [ -d $HOME/.cache/rebar3/bin ]; then
    export PATH=$HOME/.cache/rebar3/bin:$PATH
fi
