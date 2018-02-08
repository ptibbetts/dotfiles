# These settings expect Oh My Zsh! to already be installed

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  aws
  brew
  git
  laravel5
  npm
  terraform
  thefuck
  vagrant
  yarn
)

source $ZSH/oh-my-zsh.sh

# add Composer to $PATH
export PATH=$HOME/.composer/vendor/bin:$PATH

# enable nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# add iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"