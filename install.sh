#! /bin/zsh

files=('.bash_aliases' '.bashrc' '.fish_aliases' '.zshrc')

declare -A special_files
special_files[config.fish]="$HOME/.config/fish/config.fish"

pwd=$(pwd)

green_print() {
  echo "\e[1;32m$1\e[0m"
}

# Link over all home directory files
for file in $files; do
  green_print "Linking $pwd/$file to $HOME/$file"
  ln -si "$pwd/$file" "$HOME/$file"
done

# Link over all special files
for key in "${(@k)special_files}"; do
  green_print "Linking $pwd/$key to ${special_files[$key]}"
  ln -si "$pwd/$key" "${special_files[$key]}"
done
