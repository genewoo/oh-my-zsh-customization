function time_load {
  echo `uptime | sed 's/ up.*averages*:/\//'`
}

PROMPT='%{$fg_bold[red]%}$(date +%k:%M) %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
#date version
#PROMPT='%{$fg_bold[red]%}$(date +%k:%M)-$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}%{$fg_bold[red]%}:%{$fg_bold[green]%}%p%{$fg[cyan]%}%c$%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
#uptime version
#PROMPT='%{$fg_bold[red]%}$(time_load) - $fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}%{$fg_bold[red]%}:%{$fg_bold[green]%}%p%{$fg[cyan]%}%c$%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" git @ (%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[blue]%}) %{$fg[yellow]%}?%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
