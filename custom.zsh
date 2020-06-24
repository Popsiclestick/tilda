export PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/grep/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:/Users/msalsone/bin:/Users/msalsone/go/bin:$PATH:/Users/msalsone/Library/Python/2.7/bin"

# Aliases
alias c='clear'
# alias ..='cd ..'
alias ls='ls -CFG --color=auto'
alias ll='ls -lah --color=auto'
alias ip="curl -w '\n' https://canihazip.com/s"
alias grep='grep --color=auto'
alias br="source ~/.zshrc"
alias nett='lsof -n -i4TCP | grep LISTEN'
alias gogo='cd ~/go/src'
alias ii='cd ~/indeed-git'
alias python='/usr/bin/python3'

# Tail aliases
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

# # Git aliases
alias gs="git status"
alias gb="git branch"
alias gitpp="git pull && git push"
alias gcm="git checkout master"

# # Programming aliases
alias pe="source venv/bin/activate"
