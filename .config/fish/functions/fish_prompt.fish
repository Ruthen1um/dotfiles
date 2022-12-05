function fish_prompt
    set -f last_status $status

    set -f char_lambda \u03bb
    set -f char_arrow \u279c
    set -f char_suffix '%'
    set -f char_user_host_separator '@'
    set -f char_left_bracket '['
    set -f char_right_bracket ']'

    set -f color_arrow brgreen
    set -f color_user_host_separator brred
    set -f color_suffix brcyan
    set -f color_user brmagenta
    set -f color_hostname brgreen
    set -f color_brackets brblue
    set -f color_default normal

    # Line 1

    set_color $color_brackets
    printf '%s' $char_left_bracket

    set_color $color_user
    printf '%s' $USER

    set_color $color_user_host_separator
    printf '%s' $char_user_host_separator

    set_color $color_hostname
    printf '%s' (prompt_hostname)

    set_color $color_brackets
    printf '%s' $char_right_bracket

    printf ' '

    set_color $color_arrow
    printf '%s' $char_arrow

    printf ' '

    set_color $fish_color_cwd --italic
    printf '%s' (prompt_pwd --dir-length=0)

    printf ' '

    set_color $color_default

    if test $last_status -ne 0
        set -f color_suffix $fish_color_error
    end

    set_color $color_suffix --bold
    printf '%s' $char_suffix

    printf ' '

    set_color $color_default

end
