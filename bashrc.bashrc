#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases Start

# Color Aliases
alias ls='ls -a --color=auto --group-directories-first'
alias ll='ls -al --color=auto --group-directories-first'
alias grep='grep --color=auto'

# Config Aliases
alias hidpirc='sudo vim /etc/sddm.conf.d/hidpi.conf'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'

# Hyprland Aliases
alias hyprlandrc='vim ~/.config/hypr/hyprland.conf'
alias hyprpaperrc='vim ~/.config/hypr/hyprpaper.conf'
alias hyprlockrc='vim ~/.config/hypr/hyprlock.conf'
alias waybarrc='vim ~/.config/waybar/config.jsonc'
alias waybarcss='vim ~/.config/waybar/style.css'
# Fetch Aliases
alias pfetch='clear && pfetch'
alias neofetch='clear && neofetch'
alias catnaprc='vim ~/.config/catnap/config.toml'
alias catnap='clear && catnap'

# Message Aliases
alias trash-help='echo "trash-cli help / trash-help: trash-put, trash-empty, trash-list, trash-restore, trash-rm"'

# Scripts
alias bs_start='clear && ~/.scripts/bash_start.sh'
alias bs_edit='vim ~/.scripts/bash_start.sh'

# Shortcut Aliases
alias v='vim'
alias ~='cd ~'
alias s='cd ~/.local/bin/ && ls -a --color=auto --group-directories-first'
alias c='clear'
alias git-folder='cd ~/Downloads/git && ls -a --color=auto --group-directories-first'
alias CFG='cd ~/.config'

# System Function Aliases
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# Aliases End

# Autoruns
set -o vi
~/.scripts/bash_start.sh

# Legacy Prompt
#PS1='[\u@\h \W]\$ '

# Starship Prompt
eval "$(starship init bash)"

#
# ~/.bashrc
#
