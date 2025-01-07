# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

###################################################################
############################# aliases #############################
###################################################################

# alias code='cursor'
alias be='brew upgrade'
alias srt='npx sort-package-json'
alias gs="git status"
alias gcm="git commit -m"
alias gaa="git add ."
alias gco="git checkout"
alias gcb="git checkout -b"
alias gpl="git pull"
alias gps="git push"
alias cna="pnpx create-next-app"
alias crna="pnpx @react-native-community/cli@latest init"
alias nrd="npm run dev"

###################################################################
############################# exports #############################
###################################################################

export LC_ALL=en_US.UTF-8
export ANDROID_HOME="/Users/onur/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export M2_HOME="/Users/onur/Downloads/apache-maven-3.9.8"
export PATH=$PATH:$M2_HOME/bin
export ZSH_THEME="robbyrussell"
export NVM_DIR="$HOME/.nvm"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="/Applications/Postgres.app/Contents/Versions/16/bin:$PATH"
export DENO_INSTALL="/Users/onur/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PROMPT_EOL_MARK=''
export MAVEN_PATH="/Users/onur/Downloads/apache-maven-3.9.9/"
export PATH=$PATH:$MAVEN_PATH/bin
export GO_PATH="/Users/onur/Development/go"
export PATH=$PATH:$GO_PATH/bin
export FLUTTER_PATH="/Users/onur/Development/flutter"
export PATH=$PATH:$FLUTTER_PATH/bin
export POSTGRES_PATH="/Applications/Postgres.app/Contents/Versions/17/bin"
export PATH=$PATH:$POSTGRES_PATH
export MYSQL_PATH="/usr/local/mysql/bin"
export PATH=$PATH:$MYSQL_PATH
export METASPLOIT_PATH="/opt/metasploit-framework/bin"
export PATH=$PATH:$METASPLOIT_PATH
export COREPACK_ENABLE_AUTO_PIN=0

###################################################################
############################# plugins #############################
###################################################################

plugins=(git)
plugins+=(zsh-autosuggestions)
plugins+=(zsh-syntax-highlighting)

###################################################################
############################### nvm ###############################
###################################################################

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# autoload -U add-zsh-hook
# load-nvmrc() {
#   local node_version="$(nvm version)"
#   local nvmrc_path="$(nvm_find_nvmrc)"

#   if [ -n "$nvmrc_path" ]; then
#     local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

#     if [ "$nvmrc_node_version" = "N/A" ]; then
#       nvm install
#     elif [ "$nvmrc_node_version" != "$node_version" ]; then
#       nvm use
#     fi
#   elif [ "$node_version" != "$(nvm version default)" ]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

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
############################## asdf ###############################
###################################################################

. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

# pnpm
export PNPM_HOME="/Users/onur/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# Added by LM Studio CLI (lms)
# export PATH="$PATH:/Users/onur/.cache/lm-studio/bin"


# Load Angular CLI autocompletion.
# source <(ng completion script)
# source ~/powerlevel10k/powerlevel10k.zsh-theme

# eval "$(starship init zsh)"
