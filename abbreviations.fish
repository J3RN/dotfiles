function abbr_if_needed
  if not contains $argv[1] (abbr -l)
    abbr $argv[1] $argv[2]
  end
end

## For more configuration
abbr_if_needed ac "vim ~/.config/awesome/rc.lua"
abbr_if_needed xmxr "xrdb -merge ~/.Xresources"

## For Mistakes
abbr_if_needed c "clear"
abbr_if_needed celar "clear"
abbr_if_needed clea "clear"
abbr_if_needed clar "clear"
abbr_if_needed claer "clear"
abbr_if_needed ckear "clear"
abbr_if_needed rkae "rake"

## For IRC
if hash weechat-curses 2> /dev/null
  abbr_if_needed irc "weechat-curses"
  abbr_if_needed weechat "weechat-curses"
else if hash weechat 2> /dev/null
  abbr_if_needed irc "weechat"
end

## For Tmux
if hash tmux 2> /dev/null
  abbr_if_needed tls "tmux list-sessions"
  abbr_if_needed ta "tmux attach -t"
  abbr_if_needed tn "tmux new -s"
end

## For Package management
if hash paktahn 2> /dev/null
  # Paktahn version
  abbr_if_needed install "paktahn -S"
  abbr_if_needed update "paktahn -Syu --aur"
  abbr_if_needed remove "pak -R"
else if hash yaourt 2> /dev/null
  # Yaourt version
  abbr_if_needed install "yaourt -S"
  abbr_if_needed update "yaourt -Sau"
  abbr_if_needed remove "yaourt -R"
else if hash pacman 2> /dev/null
  # Pacman version
  abbr_if_needed install "sudo pacman -S"
  abbr_if_needed update "pacman -Syu"
  abbr_if_needed remove "pacman -R"
else if hash brew 2> /dev/null
  # Homebrew version
  abbr_if_needed install "brew install"
  abbr_if_needed update "brew upgrade"
  abbr_if_needed remove "brew uninstall"
else if hash apt-get 2> /dev/null
  # Apt version
  abbr_if_needed install "sudo apt-get install"
  abbr_if_needed update "sudo apt-get update; sudo apt-get upgrade"
  abbr_if_needed remove "sudo apt-get remove"
end

## Miscellaneous
abbr_if_needed ls "ls -GAl"
abbr_if_needed be "bundle exec"
abbr_if_needed gg "git grep -n"

## Steam Locomotive is better with flying disaster
if hash sl 2> /dev/null
  abbr_if_needed sl "sl -Fa"
end

## Experimental
abbr_if_needed vim nvim