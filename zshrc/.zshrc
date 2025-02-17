export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda"

plugins=(
				git
				zsh-autosuggestions
				fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
#source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export EDITOR='nvim'
export VISUAL='nvim'

alias exa="eza"
alias ll="exa --long --git --icons"
alias ls="exa -F --icons --hyperlink"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias zshrc="nvim ~/.zshrc"
alias config="nvim ~/.config"

alias cowf="fortune | cowsay"

alias cat="batcat"

alias vim="nvim"
alias vi="nvim"

#alias code="codium"
alias c="code"


alias air='$(go env GOPATH)/bin/air'

#source /home/thomas/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin:$HOME/.cargo/bin
export PATH=$PATH:"$HOME/.cargo/env"
export PATH=$PATH:"$HOME/.local/share/coursier/bin"
export PATH=$PATH:/usr/games
eval "$(oh-my-posh init zsh --config ".config/posh/catppuccin.omp.json")"

clear


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "/home/thomas/.deno/env"
