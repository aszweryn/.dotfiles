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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

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
alias rars="sudo java -jar ~/Downloads/rars_27a7c1f.jar &"
###

### Custom scritps
source ~/Projects/GitHub/audio-toolbox/audiotoolbox.sh
source ~/.dotfiles/bluetooth/bt.sh
###

### Golang
export GOPATH="$HOME/Projects/Go/*"
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
