
# Prompt Options
export PS1='[\[\e[1;32m\]\u@\h\[\e[0m\] \[\e[1;34m\]\W\[\e[0m\]]\$ '


# Aliases
alias dd='cd'
alias gs='git status --porcelain'

# Jump commands
fzd() {
    alias fzd='cd $(find /home/bravedave -type d | fzf)'
}
bind -x '"\C-j": fzd'

fzn() {
    local dir
    dir="$(find /home/bravedave/ -type d 2>/dev/null | fzf)" || return
    [ -n  "$dir" ] || return
    cd "$dir" || return
    nvim .
}
bind -x '"\C-n": fzn'

bind -x '"\C-u":cd ..'

