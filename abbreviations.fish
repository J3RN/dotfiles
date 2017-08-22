## For more configuration
abbr ac "vim ~/.config/awesome/rc.lua"
abbr xmxr "xrdb -merge ~/.Xresources"

## For Mistakes
abbr c clear
abbr celar clear
abbr clea clear
abbr clar clear
abbr claer clear
abbr ckear clear
abbr rkae rake
abbr rials rails

## For IRC
if installed weechat-curses ^ /dev/null > /dev/null
  abbr irc "weechat-curses"
  abbr weechat "weechat-curses"
else if installed weechat ^ /dev/null > /dev/null
  abbr irc "weechat"
end

## For Tmux
if installed tmux ^ /dev/null > /dev/null
  abbr tls "tmux list-sessions"
  abbr ta "tmux attach -t"
  abbr tn "tmux new -s"
end

## For Package management
if installed paktahn ^ /dev/null > /dev/null
  # Paktahn version
  abbr install "paktahn -S"
  abbr update "paktahn -Syu --aur"
  abbr remove "pak -R"
else if installed yaourt ^ /dev/null > /dev/null
  # Yaourt version
  abbr install "yaourt -S"
  abbr update "yaourt -Sau"
  abbr remove "yaourt -R"
else if installed pacman ^ /dev/null > /dev/null
  # Pacman version
  abbr install "sudo pacman -S"
  abbr update "pacman -Syu"
  abbr remove "pacman -R"
else if installed brew ^ /dev/null > /dev/null
  # Homebrew version
  abbr install "brew install"
  abbr update "brew upgrade"
  abbr remove "brew uninstall"
else if installed apt-get ^ /dev/null > /dev/null
  # Apt version
  abbr install "sudo apt-get install"
  abbr update "sudo apt-get update; sudo apt-get upgrade"
  abbr remove "sudo apt-get remove"
end

## Miscellaneous
abbr ls "ls -GAlh"
abbr be "bundle exec"

## Steam Locomotive is better with flying disaster
if installed sl ^ /dev/null > /dev/null
  abbr sl "sl -Fa"
end

## Easier access to terminal emacs
abbr ew "emacs -nw"
