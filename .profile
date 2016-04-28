export GRUNT_USER=root
export GRUNT_UID=$(id -u)
export GRUNT_GID=$(id -g)

export PATH=${PATH}:/usr/local/opt/gettext/bin

if [ `which dinghy` ] ; then
	$(dinghy shellinit)
fi

if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
fi

alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gb='git branch'
alias gd='git diff'
alias gl='git log'
alias gco='git checkout'
alias gissy='git submodule foreach git pull origin master && git submodule update'

alias cdisc='cd ~/Discogs/src/discogs'
alias cdesk='cd ~/Desktop'

alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dcu='docker-compose up -d --no-recreate'
alias dct='docker-compose run --rm app python ./runtests.py -vv'
alias dctd='docker-compose run --rm app python ./runtests.py -vx --pdb --pdb-fail'
alias dcrb='docker-compose run --rm app make dev'
alias dcc='docker-compose run --rm app python -i scripts/console.py'

alias ugh='npm install ; rm -rf static/dev ; grunt build:dev ; touch locals.py ;grunt watch'

function tgrep { grep -rnIi "$1" . --color ; }
function tgrepin { grep -rnIi "$2" $1 --color ; }
function tfind { find . -name "$1" ; }
function tfindin { find "$1" -name "$2" ; }

alias stripws="perl -p -i -e 's/[\t\f ]+$//'"
alias cleanup="git branch | grep -v 'master' | xargs git branch -D"
