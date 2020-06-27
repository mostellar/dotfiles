# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/will.mostellar/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias ls='ls -GF'
alias t='tmux -CC attach || tmux -CC'
alias lsof='lsof -n'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias dotfiles='$(which git) --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME'
alias bloggle="blueutil -p 0; printf 'Resetting Bluetooth'; sleep 1; printf '.'; sleep 1; printf '.'; sleep 1; printf '.'; sleep 1; printf '.'; sleep 1; printf '.\n'; blueutil -p 1"
alias clear="clear && printf '\e[3J'"
alias focus="killall OneDrive; killall CrashPlanService; killall CrashPlan; killall callservicesd; killall hubd; killall soagent"
alias top="top -o cpu -s 2 -stats pid,command,cpu,mem"
alias brewchanges="brew log --max-count=1 --oneline $(brew outdated) 2>/dev/null"

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

export PATH="/Users/will.mostellar/scripts:/usr/local/opt/python/libexec/bin:$PATH"
