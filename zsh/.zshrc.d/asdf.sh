if [ -f $HOME/.asdf/asdf.sh ]; then
    # Load ASDF
    . $HOME/.asdf/asdf.sh

    # Append completions to fpath
    fpath=(${ASDF_DIR}/completions $fpath)
fi
