# Yay! High voltage and arrows!
# Based on pygmalion

prompt_setup_deelicious(){
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}|%{$fg[magenta]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
  ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""

  base_prompt='%{$FG[009]%}%n%{$reset_color%} %{$fg[white]%}at %{$reset_color%}%{$fg[yellow]%}%m%{$reset_color%}%{$fg[white]%} in %{$reset_color%}%{$fg[blue]%}%0 ${PWD/#$HOME/~}%{$reset_color%}'
  post_prompt='%{$fg[white]%}$%{$reset_color%}  '

  base_prompt_nocolor=$(echo "$base_prompt" | perl -pe "s/%\{[^}]+\}//g")
  post_prompt_nocolor=$(echo "$post_prompt" | perl -pe "s/%\{[^}]+\}//g")

  precmd_functions+=(prompt_deelicious)
}

prompt_deelicious(){
  local gitinfo=$(git_prompt_info)
  local gitinfo_nocolor=$(echo "$gitinfo" | perl -pe "s/%\{[^}]+\}//g")
  local exp_nocolor="$(print -P \"$base_prompt_nocolor$gitinfo_nocolor$post_prompt_nocolor\")"
  local prompt_length=${#exp_nocolor}

  local nl=""

  if [[ $prompt_length -gt 40 ]]; then
    nl=$'\n%{\r%}';
  fi
  PROMPT="$base_prompt$gitinfo$nl$post_prompt"
}

prompt_setup_deelicious


