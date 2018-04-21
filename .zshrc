export ZSH=$HOME/.oh-my-zsh

SH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)

POWERLEVEL9K_TIME_BACKGROUND='255'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='245'
POWERLEVEL9K_VIRTUALENV_BACKGROUND='cyan'
POWERLEVEL9K_VIRTUALENV_FOREGROUND='black'
POWERLEVEL9K_SHOW_CHANGESET=false

plugins=(git sudo colorize zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

DEFAULT_USER=`whoami`
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

