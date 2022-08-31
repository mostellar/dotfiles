alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
# alias dotfiles='$(which git) --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME'
# alias dotfiles='$(which git) -C "$HOME/.dotfiles/"'
alias sdf='dotfiles'
alias bloggle="blueutil -p 0; printf 'Resetting Bluetooth'; sleep 1; printf '.'; sleep 1; printf '.'; sleep 1; printf '.'; sleep 1; printf '.'; sleep 1; printf '.\n'; blueutil -p 1"
alias clear="clear && printf '\e[3J'"
alias focus="killall OneDrive; killall CrashPlanService; killall CrashPlan; killall callservicesd; killall hubd; killall soagent"
alias top="top -o cpu -s 2 -stats pid,command,cpu,mem"
# alias vi="nvim"
# alias vim="nvim"
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias sqlworkbench='cd "/Applications/SQLWorkbenchJ.app/Contents/Java"
r=$(java \
	--add-opens java.desktop/com.apple.laf=ALL-UNNAMED \
	-cp sqlworkbench.jar \
	-Dawt.useSystemAAFontSettings=on \
	-Dapple.awt.showGrowBoxtrue=true \
	-Dapple.laf.useScreenMenuBar=true \
	-Xmx4096m \
	-Xdock:name=SQLWorkbench/J \
	workbench.WbStarter 2>&1)
$r'