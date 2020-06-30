#-Aliases-#
alias ls='ls -GF'
alias t='tmux -CC attach || tmux -CC'

export PS1="\[\033[38;5;2m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;32m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

