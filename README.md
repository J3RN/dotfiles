# J3RN's dotfiles

A bunch of my arbitrary sorta-interesting dotfiles

## Requirements

This has been tested on OSX 10.10 and Ubuntu 15.04. I make no guarantees about other systems.

You don't technically need `fish` or `zsh`, but your experience will be better if you use one or the other.

To change your shell to `zsh`, do
```bash
chsh /bin/zsh
```

To change your shell to `fish`, you will probably first need to install it
```bash
sudo apt-get install fish # Install fish, Ubuntu/Debian
brew install fish         # Install fish, OS X with Homebrew
```

Then set your shell to fish
```bash
chsh /usr/local/bin/fish  # Set your shell to fish
```

If other things seems to be required, please open an issue and I will address that.

## Installation

```bash
./install.sh
```
