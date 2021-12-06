if [ -f $HOME/elixir-ls ]; then
    export PATH=$HOME/elixir-ls:$PATH
fi

export ELIXIR_EDITOR="emacsclient +__LINE__ __FILE__"
export PLUG_EDITOR=$ELIXIR_EDITOR
export ECTO_EDITOR=$ELIXIR_EDITOR
