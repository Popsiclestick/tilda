# Aliases
alias c='clear'
alias ..='cd ..'
alias sudo='sudo '
alias br='. ~/.bashrc'
alias ipp="curl -w '\n' https://canihazip.com/s"
alias grep='grep --color=auto'
alias grpe='grep'
alias st="tmux source-file ~/.tmux.conf"
alias nett='lsof -n -i4TCP | grep LISTEN'
alias cdgo='cd ~/go/src/'

# Server Aliases

#ls & tail aliases
alias ls='ls -CFG'
alias ll='ls -la'
alias tf='tail -F'
alias tf10='tail -10f'
alias tf100='tail -100f'
alias tf500='tail -500f'
alias tf1000='tail -1000f'
alias t='tail'
alias t10='tail -10'
alias t100='tail -100'
alias t500='tail -500'
alias t1000='tail -1000'

# Git aliases
alias gs="git status"
alias gb="git branch"
alias gitpp='git pull && git push'

# Shopt
shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s histappend

# Extras
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=
HISTFILESIZE=
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'

# Git Prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Prompt
if [[ $- == *i* ]]; then
  export PS1="\[$(tput setaf 2)\][\u\[$(tput setaf 5)\]@\[$(tput setaf 2)\]\h]\[$(tput setaf 5)\] in \[$(tput setaf 2)\]\w\[$(tput setaf 7)\]\$(parse_git_branch)\[$(tput setaf 5)\] at\[$(tput setaf 2)\] \D{%Y-%m-%d} \[$(tput setaf 5)\]\t\n:; \[$(tput sgr0)\]"
fi

# Extracts most known archives with one command
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# Git Completion
test -f ~/.git-completion.bash && . $_
