#-Aliases-#
alias ls='ls -GF'
alias t='tmux -CC attach || tmux -CC'

export PS1="\[\033[38;5;2m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;32m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# CFA Config
# set x11
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

# check ig dbus is running
pgrep dbus-daemon > /dev/null
# if not launch dbus
retVal=$?
if [ $retVal -ne 0 ]; then
    mkdir -p ~/.cfa_conf
    dbus-launch > ~/.cfa_conf/dbus.conf
fi
export $(grep -v '^#' ~/.cfa_conf/dbus.conf | xargs)

# check if gnome-keyring-daemon is running
pgrep gnome-keyring-d > /dev/null
# if not launch gnome-keyring-daemon
retVal=$?
if [ $retVal -ne 0 ]; then
    mkdir -p ~/.cfa_conf
    export GNOME_KEYRING_CONTROL=
    gnome-keyring-daemon --start --daemonize --components=secrets > ~/.cfa_conf/gnome-keyring.conf
    export $(grep -v '^#' ~/.cfa_conf/gnome-keyring.conf | xargs)
    echo $(powershell.exe "write-output((Get-StoredCredential -Target gnome-keyring -AsCredentialObject).password)") | gnome-keyring-daemon -r -d --unlock > ~/.cfa_conf/gnome-keyring.conf
fi
export $(grep -v '^#' ~/.cfa_conf/gnome-keyring.conf | xargs)
