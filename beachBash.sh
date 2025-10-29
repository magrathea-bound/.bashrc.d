
# Prompt Options
export PS1='[\[\e[1;32m\]\u@\h\[\e[0m\] \[\e[1;34m\]\W\[\e[0m\]]\$ '


# Aliases
alias dd='cd'
alias gs='git status --porcelain'

# Jump commands
fzd() {
    alias fzd='cd $(find /home/bravedave -type d | fzf)'
}
bind -x '"\ej": fzd'

fzn() {
    local dir
    dir="$(find /home/bravedave/ -type d 2>/dev/null | fzf)" || return
    [ -n  "$dir" ] || return
    cd "$dir" || return
    nvim .
}
bind -x '"\en": fzn'

bind -x '"\e.":"cd ..; echo Moved to: $PWD"'



# # .bashrc
# # .bashrc file uncomment and stick in home directory
# # Source global definitions
# if [ -f /etc/bashrc ]; then
#     . /etc/bashrc
# fi
#
# # User specific environment
# if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
#     PATH="$HOME/.local/bin:$HOME/bin:$PATH"
# fi
# export PATH
#
# # Uncomment the following line if you don't like systemctl's auto-paging feature:
# # export SYSTEMD_PAGER=
#
# # User specific aliases and functions
# if [ -d ~/.bashrc.d ]; then
#     for rc in ~/.bashrc.d/*; do
#         if [ -f "$rc" ]; then
#             . "$rc"
#         fi
#     done
# fi
# unset rc
#
# . "$HOME/.cargo/env"
