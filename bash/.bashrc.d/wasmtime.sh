if [ -d "$HOME/.wasmtime" ]; then
    export WASMTIME_HOME="$HOME/.wasmtime"
    export PATH="$WASMTIME_HOME/bin:$PATH"
fi
