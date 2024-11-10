# Disable dotnet telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Have neovim be my editor
export EDITOR=nvim

# Force Firefox to use wayland
export MOZ_ENABLE_WAYLAND=1

# Have make (and makepkg) use full cpu for compiling, include ccache
export PATH="/usr/lib/ccache/bin/:$PATH"
export MAKEFLAGS="-j13 -l12"

# Add Odin binaries to path
export PATH="$HOME/clone/Odin:$PATH"
