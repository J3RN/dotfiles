# PATH modification function
append_if_exists () {
    if [ -e $argv ]; then
	export PATH="$PATH:$argv"
    fi
}

## PATH changes

# Add /usr/local/bin, where Homebrew tends to install things
append_if_exists /usr/local/bin

# Postgres.app to PATH for psql
append_if_exists /Applications/Postgres.app/Contents/Versions/latest/bin

# Add Heroku to path
append_if_exists /usr/local/heroku/bin

