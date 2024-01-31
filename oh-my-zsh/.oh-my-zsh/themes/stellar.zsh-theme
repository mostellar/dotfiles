# Copied from robbyrussell theme
#PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
#
#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_PREFIX_HOME="%{$fg_bold[blue]%}dotfiles:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Using git-prompt
PROMPT="%(?:%{$fg_bold[green]%}❯ :%{$fg_bold[red]%}❯ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_super_status) '

# this is the right-aligned prompt that git-prompt is defining for some dumb reason
RPROMPT=''

# Define colors for colored-man-pages
## bold and blinking mode (red by default)
less_termcap[md]="${fg_bold[blue]}"
less_termcap[md]="${fg_bold[blue]}"
## standout mode (yellow by default
#less_termcap[so]="${fg_bold[yellow]}${bg[blue]}"
## underlining (green by default)
less_termcap[us]="${fg_bold[green]}"

# Make grep matches blue (uses iterm's blue)
export GREP_COLOR='01;34'
