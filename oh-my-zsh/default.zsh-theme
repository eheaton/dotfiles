RPROMPT='%{$FG[010]%}$( brp config:project.name )%{$reset_color%}'

PROMPT='
%{$FG[014]%}[ %D{%I:%M %p} ] %(!.%{$FG[001]%}.%{$fg[cyan]%})%n%{$reset_color%}:%{$fg[green]%}%~%{$reset_color%}$(git_prompt_info)
%(!.$.$) '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
