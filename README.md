# J3RN's dotfiles

A bunch of my arbitrary sorta-interesting dotfiles

## Requirements

This has been tested on OS X 10.10 and Ubuntu 15.04. I make no guarantees about other systems.

You don't technically need `fish`, but your experience will be better if you use it.

To change your shell to `fish`, you will probably first need to install it
```bash
sudo apt-get install fish # Install fish, Ubuntu/Debian
brew install fish         # Install fish, OS X with Homebrew
```

Then set your shell to `fish`
```bash
chsh /usr/local/bin/fish
```

If other things seems to be required, please open an issue and I will address that.

## Installation

First, you will need `zsh`. If `which zsh` does not spit out a path to `zsh`, you will need to install it.

Once you've done that, run
```bash
./install.sh
```
