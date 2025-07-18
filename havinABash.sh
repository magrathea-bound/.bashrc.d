
# Prompt Options
source /usr/share/git-core/contrib/completion/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\n$(__git_ps1 " (%s)")\n\[\e[1;32m\]\u@\h\[\e[0m\] \W:\$ '


# Aliases
alias dd='cd'
alias fzd='cd $(find /home/bravedave -type d | fzf)'
