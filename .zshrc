export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(dir git venv exec_time line_sep jobs char)
SPACESHIP_VENV_SYMBOL=🐍·
SPACESHIP_VENV_COLOR=yellow

export PATH="/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python"

plugins=(git sudo colorize zsh-autosuggestions zsh-syntax-highlighting git-extras virtualenvwrapper django heroku jira)

alias gac="git add . && git commit"
alias gmu="git fetch upstream && git merge upstream/master"
alias gru="git pull -r upstream master"
alias gpo="git push --set-upstream origin \`git symbolic-ref --short HEAD\`"
alias gbd="git branch -D "
alias gpf="git push --force-with-lease"
alias gd="git diff --minimal -w HEAD | cdiff -s -w 100"
alias f8="ls -1 -d */ | xargs -n 2 -P 8 flake8 -j 1"
alias is="find . -name \"*.py\" -not -name appfiles | xargs -n 400 -P 8 isort -q"
alias tt="py.test -s"
alias es="cd ../elasticsearch/bin; ./elasticsearch"
alias vim="nvim"
alias vi="nvim"

# DATABASE ALIASES
# list all current dbs
alias listdb="psql -c 'select datname from pg_database where datistemplate=false;'"
export DATABASE_URL=postgresql://`whoami`@localhost:5432/`whoami`
bindkey "^R" history-incremental-pattern-search-backward

source $ZSH/oh-my-zsh.sh

DEFAULT_USER=`whoami`

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!{.git,.cache}/*"'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
