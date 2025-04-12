#!/usr/bin/env bash

_freedot_completions()
{
    local opts="-c --category -x --tld-length -l --list -o --output-format -h --help --install-deps --version"
    COMPREPLY=($(compgen -W "${opts}" -- "${COMP_WORDS[COMP_CWORD]}"))
}

complete -F _freedot_completions freedot
