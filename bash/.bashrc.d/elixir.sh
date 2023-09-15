export ELIXIR_EDITOR="emacsclient +__LINE__ __FILE__"
export PLUG_EDITOR=$ELIXIR_EDITOR
export ECTO_EDITOR=$ELIXIR_EDITOR

# Workaround for Distrobox not setting locale properly
export ELIXIR_ERL_OPTIONS="+fnu"
