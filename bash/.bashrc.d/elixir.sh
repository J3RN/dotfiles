export ELIXIR_EDITOR="emacsclient +__LINE__ __FILE__"
export PLUG_EDITOR=$ELIXIR_EDITOR
export ECTO_EDITOR=$ELIXIR_EDITOR

if [ -d "$HOME/.mix/escripts" ]; then
  export PATH="$HOME/.mix/escripts:$PATH"
fi

# Workaround for Distrobox not setting locale properly
export ELIXIR_ERL_OPTIONS="+fnu"
