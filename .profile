export GRUNT_USER=root
export GRUNT_UID=$(id -u)
export GRUNT_GID=$(id -g)

export PATH=${PATH}:/usr/local/opt/gettext/bin

if [ `which dinghy` ] ; then
	$(dinghy shellinit)
fi

alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gb='git branch'
alias gd='git diff'
alias gl='git log'
alias gco='git checkout'

alias cdisc='cd ~/Discogs/src/discogs'
alias cdesk='cd ~/Desktop'

alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dcu='docker-compose up -d --no-recreate'
alias dct='docker-compose run --rm app python ./runtests.py -vv'
alias dctd='docker-compose run --rm app python ./runtests.py -vx --pdb --pdb-fail'
alias dcrb='docker-compose run --rm app make dev'
alias dcc='docker-compose run --rm app python -i scripts/console.py'

alias ugh='grunt build:dev ; grunt watch'

function tgrep { grep -rnIi "$1" . --color ; }

alias stripws="perl -p -i -e 's/[\t\f ]+$//'"
