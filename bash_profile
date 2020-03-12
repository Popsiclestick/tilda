# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Go
GOPATH="/Users/msalsone/go"
export GOPATH

# History
shopt -s histappend
PROMPT_COMMAND='history -a;history -n'
HISTFILESIZE=10000000

# LS Colors
LS_COLORS='no=00:fi=00:di=34:ln=00;35:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;36;40:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:'
export PATH LS_COLORS

echo -e '\033k'$HOSTNAME'\033\\'

# Show hostname on tmux status line
case "$TERM" in
    screen*) TERM='screen'; printf "\033k${HOSTNAME}\033\\";
esac
