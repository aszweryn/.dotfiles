export XDG_CONFIG_HOME="$HOME/.config"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git kubectl)

source "$ZSH/oh-my-zsh.sh"

# Enable tmux on terminal startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	tmux attach || tmux
fi

export EDITOR="nvim"
export SUDOEDIT="nvim"

# Paths & toolchains
export GOPATH="$HOME/Projects/Go"
export GOBIN="$GOPATH/bin"
export PATH="$HOME/.local/bin:/usr/local/go/bin:$GOBIN:$PATH"

[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Completions
(( $+commands[helm] )) && source <(helm completion zsh)
(( $+commands[fzf] )) && source <(fzf --zsh)

# Custom aliases
alias la="ls -A"
alias ll="ls -lAtrh"
alias xo="xdg-open"
alias vi="nvim"
alias vim="nvim"
alias xc="xclip -selection clipboard"
alias vs="rm ~/.local/share/nvim/swap/*"
alias k="kubectl"

