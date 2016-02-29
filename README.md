# J3RN's dotfiles

A bunch of my arbitrary sorta-interesting dotfiles

## Requirements

This has been tested on OS X 10.10 and Ubuntu 15.04. I make no guarantees about other systems.

You don't technically need `fish` or `zsh`, but your experience will be better if you use one or the other.

To use one of these shells, you will probably first need to install it:
```bash
# fish
sudo apt-get install fish # Install fish, Ubuntu/Debian
brew install fish         # Install fish, OS X with Homebrew

# zsh
sudo apt-get install zsh  # Install fish, Ubuntu/Debian
# OS X comes with zsh
```

Then set your shell to `fish` or `zsh`:
```bash
chsh /usr/local/bin/fish  # fish
chsh /bin/zsh             # zsh
```

If other things seems to be required, please open an issue and I will address that.

## Installation

The install script assumes that you have Bash installed. This is likely the case.

To install, run:
```bash
./install.sh
```

If you're re-installing, or really don't care about your own dotfiles being clobbered, you can run:
```bash
./install.sh -y
```

That's it! Enjoy!

## LICENSE

This is MIT Licensed. You can find the whole license in the `LICENSE` file.
