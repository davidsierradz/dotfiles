#th to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable ssh vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs background_jobs)
#POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M:%S \uf073 %d.%m.%y}"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_VCS_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=15
POWERLEVEL9K_VCS_SHORTEN_LENGTH=15
POWERLEVEL9K_MODE='nerdfont-fontconfig'
POWERLEVEL9K_VI_INSERT_MODE_STRING=""
#POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='007'
#POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='001'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='007'
POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='002'
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
#POWERLEVEL9K_TIME_BACKGROUND="blue"
#POWERLEVEL9K_TIME_FOREGROUND="white"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases docker docker-compose git vi-mode yarn zsh-autopair zsh-autosuggestions zsh-completions zsh-system-clipboard zsh-syntax-highlighting)

# User configuration
DEFAULT_USER=neuromante

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

### CUSTOM

# custom aliases
#long list
alias ll='ls -lAFh --group-directories-first'
# long list by date
alias llt='ls -lAFht --group-directories-first'
#Clear
alias c='clear'
# Python JSON prettier
alias -g J='| python -m json.tool'

# Send command to clipboard paste.
alias -g X='| xsel -bi'

# Fuzzy find all files to send to git add.
gafzf() {
    git add $(git status -s | awk '{$1=""; print $0}' | fzf --height 30% --reverse --multi "$@")
}

dpsfzf() {
    docker ps --all | fzf --height 30% --reverse --multi | awk '{$2=""; print $1}'
}

# want your terminal to support 256 color schemes? I do ...
#export TERM=xterm-256color
export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
export USE_EDITOR=$EDITOR
export LC_COLLATE="C"

# dircolors
eval "$(dircolors /home/neuromante/dotfiles/dir_colors/dircolors.256dark)"

# Use backwards search in vi-mode.
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Ctrl-S to insert sudo in front of command in normal mode.
function prepend-sudo { # Insert "sudo " at the beginning of the line
    if [[ $BUFFER != "sudo "* ]]; then
        BUFFER="sudo $BUFFER"; CURSOR+=5
        zle -K viins
        xdotool key ctrl+e
    fi
}
zle -N prepend-sudo
bindkey -M vicmd '^s' prepend-sudo

# Ctrl-S to insert sudo in front of command in insert mode.
sudo_ (){
    BUFFER="sudo $BUFFER"
    CURSOR=$#BUFFER
}
zle -N sudo_
bindkey "^s" sudo_


# More bindkeys for insert vi-mode.
bindkey -M viins '^P' up-history
bindkey -M viins '^N' down-history
bindkey -M viins "^[[3~" delete-char
bindkey -M viins "^k" kill-line
bindkey -M viins "^b" backward-char
bindkey -M viins "^f" forward-char
bindkey -M viins "^u" kill-whole-line

# More responsive toggle from normal to insert mode in vi-mode.
export KEYTIMEOUT=5

# Reload completions.
autoload -U compinit && compinit

# enable completition for hidden files.
_comp_options+=(globdots)

# zsh autosugestions plugin settings

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=1'
ZSH_AUTOSUGGEST_STRATEGY=match_prev_cmd

# Remove forward-char widgets from ACCEPT
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#forward-char}")
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#vi-forward-char}")

# Add forward-char widgets to PARTIAL_ACCEPT
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(forward-char)
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+=(vi-forward-char)

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Press <C-Space> to autocomplete and execute command.
bindkey '^ ' autosuggest-execute

# Press <M-q> to autocomplete the next WORD.
bindkey '^[q' vi-forward-blank-word

# Press <C-q> to autocomplete the next word.
bindkey '^q' forward-word
#bindkey '^[q' vi-forward-word

function _backward-kill-capital-word {
    local WORDCHARS="*?_-.:[]~=&;!#$%^(){}<>\\/"
    zle backward-kill-word
}

zle -N _backward-kill-capital-word

# Press <M-w> to delete the current WORD.
bindkey '^[w' _backward-kill-capital-word

# Press <C-w> to delete the current word.
bindkey '^w' backward-kill-word

# Press <M-t> to switch current char with last one.
bindkey '^[t' transpose-chars

# go - cd into the directory of the selected file
go() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

# fa - including hidden directories
fa() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# Use C-y to open history and run the command.
fzf-history-widget-accept() {
  fzf-history-widget
  zle accept-line
}

zle     -N   fzf-history-widget-accept
bindkey '^y' fzf-history-widget-accept

# ALT-D - Paste the selected directory path into the command line
__fseldir() {
    local cmd="command find -L . -mindepth 1 \\( -path '*/\\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
        -o -type d -print 2> /dev/null | cut -b3-"
    setopt localoptions pipefail 2> /dev/null
    eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_ALT_C_OPTS" $(__fzfcmd) -m "$@" | while read item; do
    echo -n "${(q)item} "
    done
    local ret=$?
    echo
}

fzf-dirr-widget() {
    LBUFFER="${LBUFFER}$(__fseldir)"
    local ret=$?
    zle reset-prompt
    return $ret
}

zle     -N   fzf-dirr-widget
bindkey '\ed' fzf-dirr-widget

[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# Vim Surround see: https://github.com/zsh-users/zsh/blob/master/Functions/Zle/surround
autoload -Uz surround
zle -N delete-surround surround
zle -N add-surround surround
zle -N change-surround surround
bindkey -a cs change-surround
bindkey -a ds delete-surround
bindkey -a ys add-surround
bindkey -M visual S add-surround

autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m $c select-quoted
    done
done

autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
   for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
       bindkey -M $m $c select-bracketed
   done
done

bindkey -M vicmd ' ' edit-command-line
bindkey -M vicmd 'v' visual-mode
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# Better searching in command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

# Change cursor shape for different vi modes.
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'

    elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
    fi

    zle reset-prompt
    zle -R
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
    echo -ne '\e[5 q'
}

gh() {
    myVar=$(</dev/stdin)

    echo -e $myVar | fzf --height 80% "$@" --border --ansi --no-sort --reverse --multi --bind 'ctrl-s:toggle-sort' \
        --header 'Press CTRL-S to toggle sort' \
        --preview 'grep -o "[a-f0-9]\{7,\}" <<< {} | xargs git show --color=always | head -'$LINES |
        grep -o "[a-f0-9]\{7,\}"

}

alias -g GHFZF='| gh'

alias -g lastbranch='$(cat .git/lastbranch)'
