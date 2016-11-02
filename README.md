# J3RN's dotfiles

A bunch of my arbitrary sorta-interesting dotfiles.

My editor configs are now located in separate repositories:
- [Vim config](https://github.com/J3RN/vim-config)
- [Emacs config](https://github.com/J3RN/emacs-config)

## Requirements

This has been tested on macOS and Ubuntu. I make no guarantees about other systems.

The shells `fish` and `zsh` should not be hard dependencies, but your experience will be better if you use one or the other. To use one of these shells, you will probably first need to install it.

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
