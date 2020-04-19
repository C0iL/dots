# Created by newuser for 5.7.1
export EDITOR=nano
autoload -U colors && colors
PS1="%B%{$fg[red]%}(凸ಠ益ಠ)凸%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M♌%{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
autoload -Uz compinit
zstyle ':completion:*' menu select
compinit

# Include hidden files in autocomplete:
_comp_options+=(globdots)

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
setopt	  histignoredups
setopt    histignorealldups
