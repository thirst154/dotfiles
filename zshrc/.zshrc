export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="passion"

plugins=(
				git
				zsh-autosuggestions
				fast-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

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

alias cat="bat"

alias vim="nvim"
alias vi="nvim"

alias c="code"

alias aspell="aspell --lang=en_GB"

alias goland="flatpak run com.jetbrains.GoLand"

alias air='$(go env GOPATH)/bin/air'

alias zed="flatpak run dev.zed.Zed"

export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin:$HOME/.cargo/bin
export PATH=$PATH:"$HOME/.cargo/env"
export PATH=$PATH:"$HOME/.local/share/coursier/bin"
export PATH=$PATH:/usr/games
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/thirst/.bun/_bun" ] && source "/home/thirst/.bun/_bun"

fastfetch

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/thirst/.dart-cli-completion/zsh-config.zsh ]] && . /home/thirst/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

eval "$(/home/thirst/.local/bin/mise activate zsh)"
