#th to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh

ZSH_THEME="simple"

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

# Docker alias
alias d='docker'

# Neovim alias
alias vw='nvim -u ~/dotfiles/neovim/wiki-init.vim -c VimwikiIndex'
alias v='nvim'

# bat, a cat replacement.
alias b='bat'
alias -g B='| /usr/bin/bat --style="plain"'

# Yarn alias
alias yl='yarn lint'

# Fuzzy find all files to send to git add.
gafzf() {
    git add $(git status --untracked-files=all --porcelain=v1 | grep --perl-regexp "^ M|MM| D|\?{2}" | awk '{$1=""; print $0}' | fzf --height 90% --reverse --multi "$@")
}

# Using xargs to pass arguments to git patch for some reason is
# interpreting \n as n inside the interactive patch section, why?
# For now add another command:
gapafzf() {
    git add --patch $(git status -s | awk '{$1=""; print $0}' | fzf --height 50% --reverse --multi "$@")
}

dpsfzf() {
    docker ps --all | fzf --height 50% --reverse --multi | awk '{$2=""; print $1}'
}

export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"
export USE_EDITOR=$EDITOR
export LC_COLLATE="C"

# dircolors
#eval "$(dircolors /home/neuromante/dotfiles/dir_colors/dircolors.256dark)"

# Use backwards search in vi-mode (arrows?).
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

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
bindkey -M viins '^P' up-line-or-beginning-search
bindkey -M viins '^N' down-line-or-beginning-search
bindkey -M viins "^[[3~" delete-char
bindkey -M viins "^k" kill-line
bindkey -M viins "^b" backward-char
bindkey -M viins "^f" forward-char
bindkey -M viins "^u" kill-whole-line

# More responsive toggle from normal to insert mode in vi-mode.
# We need a value not so low, to give surround commands time to fire.
export KEYTIMEOUT=40

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

# Press <C-q> to autocomplete the next WORD.
function _emacs-forward-capital-word {
    local WORDCHARS="*?_-.:[]~=&;!#$%^(){}<>\\/\"'|@"
    zle emacs-forward-word
}
zle -N _emacs-forward-capital-word
bindkey '^q' _emacs-forward-capital-word

# Press <M-q> to autocomplete the next word.
bindkey '^[q' forward-word

# Press <C-w> to delete the current WORD.
function _backward-kill-capital-word {
    local WORDCHARS="*?_-.:[]~=&;!#$%^(){}<>\\/\"'|@"
    zle backward-kill-word
}
zle -N _backward-kill-capital-word
bindkey '^w' _backward-kill-capital-word

# Press <M-w> to delete the current word.
bindkey '^[w' backward-kill-word

# Press <M-s> to switch current char with last one.
bindkey '^[s' transpose-chars

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

# Shift-Tab to go back in menus.
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Ctr-P and Ctrl-N to move in complete menus.
bindkey -M menuselect '^P' up-line-or-history
bindkey -M menuselect '^N' down-line-or-history

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

# Use like this: git log -- file GHFZF file
gh() {
    myVar=$(</dev/stdin)
    originalFile=$1

    echo -e $myVar | fzf --ansi --no-sort --reverse --multi --bind 'ctrl-s:toggle-sort' \
        --header 'Press CTRL-S to toggle sort' \
        --preview "grep -o \"[a-f0-9]\{7,\}\" <<< {} | xargs -I % sh -c \"git show % --color=always -- $originalFile\" | head -"$LINES |
        grep -o "[a-f0-9]\{7,\}"

}

alias -g GHFZF='| gh'

alias -g lastbranch='$(cat .git/lastbranch)'

# Terminal color scheme
function terminal-scheme() {
  alacritty_config_file=~/dotfiles/alacritty/alacritty.yml
  sed -i "s/\(^colors: \*\).*/\1$1/g" $alacritty_config_file
  nvim_config_file=~/dotfiles/neovim/init-mini.vim
  sed -i "s/\(^set background=\).*/\1$1/g" $nvim_config_file
  wiki_config_file=~/dotfiles/neovim/wiki-init.vim
  sed -i "s/\(^set background=\).*/\1$1/g" $wiki_config_file
  vim_config_file=~/dotfiles/vim/.vimrc-mini
  sed -i "s/\(^source \/home\/neuromante\/dotfiles\/vim\/flattened_\).*/\1$1.vim/g" $vim_config_file
  bat_config_file=~/dotfiles/bat/config
  if [[ $1 == 'light' ]]; then
    echo '--theme="OneHalfLight"' > $bat_config_file
  else
    echo '--theme="OneHalfDark"' > $bat_config_file
  fi
  kitty_config_file=~/dotfiles/kitty/kitty.conf
  sed -i "s#^\(include\s\./kitty-themes/gruvbox_*\).*#\1$1.conf#g" $kitty_config_file
  kitty @ set-colors ~/dotfiles/kitty/kitty-themes/gruvbox_$1.conf
}

function ol() {
  ag -il --nocolor --nogroup --path-to-ignore ~/.agignore --skip-vcs-ignores --hidden -g "" \
    | fzf --bind "::execute(awk '{print \"+\"NR\" \"FILENAME}' {} | fzf)+abort" \
    | xargs bash -c '</dev/tty nvim "$@"' ignoreme
}

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin


[ -f /usr/share/stderred/stderred.sh ] && source /usr/share/stderred/stderred.sh
