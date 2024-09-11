###################################################################
############################# aliases #############################
###################################################################

alias gs="git status"
alias gcm="git commit -m"
alias gaa="git add ."
alias gco="git checkout"
alias gcb="git checkout -b"
alias gpl="git pull"
alias gps="git push"
alias cna="pnpx create-next-app"
alias crna="pnpx @react-native-community/cli@latest init"

###################################################################
####################### p10k instant prompt #######################
###################################################################

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###################################################################
############################# exports #############################
###################################################################

export LC_ALL=en_US.UTF-8
export ZSH="$HOME/.oh-my-zsh"
export ANDROID_HOME="/Users/onur/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export M2_HOME="/Users/onur/Downloads/apache-maven-3.9.8"
export PATH=$PATH:$M2_HOME/bin
export ZSH_THEME="robbyrussell"
export NVM_DIR="$HOME/.nvm"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="/Applications/Postgres.app/Contents/Versions/16/bin:$PATH"

###################################################################
############################# plugins #############################
###################################################################

plugins=(git)

###################################################################
######################## source oh-my-zsh #########################
###################################################################

source $ZSH/oh-my-zsh.sh

###################################################################
############################### nvm ###############################
###################################################################

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

###################################################################
############################## pyenv ##############################
###################################################################

[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

###################################################################
####################### zsh-autosuggestions #######################
###################################################################

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###################################################################
########################### angular cli ###########################
###################################################################

source <(ng completion script)

###################################################################
############################## asdf ###############################
###################################################################

. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

###################################################################
############################## conda ##############################
###################################################################

__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
