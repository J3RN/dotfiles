# J3RN's dotfiles

A bunch of my arbitrary sorta-interesting dotfiles.

My editor configs are now located in separate repositories:
- [Vim config](https://github.com/J3RN/vim-config)
- [Emacs config](https://github.com/J3RN/emacs-config)

## Requirements

GNU Stow is required. In fact the `./install.sh` script is just calls stow.

Stow is available from Homebrew
```
brew install stow
```

Stow is also available from most Linux package managers
```
apt install stow
```
```
dnf install stow
```

This set of configuration has been tested on macOS and Fedora.

## Installation

The install script assumes that you have Bash installed. This is likely the case.

To install everything, run
```bash
./install.sh
```

You can, instead, install the configurations in a piecemeal style. There are three stow "packages":
- `git`
- `tmux`
- `aliases`

If, for instance, you only want the tmux configuration, you can run
```bash
git stow -t ~ tmux
```

That's it! Enjoy!

## Uninstallation

Not happy? I understand. To uninstall everything, run
```
./uninstall.sh
```

To only uninstall one specific "package", run
```
git stow -t ~ --delete tmux
```

## LICENSE

This is MIT Licensed. You can find the whole license in the `LICENSE` file.
