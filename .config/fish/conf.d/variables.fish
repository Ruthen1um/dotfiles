# Custom variables

set -gx dotfiles "$HOME/.dotfiles"
set -gx nvim "$HOME/.config/nvim"

# XDG Base Directory specification
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

# Misc
set -l color_dir '3;40;91'
set -l color_file '3;93'
set -l color_symlink '3;96'
set -l color_executable '3;94'

set -gx LS_COLORS
set -agx --path LS_COLORS "di=$color_dir"
set -agx --path LS_COLORS "fi=$color_file"
set -agx --path LS_COLORS "ln=$color_symlink"
set -agx --path LS_COLORS "ex=$color_executable"

set -gx PAGER 'less'
set -gx MANPAGER 'less'
set -gx EDITOR 'nvim'
set -gx VISUAL $EDITOR
