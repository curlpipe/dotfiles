###################
#         _       #
# _______| |__    #
# |_  / __| '_ \  #
#  / /\__ \ | | | #
# /___|___/_| |_| #
#                 #
###################

### If not running interactively, don't do anything
    [[ $- != *i* ]] && return

### Aliases
    ## Quick config editing
        alias bashc="vim ~/.bashrc"
        alias vimc="vim ~/.vimrc"
        alias swayc="vim ~/.config/sway/config"
        alias rofic="vim ~/.config/rofi/config.rasi"
        alias alac="vim ~/.config/alacritty.yml"
        alias zshc="vim ~/.zshrc"

    ## Xbps aliases
        # Install packages `xin package1 package2`
        alias xin="sudo xbps-install"
        # Remove packages `xre package1 package2`
        alias xre="sudo xbps-remove"
        # Query installed packages `xqu -l`
        alias xqu="xbps-query"
        # Find available packages in repository `xfi package1`
        alias xfi="xbps-query -Rs"
        # Update system `xup`
        alias xup="sudo xbps-install -Su"

    ## Handy command tricks
        # Measure how long a command takes to execute
        alias howlong="/usr/bin/time -f %E"

    ## Shortened command aliases
        alias vi="vim-huge"
        alias vim="vim-huge"
        alias sud="/usr/bin/sudo"
        alias sudo="doas"
        alias tk="tokei -s code"
        alias ls="lsd"
        alias z="sudo zzz"

### Prompt configuration
    # Prompt format
    #PS1='\033[38;5;203m\u@\h \033[38;5;202m\w \033[38;5;172m⚡» \033[38;5;255m'
    setopt PROMPT_SUBST
    PROMPT='%F{203}%n@%m %F{202}${(%):-%~} %F{172}⚡» %F{white}'
    #PROMPT='%F{203}%n %F{202}${(%):-%~} %F{172}⚡» %F{white}'
    #PROMPT='%F{172}⚡» %F{white}'
    #PROMPT='%F{203}%F{202}${(%):-%~} %F{172}⚡» %F{white}'

### Add SSH and GPG keys
    eval "$(ssh-agent -s)" > /dev/null && ssh-add -q ~/.ssh/id_github
    export GPG_TTY=$(tty)

### Set up OMZ and Autocomplete
    export ZSH="$HOME/.oh-my-zsh"
    source $ZSH/oh-my-zsh.sh
    source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

### Extend path
    export PATH=~/.local/bin:$PATH
    export PATH_TO_FX=~/dev/java/jfx/javafx-sdk-17/lib

## Rust
    source "$HOME/.cargo/env"
    # Rust testing framework
    alias tarp="cargo tarpaulin -o Html --ignore-tests --skip-clean --exclude-files example/ target/"

### Generated for envman. Do not edit.
    [ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
