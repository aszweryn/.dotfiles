export XDG_CONFIG_HOME=~/.config
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	git
	kubectl
)

### Source zsh config
source $ZSH/oh-my-zsh.sh

### Enable tmux on terminal startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
tmux attach || tmux
fi

### Smol tweaks
export EDITOR="nvim"
export SUDOEDIT="nvim"
export PROMPT_COMMAND="history -a; history -n"

### Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/Projects/Go"
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

### Rust
. "$HOME/.cargo/env"
export PATH="$PATH:$HOME/.cargo/bin"


### NVM for Node and npm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Completions
source <(helm completion zsh)
source <(fzf --zsh)

### Custom aliases 
alias la="ls -A"
alias ll="ls -lAtrh"
alias xo="xdg-open"
alias vi="nvim"; alias vim="nvim"
alias xc="xclip -selection clipboard"
alias vs="rm ~/.local/share/nvim/swap/*"
alias k="kubectl"
