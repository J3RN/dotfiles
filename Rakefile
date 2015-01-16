task :default do
  home_files = [
    ".bash_aliases",
    ".bashrc",
    ".fish_aliases",
    ".zshrc"
  ]

  special_files = {
    "config.fish" => "~/.config/fish/"
  }

  home_files.each do |file|
    Kernel.system("cp #{file} ~")
  end

  special_files.each do |file, destination|
    Kernel.system("cp #{file} #{destination}")
  end
end
