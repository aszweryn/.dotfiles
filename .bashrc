# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

### Custom aliases 
alias la="ls -A"
alias ll="ls -ltrAh"
alias ref="source ~/.dotfiles/.bashrc"
alias xo="xdg-open"
alias vi="nvim"; alias vim="nvim"
alias xc="xclip -selection clipboard"
alias vs="rm ~/.local/share/nvim/swap/*"
alias pycharm="~/.local/share/Pycharm/pycharm-edu-2022.2/bin/pycharm.sh &"
alias obsidian="~/.local/share/Obsidian/Obsidian-0.15.9.AppImage &"
alias octave="flatpak run org.octave.Octave"
alias rars="java -jar ~/Downloads/rars_27a7c1f.jar &"
alias code="flatpak run com.visualstudio.code"
###

### Custom scritps
source ~/Projects/GitHub/audio-toolbox/audiotoolbox.sh
source ~/.dotfiles/bluetooth/bt.sh
###

### Golang
export GOPATH="$HOME/Projects/Go/"
###

### Kubernetes autocompletion
source <(kubectl completion bash)
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

### Oh-my-posh prompt
eval "$(oh-my-posh init bash --config ~/.poshthemes/robbyrussel.omp.json)"
###
