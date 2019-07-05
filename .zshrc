export ZSH=$HOME/.oh-my-zsh
DOTFILES=$HOME/dotfiles
DEFAULT_USER=`whoami`

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
    dir git venv exec_time line_sep battery jobs vi_mode char
)
SPACESHIP_VENV_SYMBOL=🐍·
SPACESHIP_VENV_COLOR=yellow
SPACESHIP_PROMPT_SEPARATE_LINE=true

declare -u config_files
config_files=($DOTFILES/zsh/*.zsh)
for file in ${config_files}
do
    source $file
done

plugins=(
    git colorize zsh-autosuggestions zsh-syntax-highlighting
    git-extras virtualenvwrapper django heroku jira vi-mode
)

source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
