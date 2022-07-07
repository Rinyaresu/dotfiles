# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/rinyaresu/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

export EDITOR=nvim

plugins=(git
	zsh-autosuggestions
	zsh-syntax-highlighting
	asdf
	docker
	sudo
	docker-compose
	zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# -------------------------------ALIAS--------------------------------------------


alias ls="exa --icons"
alias cat="bat --style=auto"
alias bu="bundle update"
alias bi="bundle install"
alias rsp="rspec"
alias rt="rails test:all"
alias gph="git push heroku main"
alias h="heroku"
alias dbmigrate="rails db:migrate"
alias dbcreate="rails db:create"
alias dbdrop="rails db:drop"
alias dbrollback="rails db:rollback"
alias cd="z"


# --------------------------------------------------------------------------------

export PATH=~/.cargo/bin:~/.local/bin:$PATH 

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/home/rinyaresu/.cache/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

export BAT_THEME=OneHalfLight

eval "$(zoxide init zsh)"
