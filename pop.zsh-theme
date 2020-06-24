# ZSH Theme - Preview: https://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$fg[green]%}[%n%{$fg[magenta]%}@%{$fg[green]%}%m]%{$reset_color%}'
    local user_symbol=':;'
fi

local current_dir='%{$fg[green]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'
local date_time='%{$fg[green]%}%D{%Y-%m-%d} %{$fg[magenta]%}%T%{$reset_color%}'
local in_prompt='%{$fg[magenta]%}in%{$reset_color%}'
local at_prompt='%{$fg[magenta]%}at%{$reset_color%}'

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"

PROMPT="${user_host} ${in_prompt} ${current_dir}${git_branch}${venv_prompt} ${at_prompt} ${date_time}
${user_symbol}%b "
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%} ‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="› %{$reset_color%}"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg[green]%}‹"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="›%{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX
ZSH_THEME_VIRTUALENV_SUFFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX

