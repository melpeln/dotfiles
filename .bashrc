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

. ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\e[0;33m\A\e[0m  \u  \e[0;36m\h\e[0m\n\w$(__git_ps1 " (%s)")|> '

unset rc
export GOPATH=$HOME/go
. "$HOME/.cargo/env"
