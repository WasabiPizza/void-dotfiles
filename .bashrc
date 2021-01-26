# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1="\W > \[$(tput sgr0)\]"

shopt -s autocd

alias \
        ls='ls -hN --color=auto --group-directories-first' \
	cp='cp -iv' \
	mv='mv -iv' \
	rm='rm -vI' \
	mkdir='mkdir -pv' 

alias \
	vpi='sudo xbps-install' \
	vpr='sudo xbps-remove -R' \
	vpu='sudo xbps-install -Su' \
	vpq='xbps-query -Rs' \
	vpc='sudo xbps-remove -Oo' \
	vpk='sudo vkpurge rm all'

alias q='exit'
alias btrfs-snap='sudo btrfs subvolume snapshot -r /home /.snapshots/void.$( date +%Y.%m.%d )'
alias vim='TERM=xterm-256color vim'
alias n='nnn -xeC'
alias bashrc='vim ~/.bashrc && source ~/.bashrc'
alias mini='TERM=xterm-256color ssh mini'
alias seedbox='TERM=xterm-256color ssh seedbox'

export PATH=$PATH:$HOME/.local/bin
export SVDIR=$HOME/.local/sv
export XBPS_DISTDIR=/home/nero/git/void-packages/
export SSH_AUTH_SOCK=$HOME/.ssh/agent

export EDITOR='vim'
export VISUAL='vim'
export TERMINAL='alacritty'
export BROWSER='chromium'
export READER='chromium'
export FILE='nnn'

export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORM=wayland
#export TDESKTOP_I_KNOW_ABOUT_GTK_INCOMPATIBILITY=ok

export NNN_TRASH=1
export NNN_RCLONE=''
export NNN_BMS='m:/home/nero/stuff/Music/;t:/home/nero/stuff/Torrents/'

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
