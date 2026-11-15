export XDG_CONFIG_HOME="$HOME/.config"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git kubectl)

source "$ZSH/oh-my-zsh.sh"

# Enable tmux on terminal startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	tmux attach || tmux
fi

export EDITOR="vim"
export VISUAL="vim"
export SUDOEDIT="vim"

# Paths & toolchains
export GOPATH="$HOME/Projects/Go"
export GOBIN="$GOPATH/bin"
export PATH="$HOME/.local/bin:/usr/local/go/bin:$GOBIN:$PATH"

[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
	export PATH="$NVM_DIR/versions/node/$(cat "$NVM_DIR/alias/default" 2>/dev/null)/bin:$PATH" 2>/dev/null
	nvm() {
		unset -f nvm node npm npx
		\. "$NVM_DIR/nvm.sh"
		nvm "$@"
	}
fi

# Completions
(( $+commands[helm] )) && source <(helm completion zsh)
(( $+commands[fzf] )) && source <(fzf --zsh)

# Custom aliases
alias la="ls -A"
alias ll="ls -lAtrh"
alias xo="xdg-open"
alias vi="nvim"
alias xc="xclip -selection clipboard"
alias vs="rm ~/.local/share/nvim/swap/*"
alias k="kubectl"

