git_prompt_info () {
  local ref
  if [[ $(pwd) = $HOME ]]
  then
    if [[ "$(command git --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]
    then
      ref=$(command git --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME symbolic-ref HEAD 2> /dev/null)  || ref=$(command git --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME rev-parse --short HEAD 2> /dev/null)  || return 0
      echo "$ZSH_THEME_GIT_PROMPT_PREFIX_HOME${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
    fi
  else
    if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]
    then
      ref=$(command git symbolic-ref HEAD 2> /dev/null)  || ref=$(command git rev-parse --short HEAD 2> /dev/null)  || return 0
      echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
    fi
  fi
}
