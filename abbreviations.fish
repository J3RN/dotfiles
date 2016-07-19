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
if type weechat-curses ^ /dev/null > /dev/null
  abbr irc "weechat-curses"
  abbr weechat "weechat-curses"
else if type weechat ^ /dev/null > /dev/null
  abbr irc "weechat"
end

## For Tmux
if type tmux ^ /dev/null > /dev/null
  abbr tls "tmux list-sessions"
  abbr ta "tmux attach -t"
  abbr tn "tmux new -s"
end

## For Package management
if type paktahn ^ /dev/null > /dev/null
  # Paktahn version
  abbr install "paktahn -S"
  abbr update "paktahn -Syu --aur"
  abbr remove "pak -R"
else if type yaourt ^ /dev/null > /dev/null
  # Yaourt version
  abbr install "yaourt -S"
  abbr update "yaourt -Sau"
  abbr remove "yaourt -R"
else if type pacman ^ /dev/null > /dev/null
  # Pacman version
  abbr install "sudo pacman -S"
  abbr update "pacman -Syu"
  abbr remove "pacman -R"
else if type brew ^ /dev/null > /dev/null
  # Homebrew version
  abbr install "brew install"
  abbr update "brew upgrade"
  abbr remove "brew uninstall"
else if type apt-get ^ /dev/null > /dev/null
  # Apt version
  abbr install "sudo apt-get install"
  abbr update "sudo apt-get update; sudo apt-get upgrade"
  abbr remove "sudo apt-get remove"
end

## Miscellaneous
abbr ls "ls -GAlh"
abbr be "bundle exec"
abbr gg "git grep -n"

## Steam Locomotive is better with flying disaster
if type sl ^ /dev/null > /dev/null
  abbr sl "sl -Fa"
end

## Experimental
# if type nvim ^ /dev/null > /dev/null
#   abbr vim nvim
# end
