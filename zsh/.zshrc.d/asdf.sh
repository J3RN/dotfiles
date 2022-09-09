# Load ASDF
if [ -f $HOME/.asdf/asdf.sh ]; then
    . $HOME/.asdf/asdf.sh
elif [ -f /usr/local/opt/asdf/asdf.sh ]; then
    . /usr/local/opt/asdf/asdf.sh
fi

if [ $ASDF_DIR ]; then
    # Append completions to fpath
    fpath="${ASDF_DIR}/completions $fpath"
fi
