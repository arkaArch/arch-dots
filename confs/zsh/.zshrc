# EXPORT
export TERM="xterm-256color"                      
export EDITOR="nvim"                      

# Enable colors
autoload -U colors && colors

# Prompt
RPROMPT="%F{red} %f%F{cyan} %f"
PROMPT="%F{red}[%f%F{green}%1~%f%F{red}]%f %F{cyan} %f "

# Automatically cd into typed directory
setopt autocd

# Disable ctrl-s to freeze terminal
stty stop undef
setopt interactive_comments

# Include hidden files.
_comp_options+=(globdots)




## ==================== HISTORY ==================== ##

# Search history with 'Ctrl+r' and then type 
# substring of what command you want to search 
# then again 'Ctrl+r' to search further
# Source this search in fzf
source <(fzf --zsh)

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/history
# Commands are added to the history immediately
setopt INC_APPEND_HISTORY
# Ignore duplicates during 'ctrl+r'
setopt HIST_FIND_NO_DUPS
# setopt HIST_IGNORE_ALL_DUPS

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit




## ==================== ALIASES ==================== ##

# Gnu aliases:
alias \
    ls="exa --icons --color=always --group-directories-first" \
    la="exa -alF --icons --color=auto --group-directories-first" \
    grep='grep --color=auto' \
    ..='cd ..' \
    ...='cd ../..' \
    rm="rm -i"

# Application aliases:
alias \
    t='tree -Ca' \
    v='nvim' \
    yz='yazi' \
    mp='ncmpcpp' \
    yta='yt-dlp --extract-audio --audio-format mp3' \
    ytv="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'" \
    td='transmission-daemon' \
    tra='transmission-remote -a' \
    syncall='rsync -av --delete --ignore-existing $HOME/{Movies,Music} /run/media/arka/ExternalHDD/'

# Pacman aliases:
alias \
    paci='sudo pacman -S' \
    pacr='sudo pacman -Rns' \
    pacu='sudo pacman -Syu' \
    pacs='pacman -Ss' \
    pacl='pacman -Q' \
    pacri='sudo paccache -rk1' \
    pacru='sudo paccache -ruk0'

# git aliases
alias \
    gs='git status' \
    ga='git add' \
    gcmt='git commit -m' \
    gpushom='git push origin main' \
    gpullom='git pull origin main'

# System aliases
alias \
    rbt='systemctl reboot' \
    sdn='systemctl poweroff'


## fzf aliases:
alias fzf='fzf --height=20 --border --border-label="╢ Search ╟" --color=label:italic:green'
fcd() { cd $(find -type d | fzf) }
fv() { nvim $(fzf --preview='cat {}') }



# Start zsh with
# neofetch
~/arch-dots/scripts/ufetch-arch.sh

## ==================== PLUGINS ==================== ##
# Load zsh plugins; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

