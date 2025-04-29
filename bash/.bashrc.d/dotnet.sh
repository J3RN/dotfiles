dotnet_tools_dir="$HOME/.dotnet/tools"

if [ -d $dotnet_tools_dir ]; then
    export PATH="$PATH:$dotnet_tools_dir"
fi
