#!/bin/bash
# Bash tab completer for tailwindcss-extra

_tailwindcss-extra() {
    local options current_argument previous_argument
    options="--input --output --watch --minify --optimize --content --cwd --help"
    current_argument="${COMP_WORDS[COMP_CWORD]}"
    previous_argument="${COMP_WORDS[COMP_CWORD - 1]}"
    COMPREPLY=()
    suggestions="$options"

    # suggest file selection for relevant options
    if [[ "--input --output --content" =~ ${previous_argument} ]]; then
        COMPREPLY=($(compgen -f -- ${current_argument}))
        return 0
    fi

    # remove already used options from suggestions
    for ((i = 1; i < COMP_CWORD; i++)); do
        suggestions="${suggestions/${COMP_WORDS[i]}/}"
    done

    COMPREPLY=($(compgen -W "${suggestions}" -- ${current_argument}))
}

complete -o nosort -F _tailwindcss-extra tailwindcss-extra
