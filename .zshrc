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