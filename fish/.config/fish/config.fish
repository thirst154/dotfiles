if status --is-login
    set -gx PATH $PATH ~/linux/bin
end

function on_exit --on-event fish_exit
    echo "Goodbye!"
end


# Aliases
if type -q eza
    alias ls="eza -F --icons --hyperlink"
    alias ll="eza --long --git --icons"
    alias l="eza -F --icons --hyperlink -l"
    alias la="eza -F --icons --hyperlink -a"
    alias lla="eza -F --icons --hyperlink -la"
end

# Editor aliases
alias zshrc="nvim ~/.zshrc"
alias config="nvim ~/.config"

# Fun stuff
if type -q fortune; and type -q cowsay
    alias cowf="fortune | cowsay"
end

# Use bat instead of cat
if type -q bat
    alias cat="bat"
end

# Neovim aliases
if type -q nvim
    alias vim="nvim"
    alias vi="nvim"
end

# VSCode alias
alias c="code"


# You might want to install the fisher plugin for NVM support:
# fisher install jorgebucaran/nvm.fish

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion⏎   