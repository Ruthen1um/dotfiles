bind -M insert \cF accept-autosuggestion
bind -M insert \cP history-search-backward
bind -M insert \cN history-search-forward
bind -M insert \cE suppress-autosuggestion

fish_vi_key_bindings
fish_config theme choose 'Catppuccin Mocha'

set -g fish_mode_prompt
set -g fish_greeting
set -g fish_cursor_insert line
set -g fish_cursor_replace_one underscore
set -g fish_color_command brblue
set -g fish_color_option brmagenta
set -g fish_color_quote brgreen
set -g fish_color_param bryellow
set -g fish_color_comment brwhite
set -g fish_color_autosuggestion brblue --dim
set -g fish_color_cancel bryellow
set -g fish_color_keyword brgreen
set -g fish_color_search_match --background brblack
