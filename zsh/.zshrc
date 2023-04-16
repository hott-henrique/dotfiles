# Use powerline
USE_POWERLINE="true"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Aliases
alias ls="ls -l -h --color --group-directories-first"
alias la="ls -a"
alias tma="tmux attach"
alias tmd="tmux detach"

SESSION_NAME="TMUX"

setup_tmux () {
	tmux has-session -t $SESSION_NAME 2>/dev/null

	if [ $? != 0 ]; then
		# Use -d to allow the rest of the function to run
		tmux new-session -d -s $SESSION_NAME

		tmux new-window -d
	fi
}

if [ -z "$TMUX" ]; then
	setup_tmux
fi

neofetch

