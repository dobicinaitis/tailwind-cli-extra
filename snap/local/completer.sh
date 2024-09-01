#!/bin/bash
# Bash tab completer for tailwindcss-extra

_tailwindcss-extra() {
    local commands general_options init_options current_argument previous_argument
    commands="init"
    general_options="--input --output --watch --poll --content --postcss --minify --config --no-autoprefixer --help"
    init_options="--esm --ts --postcss --full --help"
    current_argument="${COMP_WORDS[COMP_CWORD]}"
    previous_argument="${COMP_WORDS[COMP_CWORD - 1]}"
    COMPREPLY=()

    # include commands in initial suggestions
    if [[ ${COMP_CWORD} -le 1 ]]; then
        suggestions="$commands $general_options"
    else
        suggestions="$general_options"
    fi

    if [[ ${previous_argument} == "init" ]]; then
        suggestions="$init_options"
    fi

    # suggest file selection for relevant options
    if [[ "--input --output --config --content --postcss" =~ ${previous_argument} ]]; then
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
