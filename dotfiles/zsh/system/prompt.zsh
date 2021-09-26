# set prompt colors
typeset -AHg fg fg_bold
fg[red]=$'\e[31m'
fg_bold[white]=$'\e[1;37m'
reset_color=$'\e[m'

# set ls colors
autoload -U colors && colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
ls -G . &>/dev/null && alias ls='ls -G'

# show git info 
git_prompt_info() {
  current_branch=$(git branch --show-current 2>/dev/null)
  if [[ -n $current_branch ]]; then
    echo "%{$fg_bold[red]%}($current_branch)%{$reset_color%}"
  fi
}

setopt auto_cd
setopt prompt_subst

PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '
