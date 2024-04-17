export XDG_CONFIG_HOME=~/.config
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

### Custom aliases 
alias la="ls -A"
alias ll="ls -ltrAh"
alias xo="xdg-open"
alias vi="nvim"; alias vim="nvim"
alias xc="xclip -selection clipboard"
alias vs="rm ~/.local/share/nvim/swap/*"
alias code="flatpak run com.visualstudio.code"
###

### Custom scritps
source ~/Projects/GitHub/audio-toolbox/audiotoolbox.sh
source ~/.dotfiles/bluetooth/bt.sh
###

### Golang
export GOPATH="$HOME/Projects/Go/"
###

### Enable tmux on terminal startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
tmux attach || tmux
fi
###

### Smol tweaks
export TERM="screen-256color"
export EDITOR="nvim"
export SUDOEDIT="nvim"
export PROMPT_COMMAND="history -a; history -n"
###

### NVM for Node and npm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
###

source $ZSH/oh-my-zsh.sh